<template>
    <div class="app-products">
        <div class="products-item"><img v-if="list[0]" :src="list[0].imgbig" alt=""></div>
        <Cell :cell="cell" />
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
            list: [],
            cell: []
        }
    },
    methods: {
        getData () {
            this.$http.get("http://localhost:8086/home/img/products")
                .then(res => {
                    // console.log(res)
                    this.cell = res.data.cell;
                    this.list = res.data.imglist;
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

