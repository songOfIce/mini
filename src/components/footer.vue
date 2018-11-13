<template>
    <div id="footer">
        <div class="app-footer-item" v-for="(item,i) in list" :key="i">
          <router-link :to="item.path">
            <img :src="url==item.path?item.img2:item.img1">
            <p :class="url==item.path?'active':''">{{item.name}}</p>
            <mt-badge type="error" size="small" v-if="item.name=='购物车'"></mt-badge>
          </router-link>
        </div>
    </div> 
</template>

<script>
export default {
  data() {
    return {
      list: [
        {
          name: "首页",
          path: "/home/commend",
          img1: "/img/index.png",
          img2: "/img/index1.png"
        },
        {
          name: "分类",
          path: "/class",
          img1: "/img/class.png",
          img2: "/img/class1.png"
        },
        {
          name: "购物车",
          path: "/car",
          img1: "/img/car.png",
          img2: "/img/car1.png"
        },
        {
          name: "用户",
          path: "/user",
          img1: "/img/user.png",
          img2: "/img/user1.png"
        }
      ]
    };
  },
  computed: {
      url(){
            if(this.$route.path.indexOf("home") !=-1){
                return "/home/commend"
            }else{
                return  this.$route.path
            }
        }
  }
};
</script>

<style scoped>
/* 底部导航 */
#footer {
  display: flex;
  justify-content: space-around;
  position: fixed;
  left: 0;
  bottom: 0;
  right: 0;
  background: #fff;
  padding: 5px;
  z-index: 9999;
  box-shadow: 0 3px 14px 2px rgba(0,0,0,.3);
  transition: all .2s ease;
}
#footer img {
  width: 23px;
  height: 23px;
}
#footer p {
  margin: 0;
  font-size: 12px;
}
#footer .app-footer-item {
  text-align: center;
  position: relative;
}
.active{
    color: #f56d03;
}
.app-footer-item .mint-badge{
    position: absolute;
    top:0;
    right: -10px;
    font-size: 8px;
    padding: 1px 7px;
}
</style>
