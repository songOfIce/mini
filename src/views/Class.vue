<template>
  <div class="fenlei">
    <mt-header title="分类">
        <router-link to="/" slot="left">
            <img src="http://localhost:8085/img/back.png">
        </router-link>
        <mt-button slot="right">
            <img src="http://localhost:8085/img/search.png">
        </mt-button>
    </mt-header>
    <div class="content">
        <div class="sidebar">
            <ul>
                <li v-for="(item,i) in side" :key="i">{{item}}</li>
            </ul>
        </div>
        <div class="content-right">
            <div class="content-info" v-for="(t,index) in box" :key="index">
                <p><span>{{t.title}}</span></p>
                <div class="content-item">
                    <ul>
                        <li v-for="(item,i) in page" :key="i">
                            <div>
                                <img :src="item.img">
                            </div>
                            <p>{{item.subtitle}}</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
  </div>
</template>

<script>
import Content from '../components/class/Content.vue'
export default {
    name: "Class",
    data () {
        return {
            side: ["新品","手机","电视","电脑","家电","路由","出行","穿戴","智能","电源","健康","灯具","儿童","插线板","音频","箱包","生活","配件","家装","礼品","服务","米粉卡","零售店"], 
            box: [],
            page: []
        }
    },
    methods: {
        getData() {
            this.$http.get("http://localhost:8086/class")
                .then(res => {
                    // console.log(res)
                    this.box = res.data.content;
                    this.page = res.data.page;
                })
        },
        disable () {
            var side = document.querySelector(".sidebar");
            var h = document.querySelector(".sidebar ul li:last-child")
            console.log(h)
            
            side.onmousewheel = function(e){
                var y = e.clientY;
                console.log(y)
                // if(y<)
                console.log(e)
            }
        }
    },
    created () {
        this.getData();
       
    },
    mounted() {
         this.disable();
    }

}
</script>

<style scoped>
.fenlei{
    position: relative;
    background: #fff;
}
.mint-header{
    position: fixed;
    top: 0;
    height: 50px;
    width: 100%;
    font-size: 20px;
    background: #F2F2F2;
    color: #000;
    z-index: 10;
}
.mintui{
    font-size: 30px !important;
}
.content{
    display: flex;
    justify-content: space-between;
    padding-top: 50px;
}
.sidebar{
    position: fixed;
    top: 50px;
    left: 0;
    bottom: 52px;
    /* overflow-y: hidden; */
    /* height: 800px; */
}

.sidebar ul{
    position: absolute;
    top: 50px;
    width: 20%;
    list-style: none;
    padding: 0;
    margin:0;
    /* overflow-y: auto; */
}
.sidebar ul li{
    padding: 20px 0;
    text-align: center;
    font-size: 16px;
}
/* 内容 */
.content-right{
        width: 100%;
        padding: 20px 0 0 20%;
    }
    .content-info{
        text-align: center;
    }
    .content-item ul{
        list-style: none;
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
        padding: 0;
    }
    .content-item ul li{
        width: 30%;
    }
    .content-item ul li img{
        width: 100%;
    }
</style>

