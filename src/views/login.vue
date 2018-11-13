<template>
    <div class="register">
        <div class="register-img"><img src="/img/register.png" alt=""></div>
        <div style="font-size: 1.3rem;">小米账号登录</div>
        <div>
            <div class="register-phone">
                <input class="input" type="text" placeholder="手机号码/小米ID" v-model="uid">
            </div>
            <div class="register-phone">
                <input class="input" :type="type.t" placeholder="密码" v-model="upwd">
                <div class="eye" @click="show($event)">
                    <svg width="100%" height="100%" version="1.1" xmlns="http://www.w3.org/2000/svg">
                        <path class="eye_outer" d="M0 8 C6 0,14 0,20 8, 14 16,6 16, 0 8 z"></path>
                        <circle class="eye_inner" cx="10" cy="8" r="3"></circle>
                    </svg>
                </div>
            </div>
            <div class="register-code">
                <input class="input code-input" type="text" placeholder="验证码" v-model="verification">
                <canvas @click="change()" class="can" v-show="getcode.show" width="100" height="30"></canvas>
                <span class="getcode" v-show="!getcode.show" @click="show2()">获取验证码</span>
            </div>
        </div>
        <!-- 提示区域 start -->
        <div class="register-msg" v-if="msg">
            <em class="msg-icon"></em>
            <span>{{msg}}</span>
        </div>
        <!-- end -->
        <div class="register-login" @click="login()">立即登录</div>
        <div class="register-login user-login"><router-link to="/register">没账号去注册</router-link></div>
        <div @click="info()"><img src="/img/login.png" alt=""></div>
        
    </div>
</template>

<script>
import { Toast } from 'mint-ui';
export default {
  name: "Login",
  data() {
    return {
      getcode: { show: false, content: "" },
      type: {t: "password",isShow: false},
      uid: "",
      upwd: "",
      verification: "",
      msg: ""
    };
  },
  methods: {
      info() {
          Toast({
            message: '暂不支持',
            position: 'bottom',
            duration: 2000
            });
      },
      change() {
          this.ctx1();
      },
    //   获取验证码
    show2(){
        this.getcode.show = true;
        this.ctx1();
    },
    //   登录
    login() {
        var reg = /^1[34578]\d{9}$/;
        if(!this.uid) return this.msg = "请输入账号";
        if(!reg.test(this.uid)) return this.msg = "用户名不正确";
        if(!this.upwd) return this.msg = "请输入密码";
        if(this.verification.toLocaleLowerCase() != this.getcode.content || this.verification == "") return this.msg = "验证码不正确";
        // console.log(this.uid,this.upwd)
        this.$http.post("/user/login",`uid=${this.uid}&upwd=${this.upwd}`).then(res =>{
                if(res.data.code == -1) this.msg = res.data.msg
                else {
                    sessionStorage["uid"] = res.data.msg[0].uid;
                    sessionStorage['uname'] = res.data.msg[0].uname;
                    sessionStorage['img'] = res.data.msg[0].img
                    Toast({message: '登录成功', duration: 1000})
                    setTimeout(()=>{ this.$router.push('/home/commend')},1000)
                }
        });
    },
    //   切换密码模式
        show(e) {
            if(this.type.isShow){
                e.currentTarget.classList.remove("chk");
                this.type = {t: "password", isShow: false}
            }
            else{ 
                e.currentTarget.classList.add("chk");
                this.type = {t: "text", isShow: true}
            }
        },
    //   验证
        //1.新建一个函数产生随机数
        rn(min, max) {
                return parseInt(Math.random() * (max - min) + min);
            },
            //2.新建一个函数产生随机颜色
            rc(min, max) {
            var r = this.rn(min, max);
            var g = this.rn(min, max);
            var b = this.rn(min, max);
            return `rgb(${r},${g},${b})`;
            },
            ctx1() {
            // 填充背景颜色，背景颜色要浅一点
            var c1 = document.querySelector(".can");
            var w = 100;
            var h = 30;
            var ctx = c1.getContext("2d");
            ctx.fillStyle = this.rc(180, 230);
            ctx.fillRect(0, 0, w, h);
            //4.随机产生字符串
            var pool = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
            this.getcode.content = "";
            for (var i = 0; i < 4; i++) {
                var c = pool[this.rn(0, pool.length)]; //随机的字
                this.getcode.content += c;
                var fs = this.rn(25, 35); //字体的大小
                var deg = this.rn(-30, 30); //字体的旋转角度
                ctx.font = fs + "px Simhei";
                ctx.textBaseline = "top";
                ctx.fillStyle = this.rc(80, 150);
                ctx.save();
                ctx.translate(25 * i + 15, 15);
                ctx.rotate((deg * Math.PI) / 180);
                ctx.fillText(c, -15+5, -15);
                ctx.restore();
            }
            //5.随机产生5条干扰线,干扰线的颜色要浅一点
            for (var i = 0; i < 5; i++) {
                ctx.beginPath();
                ctx.moveTo(this.rn(0, w), this.rn(0, h));
                ctx.lineTo(this.rn(0, w), this.rn(0, h));
                ctx.strokeStyle = this.rc(180, 230);
                ctx.closePath();
                ctx.stroke();
            }
            //6.随机产生40个干扰的小点
            for (var i = 0; i < 40; i++) {
                ctx.beginPath();
                ctx.arc(this.rn(0, w), this.rn(0, h), 1, 0, 2 * Math.PI);
                ctx.closePath();
                ctx.fillStyle = this.rc(150, 200);
                ctx.fill();
            }
            this.getcode.content = this.getcode.content.toLocaleLowerCase()
            }
    },
  created() {},
  watch: {
      uid(){
        this.msg = "";
      },
      upwd() {
        this.msg = "";
      },
      verification(){
        this.msg = "";
        if(this.verification == "") this.ctx1();
      }
  }
};
</script>

<style scoped>
.register {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 0 1.5rem;
}
.register-img img {
  width: auto;
  height: 3rem;
  margin-top: 2rem;
  margin-bottom: 1rem;
}
.register-phone {
  width: 18rem;
  color: #9b9b9b;
  font-size: 1.2rem;
  border-bottom: 1px solid #d3d3d3;
  padding-bottom: 1rem;
  padding-top: 1rem;
  padding-left: 0.7rem;
  position: relative;
}
.register-code {
  width: 18rem;
  height: 3rem;
  padding-left: 0.7rem;
  border-bottom: 1px solid #d3d3d3;
  position: relative;
}
.input {
  border: none;
  outline: none;
  font-size: 1.2rem;
  color: #4a4a5b;
}
/* 提示 */
.register-msg{
    text-align: left;
    color: #FF6666;
    padding-top: .3rem;
    font-size: .8rem;
}
.msg-icon{
    width: 18px;
    height: 18px;
    margin: 0 5px 0 0;
    overflow: hidden;
    display: inline-block;
    vertical-align: middle;
    background-color: #ff6700;
    border-radius: 50%;
}
.msg-icon::before,
.msg-icon::after{
    content: "";
    display: block;
    margin: 0 auto;
    width: 2px;
    background-color: #fff;
}
.msg-icon:before {
    height: 7px;
    margin-top: 2px;
}
.msg-icon:after {
    height: 3px;
    margin-top: 2px;
}
/* 提示end */
.icon {
  display: inline-block;
  width: 0.7rem;
  height: 0.7rem;
  border-top: 1px solid #9b9b9b;
  border-right: 1px solid #9b9b9b;
  margin-left: 0.5rem;
  margin-right: 1rem;
  transform: rotate(45deg);
}
.register-login {
  width: 18rem;
  text-align: center;
  padding: 0.7rem 0;
  font-size: 1.2rem;
  background: #f56d03;
  color: white;
  margin-top: 1rem;
  border-radius: 0.4rem;
}
.register-login:active{
    opacity: .8;
}
.user-login {
  background: #fff;
  color: #000;
  border: 1px solid #d3d3d3;
}
/* canvas 绘图 */
.getcode {
  display: inline-block;
  width: 100px;
  height: 30px;
  line-height: 30px;
  color: #2ea5e5;
  text-align: center;
}
.can,
.getcode {
  position: absolute;
  right: 1rem;
  top: 0.5rem;
  /* border: 1px solid red; */
}
.code-input {
  position: absolute;
  top: 0.9rem;
  font-size: 1rem;
  width: 8rem;
}
/* 小眼睛 */
.eye{
    position: absolute;
    right: 0;
    top: 1rem;
    width: 20px;
    height: 16px;
}
.eye_inner {
    fill: #4d4d4d;
    stroke: #fff;
    stroke-width: 2;
    stroke-opacity: .8;
}
.eye.chk .eye_outer, .eye.chk .eye_inner {
    fill: #ff6700;
}
</style>
