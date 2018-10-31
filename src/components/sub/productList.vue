<template>
    <div class="productList">
        <div class="select">
            <div :class="{'checkbox':true,'choose':isC}" @click="toggle()"></div>
            <img src="//i1.mifile.cn/a1/pms_1537324041.13069123!180x1800.jpg" alt="">
        </div>
        <div class="info">
            <p>小米8 青春 全网通版 6GB内存 深空灰 128GB</p>
            <div class="price">售价: $ 1200</div>
            <div><mt-button type="default">-</mt-button><span class="num">1</span><mt-button type="default">+</mt-button></div>
        </div>
    </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
    name: "ProductList",
    data() {
        return {
            isC: false
        }
    },
    methods: {
        toggle() {
            this.isC = !this.isC;
        }
    }
})
</script>
<style lang="scss" scoped>
.productList{
    display: flex;
    font-size: .9rem;
    padding: .7rem 0;
}
    .select{
        width: 40%;
        height: 100px;
        padding: 0 .5rem;
    }
    .checkbox{
        display: inline-block;
        width: 20px;
        height: 20px;
        border: 1px solid #BFB9B9;
        border-radius: 50%;
    }
    .choose{
        background: #FF5722;
        position: relative;
    }
    .choose::before{
        content: "✔";
        color: #fff;
        font-size: 12px;
        position: absolute;
        top: 0;
        left: 4px;
    }
    .select img{
        width: auto;
        height: 100%;
        vertical-align: middle;
    }
    .price{
        font-size: .6rem;
        color: #B1B1B1;
    }
    .num{
        display: inline-block;
        width: 2rem;
        height: 30px;
        text-align: center;
        border-top: 1px solid #BFB9B9;
        border-bottom: 1px solid #BFB9B9;
    }
    .mint-button{
        width: auto;
        height: 30px;
        vertical-align: baseline;
    }
</style>
