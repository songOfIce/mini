<template>
    <div class="app-commend">
        <!-- 组件轮播 -->
        <mt-swipe :auto="4000" class="mint">
            <mt-swipe-item v-for="(item,i) in banner" :key="i" v-if="item.img">
                <router-link to="#"><img :src="item.img" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
        <Cell :cell="banner" />
        <!-- 手机楼层 -->
        <!-- <div class="commend-floor" v-if="imglist[0]">
            <div><router-link to="#"><img :src="imglist[0].imgbig" alt=""></router-link></div>
            <div>
                <div class="commend-floor-item"><router-link to="#"><img :src="imglist[0].img" alt=""></router-link></div>
                <div class="commend-floor-item"><router-link to="#"><img :src="imglist[1].img" alt=""></router-link></div>
            </div>
        </div> -->
        <h3>超值推荐</h3>
         <List :imglist="list" />
       <!--  <h3>小米电视</h3>
        <List :imglist="imgTvList" />
        <h3>明星单品</h3> 
        <List :imglist="imgStarList" /> -->
        <div class="understand">
            <img src="/img/understand.png" alt="">
        </div>
        
    </div>
</template>
<script>
import Cell from "../sub/cell.vue";
import List from "../sub/list.vue";
export default {
  name: "Commend",
  data() {
    return {
        display: null,
        banner: [],
        list: [],
        // imglist: [],
        // imgTvList: [],
        // imgStarList: []
    };
  },
  methods: {
    getData() {
      this.$http.get("http://localhost:8086/home/banner?name=commend").then(data => {
        this.banner = data.data.banner;
        this.list = data.data.list;
      });
    }
  },
  created() {
    this.getData();
    window.onscroll = function () {
        var t = document.documentElement.scrollTop;
        var top = document.querySelector(".go-top");
        if (t > 1200) {
            top.style.display = "block"
        }else{ top.style.display = "none"}
    }
  },
  components: {
    Cell,
    List
  }
};
</script>

<style scoped>
.mint > div:last-child {
  display: none;
}

/* 各推荐的楼层 */
.commend-floor {
  display: flex;
  justify-content: space-between;
  padding-top: 15px;
  height: 293px;
}
.commend-floor > div {
  width: 49.5%;
  height: 100%;
}
.commend-floor-item{
    height: 50%;
}
.understand img{
    width: 100%;
}

</style>


