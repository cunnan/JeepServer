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
    req.sql=`select * from j_nav`;
    next()
})


//路由
//get路由
//获取导航栏数据
index.get('/nav',(req,res)=>{
    pool.query(req.sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//获取轮播图数据
index.get('/banner',(req,res)=>{
    sql=`select * from j_banner`
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
// 获取导航列表数据
index.get('/navlist',(req,res)=>{
    var progress=0;
    var data={};
    sql=`select * from j_nav_list`;
    pool.query(sql,[],(err,result1)=>{
        if(err) throw err;
        data.navlist=result1;
        progress+=50;
        if(progress==100){
            res.send({
                code:1,
                data
            })
        }
    })
    sql=`select * from j_nav_function`;
    pool.query(sql,[],(err,result2)=>{
        if(err) throw err;
        data.navFunc=result2;
        progress+=50;
        if(progress==100){
            res.send({
                code:1,
                data
            })
        }
    })
})


//post路由
index.post('/nav2',(req,res)=>{
    res.send({
        num1:req.body.num1,
        num2:req.body.num2
    })
})

//导出路由器
module.exports=index

