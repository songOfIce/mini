<template>
    <div class="nav">
       <ul>
           <li v-for="(item,i) in list" @click="active(i)" :key="i"><router-link to="">{{item}}</router-link></li>
       </ul>
    </div>
</template>

<script>
import $ from 'jquery'
export default {
    name: "Nav",
    data(){
        return {
            list: ["推荐","手机","电视","智能","笔记本","家电","^"]
        }
    },
    methods:{
        active(i){
            var lis = $(".nav ul li");
            for(var li of lis){
                li.className = "";
                li.children[0].className = "";
            }
            lis[i].className = "li-active";
            lis[i].children[0].className = "active-link";
        }
    },
    mounted(){
        var liFirst = $(".nav ul li")[0];
        liFirst.className = "li-active";
        liFirst.children[0].className = "active-link";
    }
}
</script>

<style scoped>


.nav ul{    
    list-style: none;
    display: flex;
    justify-content: space-around;
    flex-wrap: nowrap;
    overflow-x: hidden;
    padding: 0;
    margin: 10px 0;
}
.nav ul li{
    font-size: 16px;
    padding-bottom: 5px;
}
.nav>ul>li a{
    color: #747474;
    
}
.li-active{
    border-bottom: 2px solid #ff6b00;
}
#app .active-link{
    color: #ff6b00;
}
</style>
