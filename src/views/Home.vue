<template>
  <div class="home">
    <header-box/>
    <nav-box/>
    <router-view></router-view>
    <div class="go-top">
        <a href="#">
            <img src="/img/top.png" alt="">
        </a>
    </div>
    <footer-box></footer-box>
  </div>
</template>

<script>
import header from '../components/header.vue'
import nav from '../components/nav.vue'
import Footer from '../components/footer.vue'
export default {
    data(){
        return {
            isDisplay: false
        }
    },
    created () {
        this.$router.push('/home/commend');
        
    },
    components:{
        "header-box":header,
        "nav-box":nav,
        "footer-box": Footer
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
