<#--<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">-->
<#--<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"-->
      <#--xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">-->
<#--<head>-->
    <#--<meta charset="utf-8">-->
    <#--<title></title>-->
    <#--<!-- 引入Bootstrap核心文件 &ndash;&gt;-->
    <#--<link href="css/bootstrap.min.css" rel="stylesheet">-->
    <#--<!-- jQuery(Bootstrap的JavaScript插件需要引入jQuery，务必在bootstrap.min.js之前引入) &ndash;&gt;-->
    <#--<script src="js/jquery.min.js"></script>-->
    <#--<!-- 包括所有已编译的JS插件 &ndash;&gt;-->
    <#--<script src="js/bootstrap.min.js"></script>-->
<#--</head>-->
<#--<body>-->
<#--<div class="container" style="font-family:微软雅黑;font-size:larger">-->
    <#--<div class="page-header">-->
        <#--<h2 style="text-align: center">图书管理系统</h2>-->
    <#--</div>-->

    <#--<div class="col-md-offset-2 col-md-8">-->
        <#--<form action="/index" class="navbar-form navbar-left" role="search" method="post">-->
            <#--<div class="form-group">-->
                <#--作者姓名：-->
                <#--<input type="text" class="form-control" name="aName" value="${name}">-->
            <#--</div>-->
            <#--&nbsp;<input type="hidden" name="page" id="page" value="${page}">-->
            <#--&nbsp;<input type="hidden" name="count" id="count" value="${count}">-->
            <#--<div class="form-group">-->
                <#--<button type="submit" class="btn btn-default">查询</button>-->
            <#--</div>-->
        <#--</form>-->

        <#--<table class="table table-bordered">-->
            <#--<thead>-->
            <#--<tr>-->
                <#--<td>编号</td>-->
                <#--<td>书名</td>-->
                <#--<td>作者</td>-->
                <#--<td>价格</td>-->
            <#--</tr>-->
            <#--</thead>-->
            <#--<tbody>-->
            <#--<#list book as b>-->
            <#--<tr>-->
                <#--<td>${b.bId}</td>-->
                <#--<td>${b.bName}</td>-->
                <#--<td>${b.aName}</td>-->
                <#--<td>${b.bPrice}</td>-->
            <#--</tr>-->
            <#--</#list>-->
            <#--</tbody>-->
        <#--</table>-->
        <#--<input type="hidden" id="shu">-->
        <#--<div style="text-align: center">-->
            <#--<nav aria-label="Page navigation">-->
                <#--<ul class="pagination">-->
                    <#--<li>-->
                        <#--<a href="javascript:void(0);" onclick="cx(1)">首页</a>-->
                    <#--</li>-->
                    <#--<li>-->
                        <#--<a href="javascript:void(0);" onclick="syy()" aria-label="Previous">-->
                            <#--<span aria-hidden="true">&laquo;</span>-->
                        <#--</a>-->
                    <#--</li>-->
                <#--<#list 1..count as l>-->
                    <#--<#if page=l>-->
                        <#--<li class="active"><#else><li>-->
                    <#--</#if>-->
                    <#--<a href="javascript:void(0);" onclick="cx(${l})">${l}</a>-->
                <#--</li>-->
                <#--</#list>-->
                    <#--<li>-->
                        <#--<a href="javascript:void(0);" onclick="xyy()" aria-label="Next">-->
                            <#--<span aria-hidden="true">&raquo;</span>-->
                        <#--</a>-->
                    <#--</li>-->
                    <#--<li>-->
                        <#--<a href="javascript:void(0);" onclick="cx(${count})">末页</a>-->
                    <#--</li>-->
                <#--</ul>-->
            <#--</nav>-->
        <#--</div>-->

    <#--</div>-->
<#--</div>-->
<#--</body>-->
<#--<script type="text/javascript">-->
    <#--function syy(){-->
        <#--let p=parseInt(${page})-1;-->
        <#--cx(p>=1?p:1);-->
    <#--}-->
    <#--function xyy(){-->
        <#--let p=parseInt(${page})+1;-->
        <#--let n=parseInt(${count});-->
        <#--cx(p<=n?p:n);-->
    <#--}-->
    <#--function cx(n){-->
        <#--$('#page').val(n);-->
        <#--$('form').submit();-->
    <#--}-->
<#--</script>-->
<#--</html>-->