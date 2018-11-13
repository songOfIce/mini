<template>
    <div class="app-commend" >
        <!-- 组件轮播 -->
        <mt-swipe :auto="4000" class="mint">
            <mt-swipe-item v-for="(item,i) in banner" :key="i" v-if="item.img">
                <router-link to="#"><img :src="item.img" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
        <Cell :cell="banner" />
        <h3>超值推荐</h3>
         <List :imglist="list" />
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
    includedComponents: "Commend",
      display: null,
      banner: [],
      list: []
    };
  },
  methods: {
    getData() {
      this.$http
        .get("/home/banner?name=commend")
        .then(data => {
        console.log(123)
          this.banner = data.data.banner;
          this.list = data.data.list;
        });
    }
  },
    mounted() {
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
.commend-floor-item {
  height: 50%;
}
.understand img {
  width: 100%;
}
</style>


