<template>
    <div class="nav">
       <ul>
           <li v-for="(item,i) in list"  @click="active(i)" :key="i">{{item}}
            </li>
       </ul>
    </div>
</template>

<script>
export default {
    data(){
        return {
            list: ["推荐","手机","电视","智能","笔记本","家电","^"],
            router: ['commend','phone','tv','smart','laptop','products','']
        }
    },
    methods:{
        active(i){
            this.$router.push("/home?name="+this.router[i]);
            var lis = $(".nav ul li");
            for(var li of lis){
                li.className = "";
            }
            lis[i].className = "li-active";
        }
    },
    mounted(){
        var liFirst = $(".nav ul li")[0];
        liFirst.className = "li-active";
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
.link{
    color: #747474;
    
}
.li-active{
    color: #ff6b00;
    border-bottom: 2px solid #ff6b00;
}
#app .active-link{
    color: #ff6b00 ;
}
</style>
