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
module.exports = router;