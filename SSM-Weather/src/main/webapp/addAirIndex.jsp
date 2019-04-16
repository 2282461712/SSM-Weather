<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>add</title>
</head>
<body>
    <form action="/jsp/addArirIndex.do">
        <table>
            <tr>
                <td colspan="2">添加空气质量信息</td>
            </tr>
            <tr>
                <td>监测区域</td>
                <td>
                    <select name="districtId">
                        <option value="-1">不限</option>
                        <c:forEach items="${districtList}" var="district">
                            <option value="${district.id}">${district.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>监测日期</td>
                <td><input type="text" name="monitorTime" /></td>
            </tr>
            <tr>
                <td>PM10值</td>
                <td><input type="text" name="pm10"/></td>
            </tr>
            <tr>
                <td>PM2.5值</td>
                <td><input type="text" name="pm25"></td>
            </tr>
            <tr>
                <td>监测站</td>
                <td><input type="text" name="monitorStation"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="保存">&nbsp;&nbsp;
                    <input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</body>
</html>
