<template>
    <div class="app-list">
        <div class="list">
            <div class="list-item" v-for="(item,i) in imglist" :key="i">
              <router-link to="#">
                <img :src="item.img" :data-pid="item.pid">
                <div class="list-item-link">
                    <h5 class="list-title">{{item.title}}</h5>
                    <p class="list-subtitle">{{item.subtitle}}</p>
                    <p class="price"><span>¥ {{item.nowPrice }}&nbsp;&nbsp;&nbsp;</span><s class="del"> {{ item.oldPrice }} </s></p>
                    <div class="shop">立即购买</div>
                </div>
              </router-link>
            </div>
        </div>
    </div>
</template>

<script>
export default {
  props: ["imglist"]
};
</script>

<style scoped>
.list {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  width: 100%;
  padding: 0 5px;
  background: red;
}
.list-item {
  width: 49%;
  background: #fff;
  margin: 3px 0;
  text-align: center;
}
.list-item img {
  width: 100%;
  border-bottom: 1px solid red;
}
.price {
  color: #f56d02;
}
.list-title {
    font-size: 14px;
  color: #212121;
  padding: 0 0 10px 0;
}
.list-subtitle{
    font-size: 12px;
    padding-bottom: 3px;
}
.del {
  color: #565656;
}
.list-item-link {
  padding: 15px 0;
}

.shop{
    width: 65%;
    margin: 0 auto;
    border-radius: 3px;
    background: #EA625B;
    color: #fff;
    padding: 5px 15px;
    font-size: 14px;
}
</style>
