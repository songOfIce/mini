<template>
    <div class="go-top" v-if="$store.getters.getShow">
        <a href="#">
            <img src="/img/top.png" alt="">
        </a>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
/* 回顶部 start */
    .go-top {
        position: fixed;
        bottom: 100px;
        right: 10px;
    }

    .go-top img {
        width: 40px;
        height: 40px;
        opacity: .9;
    }
</style>
