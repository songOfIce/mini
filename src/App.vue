<template>
  <div id="app">
    <router-view/>
     <div class="app-footer">
            <div class="app-footer-item" @click="active()">
                <router-link to="/home">
                    <img :src="list[0].img1">
                    <img class="active-img" src="list[0].img2">
                    <p>首页</p>
                </router-link>
            </div>
            <div class="app-footer-item">
                <router-link to="/class" @click="active()">
                    <img  :src="list[1].img1">
                    <img class="active-img"  src="list[0].img2">
                    <p>分类</p>
                </router-link>
            </div>
            <div class="app-footer-item">
                <router-link to="/car">
                    <img  :src="list[2].img1">
                    <img class="active-img"  src="list[0].img2">
                    <p>购物车</p>
                </router-link>
            </div>
            <div class="app-footer-item">
                <router-link to="/user">
                    <img  :src="list[3].img1">
                    <img class="active-img"  src="list[0].img2">
                    <p>我的</p>
                </router-link>
            </div>
        </div>
  </div>
</template>

<script>
export default {
    data(){
        return {
            list:[
                {img1: "../../img/index.png",img2: "../../img/index1.png"},
                {img1: "../../img/class.png",img2: "../../img/class1.png"},
                {img1: "../../img/car.png",img2: "../../img/car1.png"},
                {img1: "../../img/user.png",img2: "../../img/user1.png"},
            ]
        }
    },
    methods:{
        active(){
            var achildList = $(".app-footer-item")[0].children[0].childNodes;
            
            console.log($(".app-footer-item")[0].children[0].childNodes)
        }
    }
}
</script>

<style scoped>
#app {
  max-width: 730px;
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
}
/* 底部导航 */
.app-footer{
    display: flex;
    justify-content: space-around;
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background: #fff;
    padding: 5px;
}
.app-footer img{
    width: 23px;
    height: 23px;
}
.app-footer p{
    margin: 0;

}
.app-footer-item{
    text-align: center;
}
.active{
    color: #F56D02;
}
.active-img{
    display: none;
}
</style>
