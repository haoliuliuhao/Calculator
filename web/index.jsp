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
      background-size:100% 100%;
      background: linear-gradient(#9FE8F7,#2C9FF2);
      background-repeat:no-repeat;
      height: 2000px;

    }
    #baymax {
      margin: 0 auto;
      height: 1000px;
      overflow: hidden;
    }

    #head {
      background: #fff;
      margin: 0 auto;
      margin-bottom: -20px;
      height:60px;
      width: 100px;
      border-radius: 60%;
      border-bottom: 5px solid #e0e0e0;
      z-index: 100;
      position: relative;
    }
    #eye,#eye2 {
      width: 11px;
      height: 13px;
      background: black;
      border-radius: 50%;
      position: relative;
      top: 30px;
      left: 27px;
      transform: rotate(8deg);
    }
    #eye2 {
      transform: rotate(-8deg);
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
      border: 5px solid #e0e0e0;
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
    #display{
      width:120px;
      height:25px;
      border-radius:9px;
      position:relative;
        font-family:"Comic Sans MS", cursive, sans-serif;
      box-shadow:2px 5px 2px #ccc inset;
      right:-10px;
      top:40px;
      z-index:111;
      border:1px solid #ccc;
      background-color: #9FE8F7;
    }
    #keyboard{
        width:180px;
        height:170px;
        background: #fff;
        border-radius:9px;
        position: relative;
        top: 70px;
        right:-35px;
        z-index:111;

    }
    .btn {
        outline: none;
        cursor: pointer;
        font-size: 25px;
        font-family:"Comic Sans MS", cursive, sans-serif;
        background: #9FE8F7;
        height: 35px;
        margin: 2px 0 2px 5px;
        width: 35px;
        border-radius: 8px;
    }
    .btn_operator{
        outline: none;
        cursor: pointer;
        font-size: 25px;
        font-family:"Comic Sans MS", cursive, sans-serif;
        background: #D3D3D3;
        height: 35px;
        margin: 2px 0 2px 5px;
        width: 35px;
        border-radius: 8px;
    }
    .btn_equal{
        outline: none;
        cursor: pointer;
        font-size: 25px;
        font-family:"Comic Sans MS", cursive, sans-serif;
        background: #FF7F50;
        height: 35px;
        margin: 2px 0 2px 5px;
        width: 35px;
        border-radius: 8px;
    }
    .btn_clear{
        background-color:	#FF7F50;
        width:25px;
        height:25px;
        outline: none;
        cursor: pointer;
        border-radius:8px;
        position:relative;
        font-family:"Comic Sans MS", cursive, sans-serif;
        right:-10px;
        top:40px;
        z-index:111;

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
    <script>
   <!--清零-->
   function clearout(){
           document.getElementById("display").value = "";
           document.getElementById("display").focus();
   };
  <!--取值-->
        function get(value) {
            document.getElementById("display").value += value;
        };

  <!--计算-->
        function calculate() {
            var result = 0;
            result = document.getElementById("display").value;
            document.getElementById("display").value = "";
            document.getElementById("display").value = eval(result);
        };
    </script>
</head>
<body>
<div id="baymax">
  <!--头-->
  <div id="head">
    <div id="eye"></div>
    <div id="eye2"></div>
    <div id="mouth"></div>
  </div>
    <!--身体-->
     <div id="torso">
        <div id="btn_clear">
            <input type="button" class="btn_clear" value="C" onclick="clearout();">
       <input type="text" id="display" style="text-align:right" readOnly="true" value="">
     </div>
     </div>
      <!--肚子-->
     <div id="belly">
         <div id="keyboard">

         <input type="button" class="btn" value="7" onclick="get(this.value);">
         <input type="button" class="btn" value="8" onclick="get(this.value);">
         <input type="button" class="btn" value="9" onclick="get(this.value);">
         <input type="button" class="btn_operator" value="+" onclick="get(this.value);">
         <br>
         <input type="button" class="btn" value="4" onclick="get(this.value);">
         <input type="button" class="btn" value="5" onclick="get(this.value);">
         <input type="button" class="btn" value="6" onclick="get(this.value);">
         <input type="button" class="btn_operator" value="*" onclick="get(this.value);">
         <br>
         <input type="button" class="btn" value="1" onclick="get(this.value);">
         <input type="button" class="btn" value="2" onclick="get(this.value);">
         <input type="button" class="btn" value="3" onclick="get(this.value);">
         <input type="button" class="btn_operator" value="-" onclick="get(this.value);">
         <br>
         <input type="button" class="btn" value="0" onclick="get(this.value);">
         <input type="button" class="btn_operator" value="." onclick="get(this.value);">
         <input type="button" class="btn_operator" value="/" onclick="get(this.value);">
         <input type="button" class="btn_equal" value="=" onclick="calculate();">
     </div>
         <div id="cover"></div>
     </div>
      <!--左手臂-->
     <div id="left-arm">
       <div id="l-bigfinger"></div>
       <div id="l-smallfinger"></div>
     </div>
    <!--右臂-->
     <div id="right-arm">
       <div id="r-bigfinger"></div>
       <div id="r-smallfinger"></div>
     </div>
     <!--左腿-->
     <div id="left-leg"></div>
     <!--右腿-->
     <div id="right-leg"></div>
   </div>
   </body>
   </html>
