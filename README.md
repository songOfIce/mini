#安装依赖
npm install
#运行项目
npm run serve

#开发中遇到的问题
1.如何监听本页面地址栏url,和上一页面url
    解决: 通过$route(to,from){
            to.path     //当前url
            from.path   //跳转过来的url
            }
2.如何在页面跳转后控制相应的样式
    解决: 通过computed(计算后的属性) 来控制
3.如何通过滚轮控制页面的显示
    解决: window.onscroll = function(){
        document.documentElement.scrollTop
    }