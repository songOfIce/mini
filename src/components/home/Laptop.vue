<template>
    <div class="app-laptop">
        <mt-swipe :auto="4000" :show-indicators="false">
            <mt-swipe-item v-for="(item,i) in banner" :key="i" v-if="item.img">
                <router-link to=""><img v-lazy="item.img" alt=""></router-link>
            </mt-swipe-item>
        </mt-swipe>
        <Cell :cell="banner" />
        <List :imglist="list" v-for="item in 3" :key="item" />
    </div>
</template>

<script>
import Cell from '../sub/cell.vue'
import List from '../sub/list.1.vue'
export default {
    name: "Laptop",
    data () {
        return {
            list: [],
            banner: []
        }
    },
    methods: {
        getData () {
            this.$http.get("http://localhost:8086/home/banner?name=laptop")
                .then( res =>{
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
.laptop-item img{
    width: 100%;
}
</style>

