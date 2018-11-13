<template>
    <div class="app-products">
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
    name: "Products",
    data () {
        return {
            includedComponents: 'Products',
            list: [],
            banner: []
        }
    },
    methods: {
        getData () {
            this.$http.get("/home/banner?name=products")
                .then(res => {
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
.products-item img{
    width: 100%;
}
</style>

