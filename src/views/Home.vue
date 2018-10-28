<template>
  <div class="home">
    <header-box/>
    <nav-box/>
    <footer-box></footer-box>
    <transition :name="transitionName">
        <router-view></router-view>
    </transition>
    <goTop />
  </div>
</template>

<script>
import header from '../components/header.vue'
import nav from '../components/nav.vue'
import Footer from '../components/footer.vue'
import goTop from '../components/sub/goTop.vue'
export default {
    data(){
        return {
            transitionName: ""
        }
    },
    created () {
        // this.$router.push('/home/commend');
        window.onscroll = function() {
            var t = document.documentElement.scrollTop;
            var top = document.querySelector(".go-top");
            if (t > 1200) {
                top.style.display = "block";
                // this.$store.commit("setShow");
            } else {
                top.style.display = "none";
                // this.$store.commit("setShow");
            }
        };
    },
    components:{
        "header-box":header,
        "nav-box":nav,
        "footer-box": Footer,
        goTop
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
