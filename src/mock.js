//模拟数据 充当接口
const Mock = require('mockjs');
Mock.mock('http://localhost:5050/goods/detail', {
    'detail': [{
        'id|+1': 1,
        'title': '小米8 青春版',
        'subtitle': '潮流镜面渐变色 / 2400万自拍旗舰 / 7.5mm超薄机身 / 6.26"小刘海全面屏 / AI裸妆美颜 / 骁龙660AIE处理器',
        'price|1000-5000': 1000,
        'info': "@ctitle(6,8)",
        'choose': '@ctitle(10)',
        'serveimg': "@image('34x34',@color)"
    }],
    'img|3': [{
        'img': "@image('1080x1188',@color)",
    }],
    'label|3': [{
        'label': '@ctitle(6,8)',
    }],
    'icon': [{
        'img': "@image('48x48',@color)",
        'icontitle': '@ctitle(2,4)',
        'icondetail': '@ctitle(6,8)',
    }]
})
// Mock.mock('/home/banner',{
//     'banner|3': [{
//         'img_url': "@image('720x360',@color)"
//     }]
// })

// Mock.mock('/api/data',{
//     'stu|5':[{
//         'id|0-10000':0,
//         'name': '@ctitle(2,10)',
//         'img_url': `@image('300x200',#00c1de)`,
//         'price|0-20.0-2': 1,
//         'time': "@time"
//     }]
// });
// Mock.mock('http://localhost:8080/home/commend',{
//     'icon|5':[{
//         'id|+1': 1,
//         'img': "@image('144x152',@color())",
//     }],
//     'imglist|10': [{
//         'id|+1': 1,
//         'title': '@ctitle(3,8)',
//         'subtitle': '@ctitle(8,12)',
//         'img': "@image('358x252',#sdf231)",
//         'imgbig': "@image('358x508',@color)",
//         'img': "@image('360x360',@color)",
//         'nowPrice|900-3500': 901,
//         // 'oldPrice':''
//     }],
//     'imgTvList|4': [{
//       'id|+1': 1,
//       'title': '@ctitle(3,8)',
//       'subtitle': '@ctitle(8,12)',
//       "img": "@image('360x360',@color)",
//       'nowPrice|900-3500': 901,
//     //   'oldPrice':''
//     }],
//     'imgStarList|6': [{
//       'id|+1': 1,
//       'title': '@ctitle(3,8)',
//       'subtitle': '@ctitle(8,12)',
//       "img": "@image('360x360',@color)",
//       'nowPrice|900-3500': 901,
//     //   'oldPrice':''
//     }]
// })
// // 首页手机页面数据
// Mock.mock("http://localhost:8086/home/img/phone",{
//     'banner|2': [{
//         'id|+1': 1,
//         'img': "@image(720x360,@color)"
//     }],
//     'imglist|18': [{
//         "id|+1": 1,
//         "img": "@image('360x360',@color)",
//         'title': '@ctitle(3,8)',
//         'subtitle': '@ctitle(8,12)',
//         'nowPrice|900-3500': 900,
//         'oldPrice|1400-4500': 1400
//     }]
// })
// //首页TV的数据
// Mock.mock("http://localhost:8086/home/img/tv",{
//     'imglist|18': [{
//         "id|+1": 1,
//         'imgbig': "@image('720x360',@color)",
//         "img": "@image('360x360',@color)",
//         'title': '@ctitle(3,8)',
//         'subtitle': '@ctitle(8,12)',
//         'nowPrice|900-3500': 900,
//         'oldPrice|1400-4500': 1400
//     }],
//     'cell|5':[{
//         'id|+1': 1,
//         'img': "@image('144x152',@color())",
//     }]
// })
// //首页智能的数据
// Mock.mock("http://localhost:8086/home/img/smart",{
//     'cell|5':[{
//         'id|+1': 1,
//         'img': "@image('144x152',@color())",
//     }],
//     'imglist|18': [{
//         "id|+1": 1,
//         'imgbig': "@image('720x360',@color)",
//         "img": "@image('360x360',@color)",
//         'title': '@ctitle(3,8)',
//         'subtitle': '@ctitle(8,12)',
//         'nowPrice|900-3500': 900,
//         'oldPrice|1400-4500': 1400
//     }]
// })
// //首页笔记本的数据
// Mock.mock("http://localhost:8086/home/img/laptop",{
//     'cell|5':[{
//         'id|+1': 1,
//         'img': "@image('144x152',@color())",
//     }],
//     'imglist|18': [{
//         "id|+1": 1,
//         'imgbig': "@image('720x360',@color)",
//         "img": "@image('360x360',@color)",
//         'title': '@ctitle(3,8)',
//         'subtitle': '@ctitle(8,12)',
//         'nowPrice|900-3500': 900,
//         'oldPrice|1400-4500': 1400
//     }]
// })
// //首页家电的数据
// Mock.mock("http://localhost:8086/home/img/products",{
//     'cell|5':[{
//         'id|+1': 1,
//         'img': "@image('144x152',@color())",
//     }],
//     'imglist|18': [{
//         "id|+1": 1,
//         'imgbig': "@image('720x360',@color)",
//         "img": "@image('360x360',@color)",
//         'title': '@ctitle(3,8)',
//         'subtitle': '@ctitle(8,12)',
//         'nowPrice|900-3500': 900,
//         'oldPrice|1400-4500': 1400
//     }]
// })
// //分类页数据
// Mock.mock("http://localhost:8086/class",{
//     'content|23': [{
//         'id|+1': 1,
//         'title': '@ctitle(3)',
//         'img': "@image(500x200,@color)"
//     }],
//     'page|6': [{
//         'id|+1': 1,
//         'subtitle': '@ctitle(6)',
//         'img': "@image(120x120,@color)"
//     }]
// })
Mock.setup({
    timeout: 0
})