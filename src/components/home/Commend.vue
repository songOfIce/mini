<template>
    <div class="app-commend">
        <!-- 组件轮播 -->
        <mt-swipe :auto="4000" class="mint">
            <mt-swipe-item v-for="(item,i) in list" :key="i">
                <router-link to="#"><img :src="item.img_url" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
        <Cell :cell="cell" />
        <!-- 手机楼层 -->
        <div class="commend-floor" v-if="imglist[0]">
            <div><router-link to="#"><img :src="imglist[0].imgbig" alt=""></router-link></div>
            <div>
                <div class="commend-floor-item"><router-link to="#"><img :src="imglist[0].img" alt=""></router-link></div>
                <div class="commend-floor-item"><router-link to="#"><img :src="imglist[1].img" alt=""></router-link></div>
            </div>
        </div>
        <h3>超值推荐</h3>
        <List :imglist="imglist" />
         <h3>小米电视</h3>
        <List :imglist="imgTvList" />
        <h3>明星单品</h3> 
        <List :imglist="imgStarList" />
        <div>
            <img src="img/understand.png" alt="">
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
      list: [],
      cell: [],
      imglist: [],
      imgTvList: [],
      imgStarList: []
    };
  },
  methods: {
    getData() {
      this.$http.get("/home/banner").then(data => {
        this.list = data.data.banner;
        // console.log(data);
      });
      this.$http.get("http://localhost:8080/home/commend").then(res => {
        // console.log(res);
        this.cell = res.data.icon;
        this.imglist = res.data.imglist;
        this.imgTvList = res.data.imgTvList;
        this.imgStarList = res.data.imgStarList;
      });
    }
  },
  created() {
    this.getData();
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
.app-commend .mint-swipe {
  height: 207px;
}
.app-commend img {
  width: 100%;
  height:100%;
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
.understand{
    padding: 8px;
    text-align: center;
    background: #fff;
    color: #898989;
}
</style>


