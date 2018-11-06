<template>
    <div class="register">
        <div class="register-img"><img src="/img/register.png" alt=""></div>
        <div style="font-size: 1.3rem;">小米账号注册</div>
        <div>
            <div class="register-phone">
                <input @blur="verification()" class="input" type="text" v-model="phone" placeholder="手机号">
            </div>
            <div class="register-phone">
                <input class="input" type="text" v-model="uname" placeholder="昵称">
            </div>
            <div class="register-phone">
                <input class="input" type="password" v-model="upwd" placeholder="密码">
            </div>
            <div class="register-phone">
                <input class="input" type="password" v-model="upwd2" placeholder="重复密码">
            </div>
        </div>
        <!-- 提示 -->
        <div class="register-msg" v-if="msg">
            <em class="msg-icon"></em>
            <span>{{msg}}</span>
        </div>
        <div :class="{'register-login':1,'disabled':show!=''?1:show}" @click="register()">立即注册</div>
        <div class="register-login user-login"><router-link to="/login">用户密码登录</router-link></div>
        <div><img @click="info()" src="/img/login.png" alt=""></div>
    </div>
</template>

<script>
import {Toast} from 'mint-ui'
export default {
  name: "Register",
  data() {
    return {
        phone: "",
        uname: "",
        upwd: "",
        upwd2: "",
        msg: "",
        reg: /^1[34578]\d{9}$/
    }
  },
  methods: {
      info() {
        Toast({
            message: '暂不支持',
            position: 'bottom',
            duration: 2000
        });
      },
      verification() {
          if(this.phone) {
              this.$http.get('http://localhost:5050/user/verification?phone='+this.phone)
              .then(res => {
                  if(res.data.code == -1)
                  this.msg = "用户已存在"
              })
          }
      },
        register () {
            if(!this.phone) return this.msg = "手机号不能为空"
            if(!this.reg.test(this.phone)) return this.msg = "手机格式不正确"
            if(!this.uname) return this.msg = "请设置用户名"
            if(!this.upwd) return this.msg = "请设置密码"
            if(!this.upwd2) return this.msg = "请再次输入密码"
            if(this.upwd != this.upwd2) return this.msg = "两次密码不一致"
            this.$http.post('http://localhost:5050/user/register',`phone=${this.phone}&uname=${this.uname}&upwd=${this.upwd}`)
                .then(res =>{
                    console.log(res)
                    if(res.data.code ==1){
                        this.$toast({message: '注册成功', duration: 1000})
                        setTimeout(function(){location.href = '/login' },1000)
                        
                    }
                })
      }
  },
  mounted() {
  },
  computed: {
       show(){
            if(this.reg.test(this.phone)&&this.uname&&this.upwd&&this.upwd == this.upwd2){
            return false
            }
        }
  },
  watch: {
        phone() {
            this.msg = ""
        },
        uname() {
            this.msg = ""
        },
        upwd() {
            this.msg = ""
        },
        upwd2() {
            this.msg = ""
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
}

.input {
  border: none;
  outline: none;
  font-size: 1.2rem;
  color: #4a4a5b;
}

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

.user-login {
  background: #fff;
  color: #000;
  border: 1px solid #d3d3d3;
}
.disabled{
    background: #d3d3d3;
}
/* 提示start */
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
/* end */
</style>
