<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="utf-8">
    <title></title>
    <!-- 引入Bootstrap核心文件 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery(Bootstrap的JavaScript插件需要引入jQuery，务必在bootstrap.min.js之前引入) -->
    <script src="js/jquery.min.js"></script>
    <!-- 包括所有已编译的JS插件 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<center>
    <h1>图书管理系统</h1>
    <form action="/mohu" method="post">
        <input type="text" name="name">
        <button>查询</button >
    </form>
<table border="1">
    <thead>
        <tr>
            <td>编号</td>
            <td>书名</td>
            <td>作者</td>
            <td>价格</td>
        </tr>
    </thead>
    <tbody>
        <#list stus as s>
            <tr>
                <td>${s.bid}</td>
                <td>${s.bname}</td>
                <td>${s.aname}</td>
                <td>${s.bprice}</td>
                <#--<td>-->

                    <#--<#if s.sage&gt;17>-->
                        <#--cheng-->
                    <#--<#else >-->
                        <#--wei-->
                    <#--</#if>-->
                <#--</td>-->
                <#--<td><a href="deleteStudent?sid=${s.sid}" onclick="return confirm('确认要删除吗?')">删除</a></td>-->
                <#--<td><a href="update?sid=${s.sid}">修改</a></td>-->
            </tr>
        </#list>
    </tbody>
</table>
    <form action="/fenye" method="post">
    <div align="center">
        <#--<nav aria-lable="Page navigation">-->
            <#--<ul class="pagination">-->
                <#--<li class="disabled"><a href="javascript:void(0);">首页</a></li>-->
                <#--<li class="disabled">-->
                    <#--<a href="javascript:void(0);" aria-label="Previous">-->
                        <#--<span aria-hidden="true">&laquo;</span>-->
                    <#--</a>-->
                <#--</li>-->

                <#--<li class="active"><a href="javascript:void(0);">1</a></li>-->
                <#--<li><a href="/all_students?page=2">2</a></li>-->

                <#--<li>-->
                    <#--<a href="/all_students?page=2" aria-label="Next">-->
                        <#--<span aria-hidden="true">&raquo;</span>-->
                    <#--</a>-->
                <#--</li>-->
                <#--<li><a href="/all_students?page=2">末页</a></li>-->
            <#--</ul>-->
        <#--</nav>-->
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li>
                        <a href="javascript:void(0);" onclick="cx(1)">首页</a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" onclick="syy()" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                <#list 1..count as l>
                    <#if page=l>
                        <li class="active"><#else><li>
                    </#if>
                    <a href="javascript:void(0);" onclick="cx(${l})">${l}</a>
                </li>
                </#list>
                    <li>
                        <a href="javascript:void(0);" onclick="xyy()" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" onclick="cx(${count})">末页</a>
                    </li>
                </ul>
            </nav>
        </form>
    </div>


</center>
</body>
<script type="text/javascript">
    function syy(){
        let p=parseInt(${page})-1;
        cx(p>=1?p:1);
    }
    function xyy(){
        let p=parseInt(${page})+1;
        let n=parseInt(${count});
        cx(p<=n?p:n);
    }
    function cx(n){
        $('#page').val(n);
        $('form').submit();
    }
</script>
</html>