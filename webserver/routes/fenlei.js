const express = require("express");
const pool = require("../pool");
const router = express.Router();

router.get('/',(req,res)=>{
    var progress = 0;
    var obj = {};
    var sql = "SELECT img,title FROM class_nav";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.box = result;
        progress += 50;
        if(progress == 100) res.send(obj);
    })
    var sql = "SELECT * FROM class_detail"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.page = result;
        progress += 50;
        if (progress == 100) res.send(obj);
    })
})

module.exports = router;