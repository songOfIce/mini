<template>
  <div class="home">
    <header-box/>
    <nav-box/>
    <router-view></router-view>
  </div>
</template>

<script>
import header from '../components/header.vue'
import nav from '../components/nav.vue'
export default {
    data(){
        return {
        }
    },
    created () {
        this.$router.push('/home/commend')
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
    }
</style>
