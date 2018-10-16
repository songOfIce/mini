<template>
    <div class="app-phone">
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="(item,i) in list" :key="i">
                <router-link to="#"><img :src="item.img" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
        <h3>现货热卖</h3>
        <List :imglist="imglist1" />
        <h3>红米系列</h3>
        <List :imglist="imglist2" />
        <h3>小米系列</h3>
        <List :imglist="imglist3" />
        <h3>小米移动</h3>
        <List :imglist="imglist4" />
    </div>
</template>

<script>
import List from '../sub/list.vue'
export default {
  name: "Phone",
  data() {
    return {
      list: [],
      imglist1: [],
      imglist2: [],
      imglist3: [],
      imglist4: []
    };
  },
  methods: {
    getData() {
      this.$http.get("http://localhost:8086/home/img/phone").then(res => {
        this.list = res.data.banner;
        this.imglist1 = res.data.imglist.slice(0,6);
        this.imglist2 = res.data.imglist.slice(6,12);
        this.imglist3 = res.data.imglist.slice(12,16);
        this.imglist4 = res.data.imglist.slice(16,18);
      });
    }
  },
  created() {
    this.getData();
  },
  components: {
      List
  }
};
</script>

<style scoped>
.app-phone .mint-swipe {
  height: 207px;
}
.mint-swipe img {
  width: 100%;
  height: 100%;
}
</style>
