<template>
        <div class="home">
            <header-box/>
            <nav-box/>
            <footer-box></footer-box>
                <transition :name="transitionName">
            <keep-alive :include="/Commend|Laptop|Phone|Smart|Tv|Products/">
                    <router-view></router-view>
            </keep-alive>
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
    name: 'Home',
    data(){
        return {
            transitionName: "",
            uid: this.$store.getters.getuid,
            includedComponents: 'Home'
        }
    },
    methods: {
        handleScroll() {
            if(window.scrollY > 1000){
                if(!this.$store.getters.getShow)
                this.$store.commit("setShow")
            }
            else{
                if(this.$store.getters.getShow)
                this.$store.commit("setShow")

            }
        },
    },
    mounted() {
        window.addEventListener("scroll",this.handleScroll);
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
    /**/
    .slid-enter-active,
    .slid-leave-active{
        will-change: transform;
        transition: all .5s;
        position: absolute;
    }
    .slid-enter{
        transform: translate3d(-100%,0,0);
    }
    .slid-leave-active{
        transform: translate3d(-100%,0,0);
    }
</style>
