<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>update</title>
</head>
<body>
<form id="myForm" action="/jsp/updateArirIndex.do">
    <table>
        <tr>
            <td colspan="2">空气质量信息维护页面</td>
        </tr>
        <tr>
            <td>监测区域</td>
            <td>
                <select name="districtId">
                    <option value="-1">不限</option>
                    <c:forEach items="${districtList}" var="district">
                        <option value="${district.id}"  <c:if test="${district.id==airIndex.districtId}"> selected </c:if> >${district.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>监测日期</td>
            <td>
                <input type="hidden" name="id" value="${airIndex.id}">
                <input type="text" name="monitorTime" value="<fmt:formatDate pattern='yyyy/MM/dd HH:mm:ss' value='${airIndex.monitorTime}' /> " />
            </td>
        </tr>
        <tr>
            <td>PM10值</td>
            <td><input type="text" name="pm10" value="${airIndex.pm10}"/></td>
        </tr>
        <tr>
            <td>PM2.5值</td>
            <td><input type="text" name="pm25" value="${airIndex.pm25}"></td>
        </tr>
        <tr>
            <td>监测站</td>
            <td><input type="text" name="monitorStation" value="${airIndex.monitorStation}"/></td>
        </tr>
        <tr>
            <td>最后修改日期</td>
            <td><fmt:formatDate pattern='yyyy/MM/dd HH:mm:ss' value='${airIndex.lastModifyTime}' /> </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="button" value="更新" onclick="saveInfo();">&nbsp;
                <input type="button" value="删除" onclick="removeById();">&nbsp;
                <input type="button" value="返回" onclick="backInfo();">
            </td>
        </tr>
    </table>
</form>
<script>
    function saveInfo() {
        var myform=document.getElementById("myForm");
        myform.submit();
    }
    function removeById() {
        document.location="${pageContext.request.contextPath}/jsp/deleteAirIndexs.do?id=${airIndex.id}";
    }

    function backInfo() {
        document.location="${pageContext.request.contextPath}/jsp/airIndexs.do";
    }
</script>
</body>
</html>