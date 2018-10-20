<template>
    <div class="car">
        <mt-header title="购物车">
            <router-link to="/" slot="left">
                <img src="http://localhost:8085/img/back.png">
            </router-link>
            <mt-button slot="right">
                <img src="http://localhost:8085/img/search.png">
            </mt-button>
        </mt-header>
        <div class="login">
            <a href="#">
                <span>登录后享受更多优惠</span>
                <span>去登陆 <img src="http://localhost:8085/img/back.png" alt=""></span>
            </a>
        </div>
        <div class="car-item">
            <span>购物车还是空的</span>
            <em>去逛逛</em>
        </div>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.login{
    padding-top: 50px;
}
.login a{
    display: flex;
    justify-content: space-between;
    height: 60px;
    line-height: 60px;
    padding: 0 10px;
}
.login a span:first-child{
    color: #000;
}.login a span:last-child{
    color: #757575;
}
                
.login a img{
    transform: rotateY(180deg) scale(.6);
    vertical-align: middle;
    margin-bottom: 3px;
}                                 
.car-item span{
    display: inline-block;
    width: 100%;
    height: 200px;
    background: url('http://localhost:8085/img/cartnull.png') no-repeat;
}
</style>
