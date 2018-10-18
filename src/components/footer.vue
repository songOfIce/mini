<template>
    <div class="app-footer">
        <div class="app-footer-item" @click="active(0)">
          <router-link to="/home">
            <img class="hide"  :src="list[0].img1">
            <img  :src="list[0].img2">
            <p class="active">首页</p>
          </router-link>
        </div>
        <div class="app-footer-item" @click="active(1)">
            <router-link to="/class">
                <img  :src="list[1].img1">
                <img class="hide"  :src="list[1].img2">
                <p>分类</p>
            </router-link>
        </div>
        <div class="app-footer-item" @click="active(2)">
            <router-link to="/car">
                <img  :src="list[2].img1">
                <img class="hide"  :src="list[2].img2">
                <p>购物车</p>
            </router-link>
        </div>
        <div class="app-footer-item" @click="active(3)">
            <router-link to="/user">
                <img  :src="list[3].img1">
                <img class="hide"  :src="list[3].img2">
                <p>我的</p>
            </router-link>
        </div>
    </div> 
</template>

<script>
export default {
  data () {
    return {
      list:[
        {img1: "../img/index.png",img2: "../img/index1.png"},
        {img1: "../img/class.png",img2: "../img/class1.png"},
        {img1: "../img/car.png",img2: "../img/car1.png"},
        {img1: "../img/user.png",img2: "../img/user1.png"},
      ],
      path:["/home","/class","/car","/user"]
    }
  },
  methods:{
    active(id){
      var achildList = $(".app-footer-item")[id].children[0].childNodes;
      for(var i=0;i<4;i++){
        var div = $(".app-footer-item")[i].children[0].childNodes;
        $(div[0]).show();
        $(div[1]).hide();
        $(div[2]).removeClass("active");
      }
      $(achildList[0]).hide();
      $(achildList[1]).show();
      $(achildList[2]).addClass("active");
    },
  },
}
</script>

<style scoped>
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
    z-index: 100;
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
.hide{
    display: none;
}
</style>
