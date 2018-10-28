<template>
    <div class="app-smart">
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="(item,i) in banner" :key="i" v-if="item.img">
                <router-link to=""><img v-lazy="item.img" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
        <Cell :cell="banner" />
        <List :imglist="list" />
    </div>
</template>

<script>
import Cell from '../sub/cell.vue'
import List from '../sub/list.vue'
export default {
    name: "Smart",
    data () {
        return {
            banner: [],
            list: [],
        }
    },
    methods: {
        getData () {
            this.$http.get("http://localhost:5050/home/banner?name=smart")
                .then(res =>{
                    this.banner = res.data.banner;
                    this.list = res.data.list;
                })
        }
    },
    created () {
        this.getData()
    },
    components: {
        Cell,
        List
    }
}
</script>

<style scoped>
.smart-item img{
    width: 100%;
}
</style>
