# blazor-antd-web
基于Blazor和Antd的顺意服装公司定制开发的企业后台管理系统

## 运行

### 链接数据库

首先将WebBlazor.sql中的数据导入到mysql中

然后syserver/Server/appsettings.json中编辑数据库连接配置

### 发布项目

观看pictures/部署方案.mp4录屏，将项目发布并部署

### 项目效果

![img.png](pictures/img_11.png)

![img.png](pictures/img_12.png)

## 源码介绍
介绍：文件内包含数据库sql(源码采用Mysql数据库) 和blazor web的工程文件。
登入用户名：admin  
登入密码：admin
该工程文件可打开页面如下：  
基础列：规格、颜色、工种列表
生产制单列：生产制单
（主要功能区就是生产制单页面，该页面包含色码数量、裁床填数两个页面）

### 这是服务端渲染模式的Blazor项目

Blazor可以是Blazor WebAssembly（前端代码运行在浏览器中）或Blazor Server（前端在服务器上运行并通过SignalR与客户端通信）。这个项目是后者SSR。
客户端：syserver.Client.proj
服务端：syserver.Server.proj
前端页面在客户端Page的位置下存放  

### 源码

![img_1.png](pictures/img_1.png)

Page 页面内编写页面样式（html + style）及逻辑代码（类似于js）,以Guige页面为例

![img.png](pictures/img.png)

1 代表路由
2 表示样式css
3 表示html
4 引入包

页面中Code内包含的代码是类似与JS的逻辑代码，主要为向服务端发送请求。

![img_2.png](pictures/img_2.png)

# 服务端
Controllers 文件内主要是制作操作数据库方法的接口
Model 定义实现处理数据库方法

![img_3.png](pictures/img_3.png)

# 运行注意事项：
**运行项目时，请在工程文件项目的sys****erver.Server****项目下的a****ppsettings.json****中修改** **DefaultConnection** **属性的值为自己的数据库名称和密码**

![img_4.png](pictures/img_4.png)

**修改属性示意图：**

![img_5.png](pictures/img_5.png)

# **Blazor Server程序的发布：**
1、 选择项目，右键点击发布  

![img_6.png](pictures/img_6.png)

2、 在发布页面点击“新建配置文件“  

![img_7.png](pictures/img_7.png)

3、 根据自己的需求选择发布方式，简单一些的选择文件夹，然后选择下一步  

![img_8.png](pictures/img_8.png)

4、 选择要发布的文件夹位置，（可以点击浏览，填写要发布的位置,完成后点击下一步）  

![img_9.png](pictures/img_9.png)

5、 点击完成后 为显示新添加的文件，之后点击“发布“按钮，文件生成后即可在项目中查看

![img_10.png](pictures/img_10.png)
