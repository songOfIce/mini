//模拟数据 充当接口
const Mock = require('mockjs')
Mock.mock('/home/banner',{
    'banner|3': [{
        'img_url': "@image('300x200',#f56d02)"
    }]
})

Mock.mock('/home/icon',{
    'stu|5':[{
        'id|0-10000':0,
        'name': '@ctitle(2,10)',
        'img_url': `@image('300x200',#00c1de)`,
        'price|0-20.0-2': 1,
        'time': "@time"
    }]
});
Mock.setup({
    timeout: 0
})