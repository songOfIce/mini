<template>
  <div id="app">
    <Header />
    <Nav />
    <router-view/>
    <Footer />
  </div>
</template>

<script>
import Header from './components/header.vue'
import Nav from './components/nav.vue'
import Footer from './components/footer.vue'
export default {
    data(){
        return {
            list: ["推荐","手机","电视","智能","笔记本","家电","^"]
        }
    },
    components:{
        Header,
        Nav,
        Footer
    }
}
</script>

<style scoped>
#app {
  max-width: 730px;
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
}
/* 底部 */
/* .app-footer{
    display: flex;
    left: 0;
    bottom: 0;
    height: 100px;
} */
</style>
