<template>
  <div class="home">
    <header-box/>
    <nav-box/>
    <footer-box></footer-box>
    <transition :name="transitionName">
        <router-view></router-view>
    </transition>
    <div class="go-top">
        <a href="#">
            <img src="/img/top.png" alt="">
        </a>
    </div>
  </div>
</template>

<script>
import header from '../components/header.vue'
import nav from '../components/nav.vue'
import Footer from '../components/footer.vue'
export default {
    data(){
        return {
            transitionName: ""
        }
    },
    created () {
        this.$router.push('/home/commend');
    },
    components:{
        "header-box":header,
        "nav-box":nav,
        "footer-box": Footer
    },
    watch: {
        $route(to, from){
            if(to.meta.index > from.meta.index){
                this.transitionName = "slid-left";
            }
            if(to.meta.index < from.meta.index){
                this.transitionName = "slid-right";
            }
        },
         
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
        overflow-x: auto;
        min-height: 675px;
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
    /* 路由切换动画 */
    /* .main{
        position: relative;
    } */
    .slid-left-enter-active,
    .slid-left-leave-active,
    .slid-right-enter-active,
    .slid-right-leave-active{
        will-change: transform;
        transition: all .5s;
        position: absolute;
    }
    .slid-left-enter{
        transform: translate3d(100%,0,0);
    }
    .slid-left-leave-active{
        transform: translate3d(-100%,0,0);
    }
    .slid-right-enter{
        transform: translate3d(-100%,0,0);
    }
    .slid-right-leave-active{
        transform: translate3d(100%,0,0);
    }
</style>
