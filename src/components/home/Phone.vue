<template>
    <div class="app-phone">
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="(item,i) in banner" :key="i" v-if="item.img">
                <router-link to=""><img :src="item.img" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
        <h3>现货热卖</h3>
        <List :imglist="list" />
    </div>
</template>

<script>
import List from '../sub/list.vue'
export default {
  name: "Phone",
  data() {
    return {
        includedComponents: 'Phone',
        banner: [],
      list: [],
    };
  },
  methods: {
    getData() {
      this.$http.get("/home/banner?name=phone").then(res => {
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
