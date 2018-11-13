<template>
    <div class="sum">
        <mt-button @click="add(1)" type="default" :disabled="itemSub">-</mt-button>
        <mt-button class="num" disabled>{{single}}</mt-button>
        <mt-button @click="add(2)" type="default" :disabled="itemAdd">+</mt-button>  
    </div>
</template>

<script>
export default {
    name: "Add",
    data() {
        return {
            single: this.s,
        }
    },
    props: ["p",'s','i','isbuy'],
    methods: {
        add(i) {
            if(i==1 && this.single > 1){
                this.single--
                this.$store.commit('single',{'i':this.i,'s':this.single})
            }
            if(i==2 && this.single < 10){
                this.single++
                this.$store.commit('single',{'i':this.i,'s':this.single})
            }
            this.$http.get('/user/sum?single='+this.single+'&id='+this.p)
                .then(res =>{
                    if(res.data.code == -1) console.log(res.data.msg)
                })
            
        },
        
    },
    computed: {
        itemSub() {
            if(this.single == 1)  return true;
        },
        itemAdd() {
            if(this.single == 10) return true;
        }
    }
}
</script>

<style scoped>
    .sum{
        margin-top: 1rem;
    }
    .num{
        display: inline-block;
        width: 2rem;
        height: 30px;
        text-align: center;
        border-left: 0;
        border-right: 0;
        background: #fff !important;
    }
    .mint-button{
        width: auto;
        height: 30px;
        vertical-align: baseline;
        background: #F4F4F4;
    }
    
</style>
