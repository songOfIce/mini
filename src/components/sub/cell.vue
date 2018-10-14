<template>
    <div class="cell">
        <div class="cell-item">
            <router-link to="" v-if="item.id" v-for="(item,index) in cell" :key="index"><img :src="item.img" alt=""></router-link>
        </div>
    </div>
</template>

<script>
export default {
    name: "Cell",
    data () {
        return {}
    },
    props: ["cell"]
}
</script>

<style scoped>
.cell-item{
    display: flex;
    justify-content: space-around;
    flex-wrap: nowrap;
}
.cell-item a{
    width: 20%;
}
.cell-item img{
    width: 100%;
}
</style>
