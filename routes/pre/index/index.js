//导入模块
const express=require('express')
const pool=require('../../../pool/pool')

//创建路由器
var index=express.Router()


//路由中间件
//拦截所有路由
index.use((req,res,next)=>{
   //console.log('拦截所有路由')
    next()
})
//拦截指定路由
index.use('/nav',(req,res,next)=>{
    req.sql=`select * from jeep_nav`;
    next()
})


//路由
//get路由
//获取导航栏数据
index.get('/nav',(req,res)=>{
    pool.query(req.sql,[],(err,result)=>{
        res.send(result)
    })
})

//post路由


//导出路由器
module.exports=index

