<template>
    <div class="car">
        <mt-header title="购物车">
            <router-link to="/" slot="left">
                <img src="/img/back.png">
            </router-link>
            <mt-button slot="right">
                <img src="/img/search.png">
            </mt-button>
        </mt-header>
        <div class="login">
            <product-list @handleCount="calculate" :data="data"  v-if="uid" />
            <router-link to="javascript:;" v-else>
                <span>登录后享受更多优惠</span>
                <span>去登录 <img src="/img/back.png" alt=""></span>
            </router-link>
        </div>
        <div class="car-item" v-if="!data[0]">
            <router-link to="javascript: ;">
                <span>购物车还是空的</span>
                <em>去逛逛</em>
            </router-link>
        </div>
        <!-- <div @click="getProducts()">asdfdsaf{{$store.getters.getProducts}}</div> -->
        <!-- 推荐 -->
        <div>
            <div>
                <img style="width: 100%;" src="/img/love.jpg" alt="">
            </div>
            <div class="car-footer">
                <List :imglist="list" />
            </div>
        </div>
        <!-- 结算 -->
        <div class="total">
            <div class="total-price">
                <span>共0件 金额:</span>
                <span><b>{{total}} </b> 元</span>
            </div>
            <div>继续购物</div>
            <div>去结算</div>
        </div>
        <goTop />
    </div>
</template>

<script>
import List from '../components/sub/list.vue'
import Footer from '../components/footer.vue'
import goTop from '../components/sub/goTop.vue'
import productList from '../components/sub/productList.vue'
export default {
    name: "Car",
    data () {
        return {
            list: [],
            uid: sessionStorage['uid'],
            data: [],
            total: 0
        }
    },
    methods: {
        getData() {
            this.$http.get("http://localhost:5050/home/banner?name=commend")
                .then(res =>{
                    // console.log(res)
                    this.list = res.data.list;
                });
            if(this.uid != undefined){
                this.$http.get('http://localhost:5050/user/find?uid='+this.uid)
                    .then(res => {
                        console.log(res);
                        if(res.data.code == -1) console.log(res)
                            this.data = res.data;
                        for(let i=0;i<this.data.length;i++){
                            // this.total = this.data[i].price*this.data[i].single
                        }
                    })
            }
        },
        calculate(item){
            console.log(item)
        },
        getProducts() {
            // console.log(this.$store.getters.getProducts)
            

        }
    },
    created() {
        this.getData();
        window.onscroll = null;
    },
    components: {
        List,
        Footer,
        goTop,
        productList
    }
}
</script>

<style scoped>

.login{
    padding-top: 50px;
    position: relative;
}
.login a{
    display: flex;
    justify-content: space-between;
    height: 60px;
    line-height: 60px;
    padding: 0 10px;
}
.login a span:first-child{
    color: #000;
}.login a span:last-child{
    color: #757575;
    font-size: 14px;
}
      
.login a img{
    transform: rotateY(180deg) scale(.5);
    vertical-align: middle;
    margin-bottom: 3px;
}                                 
.car-item{
    text-align: center;
    background: #EBEBEB;
    padding: 10px;
    font-size: 14px;
}
.car-item a{
    color: #ABABAB;
}
.car-item span{
    display: inline-block;
    height: 46px;
    line-height: 46px;
    padding-left: 50px;
    padding-right: 10px;
    background: url('http://localhost:8085/img/cartnull.png') no-repeat 0;
    background-size: auto 100%;
}
.car-item em{
    display: inline-block;
    padding: 5px 20px;
    font-size: 16px;
    color: #000;
    border: 1px solid #C8C8C8;
    box-sizing: border-box;
}
/* car-footer */
.car-footer{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
.car-footer-item{
    width: 49%;
}
/* 结算 */
.total{
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    background: #fff;
    z-index: 99;
    box-shadow: 0 3px 14px 2px rgba(0,0,0,.12);
    width: 100%;
    height: 50px; 
    display: flex;
    /* justify-content: space-between; */
}
.total div{
    width: 33.3333%;
    text-align: center;
}
.total div:not(:first-child){
    line-height: 50px;
}
.total .total-price{
    display: flex;
    flex-direction: column;
    color: #999999;
    font-size: 14px;
}
.total div:nth-child(2){
    background: #F4F4F4;
}
.total div:last-child{
    background: #FF6700;
    color: #fff;
}
.total-price b{
    color:#FF6700;
    font-size: 20px;
}
</style>
