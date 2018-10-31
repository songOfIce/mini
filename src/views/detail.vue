<template>
    <div class="detail">
        <div class="detail-img">
            <mt-swipe :auto="0">
                <mt-swipe-item v-for="(item,i) in img" :key="i" v-if="item.img">
                    <img :src="item.img" alt="">
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <div class="detail-goods">
            <div class="detail-info">
                <p class="detail-title">{{info.title}}</p>
                <p>
                    <span class="detail-label">{{info.label}}</span>
                    <span class="detail-subtitle"> {{info.subtitle}} </span></p>
                <p class="detail-label detail-price">¥ {{info.price}}</p>
            </div>
            <div class="detail-icon" v-if="icon[0]">
                <div class="detail-container">
                    <div class="icon-item" v-for="(item,i) in icon" :key="i">
                        <img :src="item.icon" alt="">
                        <span class="icon-font">{{item.icontitle}}</span>
                        <span class="icon-font">{{item.icondetail}}</span>
                    </div>
                </div>
            </div>
            <div>
                <div class="serve serve-item">
                    <div>
                        <span>已选</span>
                    </div>
                    <div>
                        <span>{{info.option}}</span>
                    </div>
                </div>
                <div class="serve serve-item">
                    <div>
                        <span>送至</span>
                    </div>
                    <div>
                        <span>北京市 东城区</span>
                    </div>
                    <div>
                        <span> 有现货</span>
                    </div>
                </div>
                <div class="serve serve-promise">
                    <div>
                        <img src="/img/dui.png" alt="">
                        <span>7天无理由退货</span>
                    </div>
                    <div>
                        <img src="/img/dui.png" alt="">
                        <span>15天质量问题换货</span>
                    </div>
                    <div>
                        <img src="/img/dui.png" alt="">
                        <span>365天保修</span>
                    </div>
                </div>
            </div>
        </div>
        <goTop />
        <div class="cart">
            <div class="cart-link">
                <div> 
                    <img src="/img/index.png" alt=""> 
                    <p>首页</p>
                </div>
                <div> 
                    <img src="/img/car.png" alt=""> 
                    <p>购物车</p>
                </div>
            </div>
            <div class="cart-add" @click="add()">加入购物车</div>
        </div>
        <div class="goback" @click="goback()">
            <img src="/img/goback.png" alt="">
        </div>
    </div>
</template>

<script>
import goTop from '../components/sub/goTop.vue'
import { Toast } from 'mint-ui';
export default {
    name: "Detail",
    data() {
        return {
            info: [],
            img: [],
            icon: [],
            pid: this.$route.params.pid
        }
    },
    methods: {
        getData() {
            this.$http.get("http://localhost:5050/detail?pid="+this.pid)
                .then(res =>{
                    this.img = res.data.img;
                    this.info =res.data.info[0];
                    this.icon = res.data.icon;
                })
        },
        goback() {
            history.go(-1);
        },
        add() {
            Toast("添加成功");
            this.$store.commit("addProduct",111)
        }
    },
    created() {
        this.getData();
    },
    components: {
        goTop
    }
}
</script>

<style scoped>
.detail{
    position: relative;
}
.detail-img{
    position: relative;
    height: 412px;
}
.mint-swipe{
    width: auto;
    height: 100%;
}
.detail-goods{
    padding: 15px;
}
.detail-title{
    font-size: 25px;
    padding-top: 20px;
    padding-left: 20px;
}
.detail-label,
.detail-subtitle{
    font-size: 14px;
}
.detail-label{
    color: #f56d03;
}
.detail-price{
    font-size: 25px;
    padding: 15px 0;
}
.detail-icon{
    position: relative;
    height: 80px;
    margin: 0 -15px;
    padding: 0;
    overflow-x: auto;
}
.detail-container{
    position: absolute;
    left: 0;
    display: flex;
    flex-wrap: nowrap;
    height: 80px;
}
.icon-item{
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 80px;
    height: 80px;
}
.icon-item img{
    width: auto;
    height: 1.5rem;
}
.icon-font{
    font-size: 12px;
}
.serve{
    display: flex;
    justify-content: flex-start;
    font-size: 14px;
    color: #737373;
    padding: 10px; 
    border: 1px solid #ECECEC;
    border-radius: 8px;
    margin-bottom: 10px;
}
.serve img{
    width: auto;
    height: 10px;
    margin: 0 5px 0 10px;
}
.serve-item div span:first-child{
    margin-right: 20px;    
}
.serve-promise{
    font-size: 12px;
}
/* 加入购物车 */
.cart,
.cart-link{
    display: flex;
    justify-content: space-between;
}
.cart{
    position: fixed;
    left: 5%;
    right: 5%;
    bottom: 10px;
    height: 55px;
    padding: 5px 25px ;
    border: 1px solid #E5E5E5;
    border-radius: 10px;
    box-shadow: 0 2px 4px -1px rgba(0,0,0,.2), 0 4px 5px rgba(0,0,0,.14), 0 1px 10px rgba(0,0,0,.12);
    background-color: hsla(0,0%,100%,.96)!important;
}
.cart-link{
    width: 30%;
    font-size: 14px;
    text-align: center;
}
.cart-link img{
    width: auto;
    height: 25px;
}
.cart-add{
    width: 150px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    padding: 0 10px;
    background: #FF6700;
    color: white;
    border-radius: 20px;
}
/* 后退 */
.goback{
    position: absolute;
    top: 1rem;
    left: 1rem;
}
</style>
