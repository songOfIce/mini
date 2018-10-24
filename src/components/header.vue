<template>
    <div id="app-header">
        <div class="header-left">
            <router-link to="/home"><img src="/img/logo.png" alt="logo"></router-link>
        </div>
        <div class="header-center">
            <img src="/img/search.png" alt="">
            <div class="header-center-box">
                搜索商品名称
            </div>
        </div>
        <div class="header-right">
            <img src="/img/user.png" alt="">
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {}
    }
}
</script>

<style scoped>
#app-header{
    display: flex;
    justify-content: space-between;
    height: 45px;
    padding-top: 5px;
    background: #F2F2F2;
}
.header-left{
    padding: 10px 20px;
    width: 16%;
}
.header-left img{
    width: 28px;
    height: 19px; 
}
.header-center{
    position: relative;
    width: 70%;
    padding: 2px 0;
    color: #B2B2B2;
}
.header-center>img{
    position: absolute;
    top: 8px;
    left: 5px;
    width: 25px;
    height: 25px;
}
.header-center-box{
    width: 100%;
    height: 35px;
    background: #fff;
    padding-left: 45px;
    border-radius: 5px;
    font-size: 14px;
    line-height: 35px;
}
.header-right{
    width: 14%;
    text-align: center;
}
.header-right img{
    margin-top: 5px;
    width: 28px;
    height: 28px;
}
</style>
