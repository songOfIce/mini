<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
export default {
  methods: {
    firstLogin () {
      if(sessionStorage["first"]) return  
      var url = 'http://localhost:5050/user/login';
      this.$http.post(url,`uid=15962677205&upwd=123456`).then(res => {
        if(res.data.code == -1)   console.log(res.data.msg)
        else {
            sessionStorage["uid"] = res.data.msg[0].uid;
            sessionStorage['uname'] = res.data.msg[0].uname;
            sessionStorage['img'] = res.data.msg[0].img
            sessionStorage['first'] = 'no'
        }  
      })
    }
  },
  mounted() {
    this.firstLogin();
  }
}
</script>

<style>
#app {
  max-width: 730px;
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
  margin: 0 auto;
  background: #fff;
}

</style>
