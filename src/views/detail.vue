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
                        <span>{{info.opt}}</span>
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
                <router-link to="/home/commend">
                <div to="/home/commend" target="div"> 
                    <img src="/img/index.png" alt=""> 
                    <p class="cart-title">首页</p>
                </div>
                </router-link>
                <router-link to="/car">
                <div class="car-badge"> 
                    <img src="/img/car.png" alt=""> 
                    <p class="cart-title">购物车</p>
                </div>
                </router-link>
            </div>
            <div class="cart-add" @click="add()">加入购物车</div>
        </div>
        
        <div class="goback" @click="goback()">
            <img src="/img/goback.png" alt="">
        </div>
    </div>
</template>

<script>
import goTop from "../components/sub/goTop.vue";
import { Toast } from "mint-ui";
import { MessageBox } from "mint-ui";
export default {
    name: "Detail",
    data() {
        return {
        info: [],
        img: [],
        icon: [],
        pid: this.$route.params.pid,
        uid: sessionStorage["uid"],
        };
    },
    methods: {
        getData() {
        this.$http
            .get("/home/detail?pid=" + this.pid)
            .then(res => {
            this.img = res.data.img;
            this.info = res.data.info[0];
            this.icon = res.data.icon;
            });
        },
        goback() {
        history.go(-1);
        },
        add() {
        if (this.uid == undefined) {
            MessageBox({
                title: "提示",
                message: "当前未登录,是否去登陆",
                showCancelButton: true
            }).then(action => {
            if (action == 'confirm') {
                this.$router.push('/login')
            }else return;
            });
        }else{
            this.$http.post("/user/add",`pid=${this.pid}&uid=${this.uid}&title=${this.info.opt.slice(0,-3)}&price=${this.info.price}&img=${this.img[0].img}`).then(res => {
                if(res.data.code) Toast({message: '添加成功',iconClass: 'mint-toast-icon mintui mintui-success',duration: 1000});;
            });
        }
        }
    },
    created() {
        this.getData();
    },
    components: {
        goTop
    }
};
</script>

<style scoped>
.detail {
  position: relative;
}
.detail-img {
  position: relative;
  height: 412px;
}
.mint-swipe {
  width: auto;
  height: 100%;
}
.detail-goods {
  padding: 15px;
}
.detail-title {
  font-size: 23px;
  padding-top: 20px;
  padding-left: 20px;
}
.detail-label,
.detail-subtitle {
  font-size: 14px;
  color: #757575;
}
.detail-label {
  color: #f56d03;
}
.detail-price {
  font-size: 25px;
  padding: 15px 0;
}
.detail-icon {
  position: relative;
  height: 80px;
  margin: 0 -15px;
  padding: 0;
  overflow-x: auto;
}
.detail-container {
  position: absolute;
  left: 0;
  display: flex;
  flex-wrap: nowrap;
  height: 80px;
}
.icon-item {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 80px;
  height: 80px;
}
.icon-item img {
  width: auto;
  height: 1.5rem;
}
.icon-font {
  font-size: 12px;
}
.serve {
  display: flex;
  justify-content: flex-start;
  font-size: 14px;
  color: #737373;
  padding: 10px;
  border: 1px solid #ececec;
  border-radius: 8px;
  margin-bottom: 10px;
}
.serve img {
  width: auto;
  height: 10px;
  margin: 0 5px 0 10px;
}
.serve-item div span:first-child {
  margin-right: 20px;
}
.serve-promise {
  font-size: 12px;
}
/* 加入购物车 */
.cart,
.cart-link {
  display: flex;
  justify-content: space-between;
}
.cart {
  position: fixed;
  left: 5%;
  right: 5%;
  bottom: 10px;
  height: 55px;
  padding: 5px 25px;
  border: 1px solid #e5e5e5;
  border-radius: 10px;
  box-shadow: 0 2px 4px -1px rgba(0, 0, 0, 0.2), 0 4px 5px rgba(0, 0, 0, 0.14),
    0 1px 10px rgba(0, 0, 0, 0.12);
  background-color: hsla(0, 0%, 100%, 0.96) !important;
}
.cart-link {
  width: 30%;
  text-align: center;
}
.cart-title {
  font-size: 12px;
}
.cart-link img {
  width: auto;
  height: 25px;
}
.cart-add {
  width: 150px;
  height: 40px;
  line-height: 40px;
  text-align: center;
  padding: 0 10px;
  background: #ff6700;
  color: white;
  border-radius: 20px;
}
/* 模态框success图片类 */
.icon{
    width: 20px;
    height: 20px;
    background: red;
    border: 1px solid green;
}
.icon::before{
    content: "✔";
    font-size: 20px;
    color: #fff;
}
/* 后退 */
.goback {
  position: absolute;
  top: 1rem;
  left: 1rem;
}
/* 徽章 */
.car-badge{
    position: relative;
}
.car-badge .mint-badge{
    position: absolute;
    top:0;
    right: -8px;
    font-size: 8px;
    padding: 1px 7px;
}
</style>
