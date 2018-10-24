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
                <li @click="active(i)" v-for="(item,i) in side" :key="i">
                    <a :class="i==0?'active':''" :href="'#m'+i">{{item}}</a>
                </li>
            </ul>
        </div>
        <div class="content-right">
            <div class="content-info" v-for="(t,index) in box" :key="index">
                <div class="content-anchor"><a :name="'m'+index" class="anchor"><img :src="t.img" alt=""></a></div>
                <p class="content-title"><span>-- </span> {{t.title}} <span> --</span></p>
                <div class="content-item">
                    <ul>
                        <li v-for="(item,i) in page" :key="i">
                            <router-link to="javascript:;">
                                <div>
                                    <img :src="item.img">
                                </div>
                                <p class="content-item-subtitle">{{item.subtitle}}</p>
                            </router-link>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <a name="div" style="padding-bottom:56px"></a>
    </div>
    <Footer />
  </div>
</template>

<script>
import Content from '../components/class/Content.vue'
import Footer from '../components/footer.vue'
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
        active(i) {
            // e.preventDefault();
            var a = document.querySelectorAll(".sidebar>ul>li>a");
            for(let i = 0;i<a.length;i++){
                a[i].className = "";
            }
            a[i].className = "active";
        }
    },
    created () {
        this.getData();
    },
    mounted() {
        window.onscroll = function(){
            var t = document.documentElement.scrollTop;
            // console.log(t)
            if(t>1000){
                var a = document.querySelectorAll(".sidebar>ul>li>a");
                // console.log(a[a.length-1])
                // a[10].scrollIntoView(false);
            }
        }
    },
    components: {
        Footer
    }
}
</script>

<style scoped>
/* 激活的状态 start */
.sidebar ul li .active{
    font-size: 18px;
    color: #f56d03;
}
/* end */
.fenlei{
    position: relative;
    background: #fff;
}

.mintui{
    font-size: 30px !important;
}
.sidebar{
    position: fixed;
    top: 50px;
    left: 0;
    bottom: 65px;
    width: 20%;
    border-right: 1px solid #F1F1F1;
    overflow: hidden;
}

.sidebar ul{
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    width: 110%;     
    list-style: none;
    padding: 0;
    margin:0;
    overflow-y: auto;
}
.sidebar ul li{
    padding: 20px 0;
    text-align: center;
    font-size: 16px;
}
.sidebar ul li a{
    color: #3C3C3C;
}
/* 内容 */
.content-right{
    width: 100%;
    padding: 65px 10px 65px 23%;
}
.content-right a{
    font-size: 14px;
}
.content-info{
    text-align: center;
    
}
.content-info a.anchor{
    display: block;
    height: auto;
    border-top: 50px solid transparent;
    margin-top: -50px;
}
.content-anchor{
    margin-bottom: 30px;
}
.content-title{
    padding-bottom: 20px;
    font-size: 18px;
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
.content-item-subtitle{
    padding: 10px 0;
}
.content-info img{
    width: 100%;
}
</style>

