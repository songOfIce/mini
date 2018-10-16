<template>
    <div class="app-laptop">
        <div class="laptop-item"><img v-if="list[0]" :src="list[0].imgbig" alt=""></div>
        <Cell :cell="cell" />
        <List :imglist="list" />
    </div>
</template>

<script>
import Cell from '../sub/cell.vue'
import List from '../sub/list.vue'
export default {
    name: "Laptop",
    data () {
        return {
            list: [],
            cell: []
        }
    },
    methods: {
        getData () {
            this.$http.get("http://localhost:8086/home/img/laptop")
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
.laptop-item img{
    width: 100%;
}
</style>

