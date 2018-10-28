<template>
    <div class="app-phone">
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="(item,i) in banner" :key="i" v-if="item.img">
                <router-link to=""><img :src="item.img" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
        <h3>现货热卖</h3>
        <List :imglist="list" />
        <!-- <h3>红米系列</h3>
        <List :imglist="imglist2" />
        <h3>小米系列</h3>
        <List :imglist="imglist3" />
        <h3>小米移动</h3>
        <List :imglist="imglist4" /> -->
    </div>
</template>

<script>
import List from '../sub/list.vue'
export default {
  name: "Phone",
  data() {
    return {
        banner: [],
      list: [],
      imglist1: [],
      imglist2: [],
      imglist3: [],
      imglist4: []
    };
  },
  methods: {
    getData() {
      this.$http.get("http://localhost:5050/home/banner?name=phone").then(res => {
        this.banner = res.data.banner;
        this.list = res.data.list;
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

</style>
