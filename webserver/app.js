const express = require("express"); 
const bodyParser = require("body-parser"); //字符串解析模块
const cors = require('cors')
var app = express();
// 监听端口
var port = 5050;
app.listen(port,()=>{console.log("success: "+ port)});
app.use(cors({ origin: "*", credentials: true }));

// 引入路由
const home = require("./routes/home.js");
const fenlei = require('./routes/fenlei.js');
const user = require('./routes/user.js');
app.use(express.static(__dirname+"/public"));
app.use(bodyParser.urlencoded({extended: false}));

// 挂载路由
app.use("/home",home);
app.use("/fenlei", fenlei);
app.use('/user',user);