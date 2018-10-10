<template>
        <div class="app-footer">
            <div @click="active(i,item.img1,item.img2)" class="app-footer-item" v-for="(item,i) in list" :key="i">
                <img  :src="item.img1">
                <p>{{item.title}}</p>
            </div>
        </div>
</template>

<script>
import $ from 'jquery'
export default {
    data(){
        return {
            list:[
                {title: "首页",img1: "../../img/index.png",img2: "../../img/index1.png"},
                {title: "分类",img1: "../../img/class.png",img2: "../../img/class1.png"},
                {title: "购物车",img1: "../../img/car.png",img2: "../../img/car1.png"},
                {title: "我的",img1: "../../img/user.png",img2: "../../img/user1.png"},
            ]
        }
    },
    methods:{
        active(i,img1,img2){
            var divs = $(".app-footer>.app-footer-item");
            for(var j=0;j<divs.length;j++){
                var imgs = $(divs[j])[0].children[0];
                var ps = $(divs[j])[0].children[1];
                $(imgs).attr("src",this.list[j].img1)
                $(ps).removeClass("active");
            }
            var p = $(divs[i].children[1]);
            var img = $(divs[i].children[0]);
            p.addClass("active");
            img.attr("src",img2); 
        }
    },
    mounted(){
        var divchild = $($(".app-footer")[0].children[0].children);
        $(divchild[0]).attr("src",this.list[0].img2)
        $(divchild[1]).addClass("active");
    }
}
</script>

<style scoped>
.app-footer{
    display: flex;
    justify-content: space-around;
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background: #fff;
    padding: 5px;
}
.app-footer img{
    width: 23px;
    height: 23px;
}
.app-footer p{
    margin: 0;

}
.app-footer-item{
    text-align: center;
}
.active{
    color: #F56D02;
}
</style>
