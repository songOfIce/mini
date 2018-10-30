<template>
    <div class="user">
        <div class="user-login">
            <router-link to="/login">
                <div class="user-login-head">
                    <div><img :src="show?'//s1.mi-img.com/mfsv2/download/fdsc3/p0160alHO1RK/XmH4xhtJEERVC6.jpg':'/img/users.png'" alt=""></div>
                    <div class="user-success">
                        <span class="user-name">{{show?uname:"登录/注册"}}</span>
                        <span class="user-uid">{{show?show:""}}</span>
                    </div>
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
        <div class="fenge" style="height: 100px"></div>
        <!-- 登录之后的 退出登录 -->
        <div class="logout" v-if="show" @click="logout()">退出登录</div>
        <Footer />
    </div>
</template>

<script>
import Footer from '../components/footer.vue'
export default {
    data(){
        return {
            show: sessionStorage['uid'],
            uname: sessionStorage['uname']
        }
    },
    methods: {
        logout() {
            // sessionStorage.clear();
             sessionStorage.removeItem('uid')
            history.go(0);
        }
    },
    created() {
    },
    components: {
        Footer
    }
}
</script>

<style scoped>
/* 用户登录显示 start*/
.user-success{
    display: flex;
    flex-direction: column;
    padding-left: 10px;
    padding-top: 10px;
    color: #fff;
    font-size: 14px;
}
.user{
    font-size: .8rem;
}
.user-uid{
    color: #FACB9F;
}
.logout{
    position: absolute;
    bottom: 50px;
    text-align: center;
    width: 100%;
    height: 50px;
    line-height: 50px;
    background: #f37d0f;
    color: #fff;
}
.logout:active{
    opacity: .8;
}
/* end */
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
    overflow: hidden;
}
.user-login .user-login-head>div:first-child img{
    width: auto;
    height: 100%;
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
.user-login-three p {
    font-size: .8rem;
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
