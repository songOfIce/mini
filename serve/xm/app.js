const express = require("express"); 
const bodyParser = require("body-parser"); //字符串解析模块
const cors = require("cors"); //引入跨域模块
// 上传文件模块
const multer = require('multer');
var upload = multer({dest: "upload/"});

var app = express();
// 跨域访问
app.use(cors({ origin: "*", credentials: true }));
// 监听端口
var port = 5050;
app.listen(5050,()=>{console.log("success: "+ port)});
// wechat 配置



// 引入路由
const home = require("./routes/home.js");
const fenlei = require('./routes/fenlei.js');
const detail = require('./routes/detail.js');
const user = require('./routes/user.js');
app.use(express.static(__dirname+"/public"));
app.use(bodyParser.urlencoded({extended: false}));

// 挂载路由
app.use("/home",home);
app.use("/fenlei", fenlei);
app.use('/detail',detail);
app.use('/user',user);
// 处理上传文件
// 单个上传
app.post('/upload',upload.single('mypic'),(req,res)=>{
	var f = req.file;
    console.log(f);
    // 如果文件大小超过3MB 不允许
    var size = f.size/1000/1000;
    if(size>2){
    	res.send({code: -1,msg: "文件超过2MB"});
    	return;
    }
    var src = f.originalname;
    var img = src.slice(-src.lastIndexOf("."));
    // 创建新文件名
    var newFileName = "./public/upload/"+new Date().getTime();
    newFileName += Math.floor(Math.random()*9999)+img;
    console.log(newFileName);
    //	将临时文件移动到upload目录
    fs.renameSync(f.path,newFileName);
    res.send({code: 1,msg: "上传成功"});

})
// 多个文件
// app.post('/upload',upload.array('mypic'),(req,res)=>{
//     console.log(456)
// })
// 查看文件信息,为 req添加属性 file
// file.originalname   上传文件名
// file.mimetype       上传文件类型
// file.size           上传文件大小
// file.filename       上传临时文件名
// file.path           上传临时文件路径