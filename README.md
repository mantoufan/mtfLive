# mtfLive（MTF直播导航）
将斗鱼、虎牙、触手、YY、龙珠、战旗、章鱼、电视直播按分类/关键词聚合，用户选择分类，可以观看到全网该关键词下正在直播的内容。
# 特点
- PC站和H5移动站自适应
- 自动缓存，避免频繁抓取数据
- 自定义抓取规则，同时支持HTML和JSON
- 自带全网直播网站多个热门分类和游戏的抓取规则
# 需求环境
PHP 5.4+ 以上，推荐 PHP 7.0 +
# 安装
1. 下载源码：
![Download ZIP](https://files.catbox.moe/yi5iy2.png)  
或者：
```
git clone https://github.com/mhjlw/mtfLive.git
```
2 上传到根目录，绑定域名即可
# 配置
打开 index.php ，所有配置都在变量 `$c` 中。  
大家可以参考 演示站，对应位置，修改相应文字即可。
# 授权协议
mtfLive（MTF直播导航）遵循Apache2开源协议发布，并提供免费使用。  
版权所有Copyright © 2011-2030 by mtfLive（MTF直播导航）
All rights reserved。
Apache Licence是著名的非盈利开源组织Apache采用的协议
该协议和BSD类似，鼓励代码共享和尊重原作者的著作权，同样允许代码修改，再作为开源或商业软件发布
需要满足的条件也和BSD类似：
1. 需要给代码的用户一份Apache Licence；
2. 如果你修改了代码，需要在被修改的文件中说明；
3. 在延伸的代码中（修改和有源代码衍生的代码中）需要带有原来代码中的协议，商标，专利声明和其他原来作者规定需要包含的说明；
4. 如果再发布的产品中包含一个Notice文件，则在Notice文件中需要带有Apache icence；
5. 你可以在Notice中增加自己的许可，但不可以表现为对Apache Licence构成更改；
6. Apache Licence也是对商业应用友好的许可，使用者也可以在需要的时候修改代码来满足需要并作为开源或商业产品发布/销售；  

英文原文：http://www.apache.org/licenses/LICENSE-2.0.html
# 使用模块
· QueryList  
· Mobile_Detect  
· mtfHTTP  
· Mustache  
# 演示
![首页](https://files.catbox.moe/kok0cg.png)
![分类页PC端](https://files.catbox.moe/yzmqf2.png)
![分类页移动端](https://files.catbox.moe/ejp881.png)
