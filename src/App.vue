<template>
  <div id="app">
    <div id="header">
        <div class="header-left">
            <router-link to="/home"><img src="./assets/logo.png" alt="logo"></router-link>
        </div>
        <div class="header-center">
            <img src="./assets/search.png" alt="">
            <div class="header-center-box">
                搜索商品名称
            </div>
        </div>
        <div class="header-right">
            <img src="./assets/user.png" alt="">
        </div>
    </div>
    <mt-navbar v-model="selected">
        <mt-tab-item id="1">选项一</mt-tab-item>
        <mt-tab-item id="2">选项二</mt-tab-item>
        <mt-tab-item id="3">选项三</mt-tab-item>
    </mt-navbar>

<!-- tab-container -->

    <div class="nav">
       <ul>
           <li><router-link to="">推荐</router-link></li>
           <li><router-link to="">手机</router-link></li>
           <li><router-link to="">电视</router-link></li>
           <li><router-link to="">智能</router-link></li>
           <li><router-link to="">笔记本</router-link></li>
           <li><router-link to="">家电</router-link></li>
           <li><router-link to="">^</router-link></li>
       </ul>
    </div>
    <router-view/>
  </div>
</template>

<script>
export default {
    data(){
        return {selected:[]}
    },
    methods:{
        active(){
            this.className = "active";
        }
    }
}
</script>

<style scoped>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
}
#header{
    display: flex;
    justify-content: space-between;
    height: 50px;
}
.header-left{
    padding: 8px 10px;
    width: 16%;
}
.header-left img{
    width: 100%;
    height: 100%; 
}
.header-center{
    position: relative;
    width: 70%;
    padding: 5px 0;
    line-height: 40px;
    font-size: 20px;
    color: #B2B2B2;
}
.header-center>img{
    position: absolute;
    top: 8px;
    left: 5px;
}
.header-center-box{
    width: 100%;
    height: 40px;
    background: #fff;
    padding-left: 45px;
    border-radius: 5px;
}
.header-right{
    width: 14%;
    text-align: center;
    padding: 8px
}
/* 导航栏 */
.nav ul{
    list-style: none;
    display: flex;
    justify-content: space-around;
    padding: 0;
    margin: 10px 0;
}
.nav ul li{
    font-size: 18px;
}
.nav>ul>li a{
    color: #747474;
    padding-bottom: 5px;
}
.nav ul li:nth-child(1) a{
    color: #FF6B00;
    border-bottom: 2px solid #ff6b00;
}
.active{
    color: #ff6b00;
}
</style>
