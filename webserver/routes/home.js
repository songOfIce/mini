const express = require("express");
const pool = require("../pool");
const router = express.Router();

// banner 数据
router.get('/banner',(req,res)=>{
    var name = req.query.name;
    var obj = {};
    var progress = 0;
    var sql = "SELECT * FROM banner WHERE name=? ";
    pool.query(sql,[name],(err,result)=>{
        if(err)throw err;
        progress += 50;
        obj.banner = result;
        if(progress == 100) res.send(obj)
    })
    var sql = "SELECT * FROM home_list WHERE name=? ";
    pool.query(sql,[name],(err,result)=>{
        if(err) throw err;
        progress += 50;
        obj.list = result;
        if (progress == 100) res.send(obj)
    })
})
// search 
router.get('/search',(req,res)=>{
    var key = req.query.key;
    if(!key) res.send()
    var sql = "SELECT * FROM product WHERE concat(title,subtitle,option) LIKE '%";
    sql += key + "%'";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })

})
router.get('/detail',(req,res)=>{
    var pid = req.query.pid;
    var obj = {};
    var progress = 0;
    pid = parseInt(pid)
    console.log(typeof pid)
    if(!pid) return res.send({code: -1, msg: "改商品不存在"})
    var sql = "SELECT * FROM products_img WHERE pid=?";
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        obj.img = result;
        progress += 50;
        if(progress == 150) 
            res.send(obj)
    });
    var sql = "SELECT * FROM product WHERE pid=?"
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        obj.info = result;
        progress += 50;
        if(progress == 150) res.send(obj);
    })
    if(pid < 117) pid = 1;
    else if(300< pid && pid < 400) pid = 301;
    else if(pid > 400 && pid < 407)pid = 401;
    else pid = 1000;
    var sql = "SELECT * FROM products_icon WHERE pid=?";
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        obj.icon = result;
        progress += 50;
        if(progress == 150) res.send(obj);
    })
})
module.exports = router;