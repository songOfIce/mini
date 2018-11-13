<template>
    <div v-if="goodsList[0] != ''">
        <div class="productList" v-if="item.id" v-for="(item,i) in goodsList" :key="i">
            <div class="select">
                <checkbox :data="{'isbuy':item.isbuy,'id':item.id,'i':i}" />
                <img :src="item.img?item.img:''" alt="">
            </div>
            <div class="info">
                <p>{{item.title != ''?item.title:''}}</p>
                <div class="price">售价: ¥ {{item.price != ''?item.price:''}} 元</div>
                <add :p="item.id" :s="item.single" :i="i" :isbuy="item.isbuy" />
            </div>
            <div class="delete" @click="del(item.id,i)"></div>
        </div>
    </div>
</template>

<script>
import checkbox from "./checkbox.vue";
import add from "./add.vue";
export default {
  name: "ProductList",
  data() {
    return {
      isC: false
    };
  },
  methods: {
    del(id, i) {
      this.$http.get("/user/del?id=" + id).then(res => {
      });
    this.$store.commit("updateProduct", i);
    }
  },
  components: {
    checkbox,
    add
  },
  computed: {
    goodsList() {
      return this.$store.getters.getProduct;
    }
  }
};
</script>
<style scoped>
.productList {
  display: flex;
  font-size: 0.9rem;
  padding: 0.7rem 0;
  overflow: hidden;
  position: relative;
  border-bottom: 1px solid #b1b1b1;
}
.select {
  display: flex;
  width: 35%;
  height: 100px;
  padding: 0 0.5rem;
}
.select img {
  width: 80px;
  height: 100%;
  align-self: center;
  margin-left: 10px;
}
.price {
  font-size: 0.6rem;
  color: #b1b1b1;
}
/* 删除 */
.delete {
  position: absolute;
  right: 5px;
  bottom: 10px;
  width: 25px;
  height: 25px;
  background: url(/img/rubbish.png) no-repeat center center;
  background-size: 100%;
}
</style>
