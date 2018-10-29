<template>
    <div class="register">
        <div class="register-img"><img src="/img/register.png" alt=""></div>
        <div style="font-size: 1.3rem;">小米账号注册</div>
        <div>
            <div class="register-phone">
                <input class="input" type="text" placeholder="账号">
            </div>
            <div class="register-phone">
                <input class="input" type="text" placeholder="密码">
            </div>
            <div class="register-phone">
                <input class="input" type="text" placeholder="重复密码">
            </div>
        </div>
        <div class="register-login">立即注册</div>
        <div class="register-login user-login"><router-link to="/login">用户密码登录</router-link></div>
        <div><img src="/img/login.png" alt=""></div>
    </div>
</template>

<script>
export default {
  name: "Register",
  data() {
    return {
    };
  },
  methods: {
    
  },
  created() {},
  mounted() {
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
.register-login:active{
    opacity: .8;
}
.user-login {
  background: #fff;
  color: #000;
  border: 1px solid #d3d3d3;
}

</style>
