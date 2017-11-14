# Yii2 RESTful API Template
Yii2 RESTful API Template 是用来配合《WeixiStyle Yii2 RESTful API 开发》视频教程进行讲解的例子, 视频教程详见http://www.weixistyle.com.

## 安装
每一章的源码放到各自目录中，每章有2-3个文件不等：

#### apitpl.zip
后端代码，解压到WWWRoot即可。
#### apitpl client.zip
API客户端，微信小程序代码，解压后，用微信开发者工具打开。
#### apitpldb.sql
数据库文件，其中第1-6章都是共用一个，都用chapter1目录中apitpldb.sql文件，第7章的文件中增加了权限分配的4张表，第8章的文件给adminuser表增加了2个用于速率限制的字段。
#### httpd.conf
WWW服务器配置文件，如果是apache服务器，可以参照这个文件，其他服务器参考其配置手册。

## 登录
后台入口：http://admin.apitpl.dev

用户名：weixi

密码：123456
