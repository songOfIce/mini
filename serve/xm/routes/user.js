const express = require('express');
const pool = require('../pool');
var router = express.Router();

// 登录
router.post('/login',(req,res)=>{
    var uid = req.body.uid;
    var upwd = req.body.upwd;
    if(!uid) return res.send({code: -1, msg: "没有用户名"});
    if(!upwd) return res.send({code: -1, msg: "密码不能为空"});
    var sql = "SELECT uid,uname FROM users WHERE uid=? AND upwd=? ";
    pool.query(sql,[uid,upwd],(err,result)=>{
        if(err) throw err;
        if(!result.length) res.send({code: -1, msg: "用户或密码错误"}); 
        else res.send({code: 1, msg: result});
    })
})
// 添加商品
router.post('/add',(req,res)=>{
    var uid = req.body.uid;
    var pid = req.body.pid;
    var title = req.body.title;
    var price = req.body.price;
    var img = req.body.img;
    console.log(uid,pid,title,price,img)
    if(!uid || !pid || !title || !price || !img) return res.send({code: -1, msg: "没有该商品"});
    var sql = "INSERT INTO user_product VALUES(null,?,?,?,?,?,1)";
    pool.query(sql,[uid,pid,title,price,img],(err,result)=>{
        if(err) throw err;
        console.log(result)
        if (result.affectedRows>0)
            res.send({ code: 1, msg: "添加成功"})
    })
})
// 查找购物车的商品
router.get('/find',(req,res)=>{
    var uid = req.query.uid;
    if(!uid) return res.send({code: -1, msg: "未登录"})
    var sql = "SELECT * FROM user_product WHERE uid=? ";
    pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
      
        res.send(result);
    })
})
// 删除购物车商品
router.get('/del',(req,res)=>{
    var id = req.query.id;
    if(!id) return res.send('wu');
    var sql = "DELETE FROM user_product WHERE id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        if (result.affectedRows > 0)
        res.send({code: 1, msg: "删除成功"});
    })
})
module.exports = router;