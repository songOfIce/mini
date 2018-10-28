const express = require("express");
const pool = require("../pool");
const router = express.Router();

router.get('/',(req,res)=>{
    var pid = req.query.pid;
    var obj = {};
    var progress = 0;
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