<template>
    <div class="sum">
        <mt-button @click="add(1)" type="default" :disabled="itemSub">-</mt-button>
        <mt-button class="num" disabled>{{item}}</mt-button>
        <mt-button @click="add(2)" type="default" :disabled="itemAdd">+</mt-button>
        <div class="delete" @click="del()"></div>
    </div>
</template>

<script>
export default {
    name: "Add",
    data() {
        return {
            item: 1,
        }
    },
    methods: {
        add(i) {
            if(i==1 && this.item > 1)
                this.item--
            if(i==2 && this.item < 10)
                this.item++
        },
        del() {
            
        }
    },
    computed: {
        itemSub() {
            if(this.item == 1)  return true;
        },
        itemAdd() {
            if(this.item == 10) return true;
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
    .delete{
        float: right;
        width: 30px;
        height: 30px;
        background: url(/img/rubbish.png) no-repeat center center;
    }
</style>
