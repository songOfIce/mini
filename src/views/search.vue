<template>
    <div class="search">
        <div class="search-header">
            <div>
                <div @click="goback()">
                    <img src="/img/back.png">
                </div>
            </div>
            <div class="search-input"><input v-model="keyword" type="text" placeholder="搜索商品名称"></div>
            <div>
                <div @click="search()">
                    <img src="/img/search.png">
                </div>
            </div>
        </div>
        <p class="search-title">热门搜索</p>
        <div class="search-hot">
            <img src="https://i8.mifile.cn/b2c-mimall-media/cdb658d89f780b5cb05a1c12c9a1ddb5.jpg?w=1080&h=300&bg=DB7635" alt="官网下架了">
        </div>
        <div class="search-commend" v-if="!list">
            <span >小米MIX3 首发</span><span>双十一狂欢</span>
        </div>
        <div>
            <router-link :to="'/detail/'+item.pid" v-for="(item,i) in list" :key="i">
            <p class="search-res">{{item.option.slice(0,-3)}}</p>
            </router-link>
        </div>
    </div>
</template>

<script>
export default {
    name: "Search",
    data() {
        return {
            keyword: "",
            list: []
        }
    },
    methods: {
        goback() { history.go(-1) },
        search() {
            if(!this.keyword) return 
            this.$http.get('http://localhost:5050/home/search?key='+this.keyword)
                .then(res =>{
                    console.log(res)
                    this.list = res.data;
                })
        }
    }
}
</script>

<style scoped>
.search-header{
    display: flex;
    justify-content: space-between;
    height: 50px;
    background:#F2F2F2;
    padding: 0 10px;
    align-items: center;
    color: #666666;
    z-index: 99;
}
.search-header img{
    width: auto;
    height: 25px;
}
.search-input{
    width: 70%;
    height: 60%;
}
.search-input input{
    width: 100%;
    height: 100%;
    border: none;
    padding-left: 10px;
    outline: none;
    border-radius: 3px;
}
.search-title{
    padding: 10px 15px;
    font-size: 14px;
}
.search-hot img{
    width: 100%;
}
.search-commend span{
    display: inline-block;
    /* width: 30%; */
    height: 30px;
    line-height: 30px;
    font-size: 14px;
    border: 1px solid #E4E4E4;
    background: #FFF9F8;
    margin-left: 10px;
    margin-top: 5px;
    padding: 0 10px;
}
.search-res{
    background: #F5F5F5;
    font-size: 16px;
    padding: 8px 20px;
}
</style>
