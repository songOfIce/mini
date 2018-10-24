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
            list: ["推荐","手机","电视","智能","笔记本","家电"],
            router: ['commend','phone','tv','smart','laptop','products']
        }
    },
    methods:{
        active(i){
            this.$router.push("/home/"+this.router[i]);
            var lis = this.$(".nav ul li");
            for(var li of lis){
                li.className = "";
            }
            lis[i].className = "li-active";
        }
    },
    mounted(){
        var liFirst = this.$(".nav ul li")[0];
        liFirst.className = "li-active";
    }
}
</script>

<style scoped>
.nav{
    background: #F2F2F2;
}

.nav ul{    
    list-style: none;
    display: flex;
    justify-content: space-around;
    flex-wrap: nowrap;
    overflow-x: hidden;
    padding: 5px 0;
    margin: 0;
}
.nav ul li{
    font-size: 14px;
    padding-bottom: 5px;
    color: #747474;
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
