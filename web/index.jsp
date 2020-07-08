<%--
  Created by IntelliJ IDEA.
  User: liuhao
  Date: 2020/7/6
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="counter">
  <input type="text" id="box" style="text-align:right" readOnly="true" value="0">
  <div class="funct">
    <input type="reset" id="res" value="C">
    <input type="button" id="division" value="/">
    <input type="button" id="ride" value="*">

    <input type="button" id="add" value="+">
    <input type="button" id="reduce" value="-">
    <input type="button" id="round" value=".">
    <input type="button" id="sum" value="=">

    <div class="numb">
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
  </div>
</div>

<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <style>
    .counter{
      width: 396px;
      height: 486px;
      background-color: #F2F2F2;
      border: 1px solid #C2C3C6;
      margin: 50px auto;
    }
    #box {
      height: 70px;
      width: 336px;
      background-color: #323232;
      border: none;
      margin: 40px 25px 32px 25px;
      color: #ffffff;
      padding-right: 10px;
    }
    .funct {
      padding: 0 20px;
      position: relative;

    }
    .funct input {
      height: 40px;
      width: 60px;
      margin: 10px 10px;
    }
    .funct #res {
      width: 150px;
    }
    #add, #reduce, #round, #sum {
      position: absolute;
      right: 0px;
      bottom: 0px;
    }
    #reduce {
      right: 30px;
      top: 60px;
    }
    #add {
      right: 30px;
      top: 120px;
    }
    #sum {
      height: 100px;
      right: 30px;
      bottom: 0px;
    }
    #round {
      right: 120px;
      bottom: 0px;
    }
    #zero {
      width: 150px;
    }
    .numb {
      width: 280px;
    }
  </style>
  </body>
</html>