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
                <h3 class="detail-title">{{info.title}}</h3>
                <p>
                    <span class="detail-label" v-for="(l,i) in label" :key="i">「{{l.label}}」</span>
                    <span class="detail-subtitle"> {{info.subtitle}} </span></p>
                <p class="detail-label">¥ {{info.price}}</p>
            </div>
            <div class="detail-icon">
                <div class="icon-item" v-for="(item,i) in 6" :key="i">
                    <img :src="icon.img" alt="">
                    <span class="icon-font">超大屏</span>
                    <span class="icon-font">6.26英寸</span>
                </div>
            </div>
            <div>
                {{info.info}}
            </div>
        </div>
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
    font-size: 16px;
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
</style>
