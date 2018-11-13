#xm

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Run your tests
```
npm run test
```

### Lints and fixes files
```
npm run lint
```
### 用到的依赖
```
vue-router,
vux,
node-sass
```
#开发中遇到的问题
1.如何监听本页面地址栏url,和上一页面url
    解决: 通过$route(to,from){
            to.path     //当前url
            from.path   //跳转过来的url
            }
```
2.如何在页面跳转后控制相应的样式
    解决: 通过computed(计算后的属性) 来控制
```
3.如何通过滚轮控制页面的显示
    解决: window.onscroll = function(){
        document.documentElement.scrollTop
    }
    或 wiodow.scrollY
```
4.eye(小眼睛): 
<svg width="100%" height="100%" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <path class="eye_outer" d="M0 8 C6 0,14 0,20 8, 14 16,6 16, 0 8 z"></path>
        <circle class="eye_inner" cx="10" cy="8" r="3"></circle>
    </svg>
```
5.路由跳转动画效果:
enter,enter-active,leave,leave-active并且在路由词典里加一个meta:{index: *}
```
6.通过vue点击事件 获取当前元素方法   handleEvenet(e){ e.currentTarget}
```
7.mint-ui 提供的字体: 
提供的icon的class标签
    <i class="mint-toast-icon mintui mintui-more"></i> 
    <i class="mint-toast-icon mintui mintui-back"></i> 
    <i class="mint-toast-icon mintui mintui-search"></i> 
    <i class="mint-toast-icon mintui mintui-field-error"></i> 
    <i class="mint-toast-icon mintui mintui-field-warning"></i> 
    <i class="mint-toast-icon mintui mintui-success"></i> 
    <i class="mint-toast-icon mintui mintui-field-success"></i>
```
8.-webkit- a标签点击是背景蓝色高亮取消: 
        -webkit-tap-highlight-color:transparent;
```
9.使用keep-alive来缓存页面,不必重新渲染DOM
    <keep-alive include="需要缓存的组件名(使用正则)"></keep-alive>
    解决: 防止重复发送Ajax
```
10. 如果使用history模式
    问题：打包后在服务器访问，刷新后找不到页面
    解决：1.注释掉 history
        2. 在nodeserver中添加 connect-history-api-fallback 中间件
```