<template>
    <div class="app-commend">
        <!-- 组件轮播 -->
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="(item,i) in this.list" :key="i">
                <router-link to=""><img :src="item.img_url" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>

        <!-- <div class="banner">
                <div v-for="(img,index) in imgs" :key="index" class="no-active" :class="index == mark?'active':'hide'">
                    <a href=""><img :src="img"></a>
                </div>
            <div class="bullet">
                <span v-for="(item,index) in imgs.length" :class="{'active':index===mark}" @click="change(index)" :key="index"></span>
            </div> 
        </div> -->
    </div>
</template>
<script>
import smallnav from '../subcomponents/smallnav.vue'
export default {
    data(){
        return {
            list:[],
        }
    },
    methods:{
        getBanner(){
            this.$http.get("/home/banner").then(res=>{
                console.log(res);
            //  this.list = res.data.banner 
             })
        },
        getData () {
            this.$http.get('/home/banner')
            .then( data => {
                this.list = data.data.banner;
                console.log(data);

          })
      }
    },
    created(){
        // this.getBanner();
        this.getData();
    },
    components: {
        "small-nav":smallnav
    }
}
</script>

<style scoped>

    .app-commend .mint-swipe{
        height: 207px;
    }
    .app-commend img{
        width: 100%;
    }
    .no-active{
        transform: translateX(0);
    }
    .active{
        transform: translateX(-100%);
        transition: all 2s;
    }
    .hide{
        transform: translateX(100%);
    }



    /* .image-enter-active{
        transform: translateX(0);
        transition: all 1s;

    }
    .image-leave-active{
        transform: translateX(-100%);
        transition: all 1s;
    }
    .image-enter{
        transform: translateX(100%);
    }
    .image-leave{
        transform: translateX(0);
    } */
</style>


