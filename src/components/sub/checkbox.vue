<template>
    <div :class="{'checkbox':true,'choose':isC}" @click="toggle()"></div>
</template>

<script>
export default {
    name: "Check",
    data() {
        return {
            isC: true
        }
    },
    methods: {
        toggle() {
            this.isC = !this.isC;
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
