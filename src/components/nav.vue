<template>
    <div class="nav">
       <ul>
           <li v-for="(item,i) in list" :key="i">
               <router-link :to="'http://localhost:5050/home/'+router[i]"> {{item}}</router-link>
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
a{
    display: inline-block;
    padding-bottom: 5px;
    font-size: 14px;
    color: #747474;
}
.nav a.router-link-active{
        color: #f56d03;
    border-bottom: 2px solid #ff6b00;
    }
</style>
