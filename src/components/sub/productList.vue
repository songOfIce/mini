<template>
    <div v-if="data[0] != ''">
        <div class="productList" v-for="(item,i) in data" :key="i">
            <div class="select">
                <checkbox />
                <img :src="item.img?item.img:''" alt="">
            </div>
            <div class="info">
                <p>{{item.title != ''?item.title:''}}</p>
                <div class="price">售价: ¥ {{item.price != ''?item.price:''}} 元</div>
                <add :p="item.pid" />
            </div>
        </div>
    </div>
</template>

<script>
import checkbox from './checkbox.vue'
import add from './add.vue'
export default({
    name: "ProductList",
    data() {
        return {
            isC: false
        }
    },
    props: ["data"],
    components: {
        checkbox,
        add
    },
})
</script>
<style lang="scss" scoped>
.productList{
    display: flex;
    font-size: .9rem;
    padding: .7rem 0;
    overflow: hidden;
}
    .select{
        display: flex;
        width: 35%;
        height: 100px;
        padding: 0 .5rem;
    }
    .select img{
        width: 80px;
        height: 100%;
        align-self: center;
        margin-left: 10px;
    }
    .price{
        font-size: .6rem;
        color: #B1B1B1;
    }
   
</style>
