<template>
    <div class="app-commend">
        <!-- 组件轮播 -->
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="item in this.list" :key="item.id">
                <router-link to=""><img :src="item.img_url" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:[],
            img: ""
        }
    },
    methods:{
        getBanner(){
            this.$http.get("http://localhost:8086/home/banner")
            .then(function(res){ this.list = res.body })
        }
    },
    created(){
        this.getBanner();
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
</style>


