<template>
    <div class="box">
        <p>zhieshiefpa</p>
        <a href="">这是按标签</a>
    </div>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
    $red : red;
    .box{
        background: $red;
        p{
            width: 50%;
            background: green;
        }

    }
    a{
        color: black;
        $color: yellow;
        &:hover{
            color: $color;
        }
    }
</style>
