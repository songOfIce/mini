<template>
    <div v-if="data[0] != ''">
        <div class="productList" v-if="item.id" v-for="(item,i) in goodsList" :key="i">
            <div class="select">
                <checkbox />
                <img :src="item.img?item.img:''" alt="">
            </div>
            <div class="info">
                <p>{{item.title != ''?item.title:''}}</p>
                <div class="price">售价: ¥ {{item.price != ''?item.price:''}} 元</div>
                <add :p="item.id" :s="item.single" :i="i"/>
            </div>
            <div class="delete" @click="del(item.id,i)"></div>
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
            isC: false,
        }
    },
    props: ["data"],
    methods: {
        del(id,i) {
            this.$http.get('http://localhost:5050/user/del?id='+id)
                .then(res =>{
                    if(res.data.code == 1) this.data.splice(i,1)
                    this.$store.commit('updateProduct',i)
                })
        },
    },
    components: {
        checkbox,
        add
    },
    computed: {
        goodsList () {
            
            return this.data
        }
    }
})
</script>
<style lang="scss" scoped>
.productList{
    display: flex;
    font-size: .9rem;
    padding: .7rem 0;
    overflow: hidden;
    position: relative;
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
//    删除
.delete{
        position: absolute;
        right: 5px;
        bottom: 10px;
        width: 25px;
        height: 25px;
        background: url(/img/rubbish.png) no-repeat center center;
        background-size: 100% ;
    }
</style>
