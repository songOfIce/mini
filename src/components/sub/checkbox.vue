<template>
    <div :class="{'checkbox':1,'choose':isbuy}" @click="toggle()"></div>
</template>

<script>
export default {
    name: "Check",
    data() {
        return {
            isC: this.data.isbuy
        }
    },
    props: ['data'],
    methods: {
        toggle() {
            this.isC = !this.isC;
            this.$http.get('/user/buy?isbuy='+this.isC+"&id="+this.data.id).then(res =>{
                if(res.data.code == -1)
                console.log(res)
            })
            this.$store.commit('isbuy',this.data.i)
        }
    },
    computed: {
        isbuy() {
            return this.data.isbuy
        }
    }
}
</script>

<style scoped>
    .checkbox{
        align-self: center;
        width: 20px;
        height: 20px;
        border: 1px solid #BFB9B9;
        border-radius: 50%;
    }
    .choose{
        background: #FF5722;
        position: relative;
    }
    .choose::before{
        content: "✔";
        color: #fff;
        font-size: 12px;
        position: absolute;
        top: 0;
        left: 4px;
    }
</style>
