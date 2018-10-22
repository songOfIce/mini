<template>
    <div class="user">
        <div class="user-login">
            <router-link to="/user/login">
                <div class="user-login-head">
                    <div><img src="http://localhost:8085/img/users.png" alt=""></div>
                    <div>登录/注册</div>
                </div>
            </router-link>
            <div class="user-login-two">
                <div>我的订单</div>
                <div>全部订单</div>
            </div>
            <div class="user-login-three">
                <a href="">
                    <div><img src="http://localhost:8085/img/fukuan.png" alt="123"><p>代付款</p></div>
                </a>
                <a href="">
                    <div><img src="http://localhost:8085/img/shouhuo.png" alt="123"><p>待收货</p></div>
                </a>
                <a href="">
                    <div><img src="http://localhost:8085/img/banshou.png" alt="123"><p>退返修</p></div>
                </a>
            </div>
        </div>
        <div class="fenge"></div>
        <div class="user-login-four">
            <div class="user-login-four-item"><span><img class="icon" src="http://localhost:8085/img/huiyuan.png" alt="123">会员中心</span><img class="back" src="http://localhost:8085/img/back.png" alt=""></div>
            <div class="user-login-four-item"><span><img class="icon" src="http://localhost:8085/img/me.png" alt="123">我的优惠</span><img class="back" src="http://localhost:8085/img/back.png" alt=""></div>
        </div>
        <div class="fenge"></div>
        <div class="user-item">
            <div class="user-login-five-item"><span><img class="icon" src="http://localhost:8085/img/serve.png" alt="123">服务中心</span><img class="back" src="http://localhost:8085/img/back.png" alt=""></div>
            <div class="user-login-five-item"><span><img class="icon" src="http://localhost:8085/img/home.png" alt="123">小米之家</span><img class="back" src="http://localhost:8085/img/back.png" alt=""></div>
        </div>
        <div class="fenge"></div>
    </div>
</template>

<script>
export default {
    data(){
        return {}
    },
    created() {
        window.onscroll = null;
    }
}
</script>

<style scoped>

.user-login .user-login-head{
    display: flex;
    background: #f37d0f url("http://localhost:8085/img/bg.png") center 0;
    background-size: auto 100%;
    padding: 20px 15px;
}
.user-login .user-login-head>div:first-child{
    width: 55px;
    height: 55px;
    border-radius: 50%;
    border: 3px solid hsla(0,0%,100%,.4);
    text-align: center;
}
.user-login .user-login-head>div:first-child img{
    width: auto;
    height: 100%;
}
.user-login-head>div:last-child{
    line-height: 55px;
    padding-left: 20px;
    color: #fff;
    font-size: 14px;
}
.user-login-two, .user-login-three{
    display: flex;
    justify-content: space-between;
    padding: 15px 10px;
    border-bottom: 1px solid #D9D9D9;
}
.user-login-three{
    justify-content: space-around;
}
.user-login-three div{
    text-align: center;
}
.user-login-three div img{
    width: 30px;
    height: 30px;
}
.fenge{
    height: 15px;
    background: #f5f5f5;
}

.fenge:last-child{
    height: 150px;
}
.user-login-four-item, .user-login-five-item{
    display: flex;
    justify-content: space-between;
    padding: 15px 10px;
    border-bottom: 1px solid #D9D9D9;
    line-height: 30px;
    box-sizing: border-box;
}
.back{
    transform: rotateY(180deg) scale(.5);
    vertical-align: middle;
}
.icon{
    width: 30px;
    height: 30px;
    vertical-align: middle;
    margin-right: 15px;
    /* margin-bottom: 10px; */
}
</style>
