# JSPatchDemo
JSPatch热更新的基础用法
#####简介
>项目地址 : https://github.com/bang590/JSPatch
SDK下载  :  http://jspatch.com （更新还是挺勤快的，还是昨天2016-12-15更新的~，版本已经到了V1.6.5）

######关于JSPatch的优势( 详情请戳 http://blog.cnbang.net/works/2767/ )
**1.JS语言**JS比Lua在应用开发领域有更广泛。
**2.符合Apple规则**。
**3.小巧**使用系统内置的JavaScriptCore.framework，无需内嵌脚本引擎，体积小巧。
**4.支持block**。

#####集成JSPatch
http://jspatch.com/Index/sdk 下载SDK
1.直接将下载好的 `JSPatchPlatform.framework`  拖进工程，并添加添加依赖框架：TARGETS -> Build Phases -> Link Binary With Libraries -> + 添加 `libz.tbd`
 和 `JavaScriptCore.framework`
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1025561-fa4bf36abb10e203.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

2.在 `AppDelegate.m` 里导入 `#import <JSPatchPlatform/JSPatch.h>`并加入如下代码



![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1025561-701fb3a74faacab5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


3.到JSPatch官网注册账号 http://jspatch.com/
          1.注册完账号之后添加版本

  ![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1025561-c5b8771088fb55c7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

 2.动态替换 `creatView` 的 内容
    
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1025561-4b900fe1fd729295.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

3.打开JSPatch 工具  http://jspatch.com/Tools/convertor
将相应的方法转为js

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1025561-3abdbdb4a4fcb99d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)




4.将转换后的js保存为 `main.js` 并上传至 JSPatch
    
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1025561-8f9901e5d2f5b63b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

5.运行你的app，不知道为什么要运行两次才有效果~ 你们找到了原因记得告诉我~

6.两次效果对比
更新前：
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1025561-89d7223023ba04c0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

更新后：

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1025561-67c63e00efbaff7f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


#####记得一定要运行两次

#####参考资料
1. https://github.com/bang590/JSPatch （开源作者项目地址）
2. http://blog.cnbang.net/ （作者博客）
3. http://jspatch.com/Tools/convertor (OC代码转js)
