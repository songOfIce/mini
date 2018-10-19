<template>
  <div class="home">
    <header-box/>
    <nav-box/>
    <router-view></router-view>
    <div class="go-top">
        <a href="#">
            <img src="http://localhost:8085/img/top.png" alt="">
        </a>
    </div>
  </div>
</template>

<script>
import header from '../components/header.vue'
import nav from '../components/nav.vue'
export default {
    data(){
        return {
            isDisplay: false
        }
    },
    created () {
        this.$router.push('/home/commend');
        window.onscroll = function () {
            var t = document.documentElement.scrollTop;
            var top = document.querySelector(".go-top");
            if (t > 1200) {
                top.style.display = "block"
            }else{ top.style.display = "none"}
        }
    },
    components:{
        "header-box":header,
        "nav-box":nav
    }
}
</script>
<style scoped>
    body{
        background: #F5F5F5;
    }
    .home{
        padding-bottom: 60px;
        position: relative;
    }
    /* 回顶部 start */
    .go-top {
        position: fixed;
        bottom: 100px;
        right: 10px;
        display: none;
    }

    .go-top img {
        width: 40px;
        height: 40px;
        opacity: .9;
    }
    /* end */
    
</style>
