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
                <p class="detail-title">{{info.title}}</h3>
                <p>
                    <span class="detail-label" v-for="(l,i) in label" :key="i">「{{l.label}}」</span>
                    <span class="detail-subtitle"> {{info.subtitle}} </span></p>
                <p class="detail-label detail-price">¥ {{info.price}}</p>
            </div>
            <div class="detail-icon">
                <div class="icon-item" v-for="(item,i) in 6" :key="i">
                    <img :src="icon.img" alt="">
                    <span class="icon-font">超大屏</span>
                    <span class="icon-font">6.26英寸</span>
                </div>
            </div>
            <div>
                <div class="serve serve-item">
                    <div>
                        <span>已选</span>
                    </div>
                    <div>
                        <span>小米8 青春版 4GB+64GB 深空灰 x 1</span>
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
                <div class="serve">
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
        <div class="cart">加入购物车</div>
    </div>
</template>

<script>
export default {
    name: "Detail",
    data() {
        return {
            info: [],
            img: [],
            label: [],
            icon: [],
        }
    },
    methods: {
        getData() {
            this.$http.get('http://localhost:5050/goods/detail')
                .then(res =>{
                    console.log(res);
                    this.info = res.data.detail[0]
                    console.log(this.info);
                    this.img = res.data.img;
                    this.label = res.data.label;
                    this.icon = res.data.icon[0];
                })
        }
    },
    created() {
        this.getData();
    }
}
</script>

<style scoped>
.detail-img{
    position: relative;
    height: 412px;
}
.mint-swipe{
    width: auto;
    height: 100%;
}
.detail-img img{
    /* display: block;
    width: auto;
    height: 100%; */
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
    display: flex;
    
}
.icon-item{
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 80px;
    height: 100px;
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
    /* vertical-align: middle; */
}
.serve-item div span:first-child{
    margin-right: 20px;    
}
</style>
