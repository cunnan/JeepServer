//导入模块
const express=require('express')
const cors=require('cors')
const session=require('express-session')
const bodyParser=require('body-parser')


//导入路由器
const indexRouter=require('./routes/pre/index/index')


//创建服务器
var Jeep=express()
Jeep.listen('5050',()=>{
    console.log('Jeep:5050监听中...')
})


//配置跨域
Jeep.use(cors({
    origin:["http://127.0.0.1:3000",
    "http://localhost:3000"],
    credentials:true
  }));
  

//配置session
Jeep.use(session({
    secret:'JeepServer',//安全字符串
    resave:false,//每次请求是否更新数据
    saveUninitialized:true,//初始化时保存数据
    cookie:{
      maxAge:1000*60*60*8//存活时间
    }
}));


//配置post请求数据解析
Jeep.use(bodyParser.urlencoded({
    extended:false
  }));


//配置静态资源路径
Jeep.use(express.static('public'))


//配置路由器
Jeep.use('/index',indexRouter)
