const express = require('express');
const pool = require('../pool');
var router = express.Router();

//用户注册
router.post('/register',(req,res)=>{
    var phone = req.body.phone;
    var uname = req.body.uname;
    var upwd = req.body.upwd;
    console.log(phone,uname,upwd)
    if(!phone) return res.send({code: -1, msg: "手机号不能为空"})
    if(!uname) return res.send({code: -1, msg: "用户名不能为空"})
    if(!upwd) return res.send({code: -1, msg: "请设置密码"})
    var sql = "INSERT INTO users VALUES(null,?,?,?,?,'//s1.mi.com/m/images/m/default.png')"
    pool.query(sql,[phone,uname,upwd,phone],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows > 0)
        res.send({code: 1, msg: "注册成功"})
    })
})
// 用户登录
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
// 用户添加商品
router.post('/add',(req,res)=>{
    var uid = req.body.uid;
    var pid = req.body.pid;
    var title = req.body.title;
    var price = req.body.price;
    var img = req.body.img;
    // console.log(uid,pid,title,price,img)
    if(!uid || !pid || !title || !price || !img) return res.send({code: -1, msg: "没有该商品"});
    var sql = "INSERT INTO user_product VALUES(null,?,?,?,?,?,1,1)";
    pool.query(sql,[uid,pid,title,price,img],(err,result)=>{
        if(err) throw err;
        // console.log(result)
        if (result.affectedRows>0)
            res.send({ code: 1, msg: "添加成功"})
    })
})
// 查找用户购物车
router.get('/find',(req,res)=>{
    var uid = req.query.uid
    if(!uid) return res.send({code: -1, msg: "未登录"})
    var sql = "SELECT * FROM user_product WHERE uid=? ";
    pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
// 删除用户购物车商品
router.get('/del',(req,res)=>{
    var id = req.query.id;
    if(!id) return res.send({code: -1, msg: "没有商品"});
    var sql = "DELETE FROM user_product WHERE id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err ;
        if(result.affectedRows > 0)
        res.send({code: 1, msg: "删除成功"})
    })
})
// 改变用户购物车商品数量
router.get('/sum',(req,res)=>{
    var single = req.query.single;
    var id = req.query.id;
    if(!id) return res.send({code: -1, msg: "商品无"});
    var sql = "UPDATE user_product SET single=? WHERE id=?";
    pool.query(sql,[single,id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows > 0)
            res.send({code: 1, msg: '修改成功'})
    })
})
// 改变商品购买状态
router.get('/buy',(req,res)=>{
    var isbuy = req.query.isbuy;
    var id = req.query.id;
    var sql = "UPDATE user_product SET isbuy=? WHERE id=?";
    pool.query(sql,[isbuy,id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows > 0)
        res.send({code: 1, msg: "修改成功"})
    })
})
module.exports = router;