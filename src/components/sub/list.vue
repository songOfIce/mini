<template>
    <div class="app-list">
        <div class="list">
            <div class="list-item" v-for="(item,i) in imglist" :key="i">
              <router-link to="#">
                <img :src="item.img">
                <div class="list-item-link">
                    <h5 class="title">{{item.title}}</h5>
                    <p>{{item.subtitle}}</p>
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
}
</script>

<style scoped>
    /*.app-list{
         width: 100%; 
    }*/
    .list{
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        width: 100%;
    }
    .list-item{
        width: 50%;
    } 
    .list-item img{
        width: 100%;
    }
    .price{
      color: #f56d02;
    }
    .title{
      font-weight: bold;
      color: #212121;
    }
    .del{
        color: #565656;
    }
    .list-item-link{
        padding-left: 15px;
    }
</style>
