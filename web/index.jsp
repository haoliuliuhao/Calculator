<%--
  Created by IntelliJ IDEA.
  User: liuhao
  Date: 2020/7/6
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <title>BaymaxCalculator</title>
  <style>

    body {
      /*设置背景为渐变色*/
      background-size:100% 100%;
      background: linear-gradient(#9FE8F7,#2C9FF2);
      background-repeat:no-repeat;
      height: 2000px;

    }
    #baymax {
      margin: 0 auto;/*居中*/
      height: 1000px; /*设置高度*/
      overflow: hidden;
    }

    #head {
      /*头部背景*/
      background: #fff;
      margin: 0 auto;
      margin-bottom: -20px;
      /*头部大小*/
      height:60px;
      width: 100px;
      border-radius: 60%;  /*设置下边框的样式*/
      border-bottom: 5px solid #e0e0e0;
      z-index: 100;
      position: relative;
    }
    #eye,#eye2 {
      width: 11px;
      height: 13px;
      background: black;
      border-radius: 50%; /*元素大小位置*/
      position: relative;
      top: 30px;
      left: 27px;
      transform: rotate(8deg);/*旋转该元素*/
    }
    #eye2 {
      transform: rotate(-8deg);/*旋转*/
      left: 69px;
      top: 17px;
    }
    #mouth {
      width: 38px;
      height: 1.5px;
      background: #282828;
      position: relative;
      left: 34px;
      top: 10px;
    }
    #torso,#belly {
      margin: 0 auto;
      height: 200px;
      width: 180px;
      background: #fff;
      border-radius: 60%;
      border: 5px solid #e0e0e0;/*设置边框*/
      border-top: none;
      z-index: 1;
    }
    #belly {
      height: 300px;
      width: 245px;
      margin-top: -140px;
      z-index: 5;
    }
    #cover {
      width: 190px;
      background: #fff;
      height: 150px;
      margin: 0 auto;
      position: relative;
      top: -20px;
      border-radius: 50%;
    }
    #heart{
      width:120px;
      height:25px;
      border-radius:9px;
      position:relative;
      box-shadow:2px 5px 2px #ccc inset;  /*向边框四周添加阴影效果*/
      right:-30px;
      top:40px;
      z-index:111;
      border:1px solid #ccc;
      background-color: #9FE8F7;
    }
    #left-arm,#right-arm {
      height: 270px;
      width: 120px;
      border-radius: 50%;
      background: #fff;
      margin: 0 auto;
      position: relative;
      top: -350px;
      left: -100px;
      transform: rotate(20deg);
      z-index: -1;
    }
    #right-arm {
      transform: rotate(-20deg);
      left: 100px;
      top: -620px;
    }
    #l-bigfinger,#r-bigfinger {
      height: 50px;
      width: 20px;
      border-radius: 50%;
      background: #fff;
      position: relative;
      top: 250px;
      left: 50px;
      transform: rotate(-50deg);
    }
    #r-bigfinger {
      left: 50px;
      transform: rotate(50deg);
    }
    #l-smallfinger,#r-smallfinger {
      height: 35px;
      width: 15px;
      border-radius: 50%;
      background: #fff;
      position: relative;
      top: 195px;
      left: 66px;
      transform: rotate(-40deg);
    }
    #r-smallfinger {
      background: #fff;
      transform: rotate(40deg);
      top: 195px;
      left: 37px;
    }
    #left-leg,#right-leg {
      height: 170px;
      width: 90px;
      border-radius: 40% 30% 10px 45%;
      background: #fff;
      position: relative;
      top: -640px;
      left: -45px;
      transform: rotate(-1deg);
      z-index: -2;
      margin: 0 auto;
    }
    #right-leg {
      background: #fff;
      border-radius:30% 40% 45% 10px;
      margin: 0 auto;
      top: -810px;
      left: 50px;
      transform: rotate(1deg);
    }
  </style>
</head>
<body>
<div id="baymax">
  <!-- 定义头-->
  <div id="head">
    <div id="eye"></div>
    <div id="eye2"></div>
    <div id="mouth"></div>
  </div>
  <!-- 定义身体-->
  <div id="torso">
    <input type="text" id="heart" style="text-align:right" readOnly="true" value="0">
  </div>
  <!-- 定义肚子 -->
  <div id="belly">
    <div id="cover"></div>
    <input type="reset" id="res" value="C">
    <input type="button" id="division" value="/">
    <input type="button" id="ride" value="*">
    <input type="button" id="add" value="+">
    <input type="button" id="reduce" value="-">
    <input type="button" id="round" value=".">
    <input type="button" id="sum" value="=">

    <input type="button" id="one" value="1">
    <input type="button" id="two" value="2">
    <input type="button" id="three" value="3">
    <input type="button" id="four" value="4">
    <input type="button" id="five" value="5">
    <input type="button" id="six" value="6">
    <input type="button" id="seven" value="7">
    <input type="button" id="eight" value="8">
    <input type="button" id="nine" value="9">
    <input type="button" id="zero" value="0">
  </div>
  <!-- 定义左手臂 -->
  <div id="left-arm">
    <div id="l-bigfinger"></div>
    <div id="l-smallfinger"></div>
  </div>
  <!-- 定义右臂-->
  <div id="right-arm">
    <div id="r-bigfinger"></div>
    <div id="r-smallfinger"></div>
  </div>
  <!-- 定义左腿 -->
  <div id="left-leg"></div>
  <!-- 定义右腿 -->
  <div id="right-leg"></div>
</div>
</body>
</html>
