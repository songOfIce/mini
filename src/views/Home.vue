<template>
  <div class="home">
    <header-box/>
    <nav-box/>
    <h1>这是首页</h1>
    <commend-box id="commend" />
    <phone-box id="phone" class="hide"/>
    <laptop-box id="laptop" class="hide" />
    <products-box id="products" class="hide" />
    <smart-box id="smart" class="hide" />
    <tv-box id="tv" class="hide" />
  </div>
</template>

<script>
import header from '../components/Header.vue'
import nav from '../components/Nav.vue'
import commend from '../components/home/Commend.vue'
import phone from '../components/home/Phone.vue'
import laptop from '../components/home/Laptop.vue'
import products from '../components/home/Products.vue'
import smart from '../components/home/Smart.vue'
import tv from '../components/home/Tv.vue'
export default {
    data(){
        return {
            name: null,
            list: ['commend','phone','tv','smart','laptop','products','more']
        }
    },
    components:{
        "header-box":header,
        "nav-box":nav,
        "commend-box":commend,
        "phone-box":phone,
        "laptop-box":laptop,
        "products-box":products,
        "smart-box":smart,
        "tv-box":tv,
    },
    watch:{
        $route(to,from){
            var str = to.fullPath.split("=")[1];
            var str1 = from.fullPath.split("=")[1];
            for(var i=0;i<this.list.length;i++){
                $(`#${this.list[i]}`).addClass("hide");
                if(str == this.list[i]){
                    this.name = `#${str}`;
                }else if(str == ""){
                    this.name = `#${str1}`;
                }
            }
            $(this.name).removeClass("hide");
        }
    }
}
</script>
<style scoped>
    .hide{
        display: none;
    }
</style>
