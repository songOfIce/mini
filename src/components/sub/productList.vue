<template>
    <div class="productList">
        <div class="select">
            <checkbox />
            <img src="//i1.mifile.cn/a1/pms_1537324041.13069123!180x1800.jpg" alt="">
        </div>
        <div class="info">
            <p>小米8 青春 全网通版 6GB内存 深空灰 128GB</p>
            <div class="price">售价: ¥ 1200 元</div>
            <add />
        </div>
    </div>
</template>

<script lang="ts">
import Vue from 'vue'
import checkbox from './checkbox.vue'
import add from './add.vue'
export default Vue.extend({
    name: "ProductList",
    data() {
        return {
            isC: false
        }
    },
    components: {
        checkbox,
        add
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
    
    .select img{
        width: auto;
        height: 100%;
        vertical-align: middle;
    }
    .price{
        font-size: .6rem;
        color: #B1B1B1;
    }
   
</style>
