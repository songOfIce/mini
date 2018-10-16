<template>
    <div class="app-list">
        <h3>超值推荐</h3>
        <div class="list">
            <div class="list-item" v-for="(item,i) in commendimglist" :key="i">
                <img :src="item.imgbig">
                <h6>{{item.title}}</h6>
                <p>{{item.subtitle}}</p>
                <p>¥{{item.price}}</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ["commendimglist"]
}
</script>

<style scoped>
    .app-list{
        width: 100%;
    }
    .list{
        display: flex;
        flex-wrap: wrap;
        width: 100%;
    }
    .list-item{
        width: 50%;
    }
    .list-item img{
        width: 100%;
    }
</style>
