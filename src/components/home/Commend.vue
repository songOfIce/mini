<template>
    <div class="app-commend">
        <!-- 组件轮播 -->
        <mt-swipe :auto="4000" class="mint">
            <mt-swipe-item v-for="(item,i) in this.list" :key="i">
                <router-link to=""><img :src="item.img_url" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
        <Cell :cell="cell" />
        <!-- 手机楼层 -->
        <div class="commend-floor" v-if="imglist[0]">
            <div><img :src="imglist[0].imgbig" alt=""></div>
            <div>
                <div><img :src="imglist[0].img" alt=""></div>
                <div><img  :src="imglist[1].img" alt=""></div>
            </div>
        </div>
        <List :commendimglist="imglist" />
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
      imglist: []
    };
  },
  methods: {
    getData() {
      this.$http.get("/home/banner").then(data => {
        this.list = data.data.banner;
        // console.log(data);
      });
      this.$http.get("/home/icon").then(res => {
        console.log(res);
        this.cell = res.data.icon;
        this.imglist = res.data.imglist;
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
}
.no-active {
  transform: translateX(0);
}
.active {
  transform: translateX(-100%);
  transition: all 2s;
}
.hide {
  transform: translateX(100%);
}
/* 各推荐的楼层 */
.commend-floor {
  display: flex;
  justify-content: space-between;
  padding-top: 15px;
}
.commend-floor > div {
  width: 49%;
}
</style>


