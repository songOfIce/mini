const express = require('express');
const pool = require('../pool');
var router = express.Router();

router.post('/login',(req,res)=>{
    var uid = req.body.uid;
    var upwd = req.body.upwd;
    console.log(uid,upwd);
    if(!uid) return res.send({code: -1, msg: "没有用户名"});
    if(!upwd) return res.send({code: -1, msg: "密码不能为空"});
    var sql = "SELECT uid,uname FROM users WHERE uid=? AND upwd=? ";
    pool.query(sql,[uid,upwd],(err,result)=>{
        if(err) throw err;
        if(!result.length) res.send({code: -1, msg: "用户或密码错误"}); 
        else res.send({code: 1, msg: result});
    })
})

module.exports = router;