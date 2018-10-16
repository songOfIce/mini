//模拟数据 充当接口
const Mock = require('mockjs');
Mock.mock('/home/banner',{
    'banner|3': [{
        'img_url': "@image('300x200',@color)"
    }]
})

Mock.mock('/api/data',{
    'stu|5':[{
        'id|0-10000':0,
        'name': '@ctitle(2,10)',
        'img_url': `@image('300x200',#00c1de)`,
        'price|0-20.0-2': 1,
        'time': "@time"
    }]
});
Mock.mock('/home/icon',{
    'icon|5':[{
        'id|+1': 1,
        'img': "@image('82x87',@color())",
    }],
    'imglist|10': [{
        'id|+1': 1,
        'title': '@ctitle(3,8)',
        'subtitle': '@ctitle(8,12)',
        'img': "@image('206x145',#sdf231)",
        'imgbig': "@image('400x292',#00c1sdw)",
        'price|900-3500': 901,
    }]
})
Mock.setup({
    timeout: 0
})