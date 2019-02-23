//导入模块
const mysql=require('mysql')
//创建连接池并导出
module.exports = mysql.createPool({
    host:"127.0.0.1",
    user:"root",
    password:"",
    database:"jeep",
    port:3306,
    connectionLimit:20
  });

