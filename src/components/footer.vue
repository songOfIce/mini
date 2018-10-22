<template>
    <div class="app-footer">
        <div class="app-footer-item" v-for="(item,i) in list" :key="i">
          <router-link :to="item.path">
            <img :src="url==item.path?item.img2:item.img1">
            <p :class="url==item.path?'active':''">{{item.name}}</p>
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
          img1: "../img/index.png",
          img2: "../img/index1.png"
        },
        {
          name: "分类",
          path: "/class",
          img1: "../img/class.png",
          img2: "../img/class1.png"
        },
        {
          name: "购物车",
          path: "/car",
          img1: "../img/car.png",
          img2: "../img/car1.png"
        },
        {
          name: "用户",
          path: "/user",
          img1: "../img/user.png",
          img2: "../img/user1.png"
        }
      ]
    };
  },
  computed: {
      url(){
        return  this.$route.path
      }
  }
};
</script>

<style scoped>
/* 底部导航 */
.app-footer {
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
.app-footer img {
  width: 23px;
  height: 23px;
}
.app-footer p {
  margin: 0;
}
.app-footer-item {
  text-align: center;
}
.active {
  color: #f56d02;
}
</style>
