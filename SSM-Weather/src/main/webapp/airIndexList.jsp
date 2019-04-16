<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>stuList</title>
    <style>
        td{
            width: 90px;
        }
        .td{
            width: 120px;
        }
        span{
            color: gray;
        }
    </style>
</head>
<body>
<form action="/jsp/airIndexs.do">
    <table>
        <tr style="text-align: center">
            <td colspan="4">按照区域查询
                <select name="district">
                    <option value="-1">不限</option>
                    <c:forEach items="${districtList}" var="district">
                        <option value="${district.id}" <c:if test="${district.id==districtId}"> selected </c:if> >${district.name}</option>
                    </c:forEach>
                </select>&nbsp;<input type="submit" value="提交">
            </td>
            <td colspan="2">
                <a href="${pageContext.request.contextPath}/jsp/jumpAddPage.do">添加空气质量信息</a>
            </td>
        </tr>
        <tr>
            <td>序号</td>
            <td>区域</td>
            <td>监测时间</td>
            <td>PM10</td>
            <td>PM2.5</td>
            <td>监测站</td>
        </tr>
        <c:forEach items="${page.districtList}" var="district">
            <c:forEach items="${district.airIndexList}" var="airIndex">
            <tr>
                <td>${airIndex.id}</td>
                <td><a href="${pageContext.request.contextPath}/jsp/jumpUpdatePage.do/${airIndex.id}">${district.name}</a></td>
                <td class="td"><fmt:formatDate pattern="yyyy-MM-dd" value="${airIndex.monitorTime}" /> </td>
                <td>${airIndex.pm10}</td>
                <td>${airIndex.pm25}</td>
                <td style="width: 170px">${airIndex.monitorStation}</td>
            </tr>
            </c:forEach>
        </c:forEach>
        <tr>
            <td colspan="6" style="color: red;">${msg}</td>
        </tr>
        <tr>
            <td>
                <c:choose>
                    <c:when test="${page.currentPage>1}">
                        <a href="${pageContext.request.contextPath}/jsp/airIndexs.do?currentPage=${1}"> 首页</a>
                    </c:when>
                    <c:otherwise>
                        <span>首页</span>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${page.currentPage>1}">
                        <a href="${pageContext.request.contextPath}/jsp/airIndexs.do?currentPage=${page.currentPage-1}"> &lt;&lt;上一页</a>
                    </c:when>
                    <c:otherwise>
                        <span>&lt;&lt;上一面</span>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                <c:when test="${page.currentPage<page.totalPage}">
                <a href="${pageContext.request.contextPath}/jsp/airIndexs.do?currentPage=${page.currentPage+1}">下一页&gt;&gt;</a>
                </c:when>
                <c:otherwise>
                <span>下一页&gt;&gt;</span>
                </c:otherwise>
                </c:choose>
            <td>
                <c:choose>
                    <c:when test="${page.currentPage<page.totalPage}">
                        <a href="${pageContext.request.contextPath}/jsp/airIndexs.do?currentPage=${page.totalPage}">未页</a>
                    </c:when>
                    <c:otherwise>
                        <span>未页</span>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>第${page.currentPage}/${page.totalPage}页 </td>
            <td>
               (${page.totalRows}条)
            </td>
        </tr>
    </table>
</form>
</body>
</html>
