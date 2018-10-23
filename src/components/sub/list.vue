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
/*.app-list{
         width: 100%; 
    }*/
.list {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  width: 100%;
}
.list-item {
  width: 49.5%;
}
.list-item img {
  width: 100%;
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
    padding-bottom: 12px;
}
.del {
  color: #565656;
}
.list-item-link {
  padding: 15px 15px;
}
</style>
