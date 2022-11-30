<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: KNAndrikov18
  Date: 11/30/2022
  Time: 2:43 PM
  To chagne this template use File | Settings | File Templates.
--%>
<@ taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Player</title>
</head>
<body>
<h2>
    Player Form
</h2>
<hr>

<%--@elvariable id="athlete" type=""--%>
<form:form action = "processPlayerForm" modelAttribute = "athlete">
    <br><br>

    Name: <form:input path="lastName"/>
    <br><br>
   Country: <form:select path="country">

        <form:option value="AUT" label="Austria"/>
        <form:option value="FRA" label="France"/>
        <form:option value="SRB" label="Serbia"/>
        <form:option value="SUI" label="Switzerland"/>
        <form:option value="USA" label="United States of America"/>
    </form:select>
    <br><br>
    Handedness:
    Left-Handed <form:radiobutton path="handedness" value ="Left-Handed"/>
    Right-Handed <form:radiobutton path="handedness" value ="Right-Handed"/>
    Ambidextrous <form:radiobutton path="handedness" value ="Ambidextrous"/>

    <br><br>
    Grand Slam Titles Won:

    Australian Open <form:checkbox path="grandSlams" value="Australian Open"/>
    French Open <form:checkbox path="grandSlams" value="French Open"/>
    Wimbledon <form:checkbox path="grandSlams" value="Wimbledon"/>
    US Open <form:checkbox path="grandSlams" value="US Open"/>
    <br><br>
    Grand Slams Titles:
    <ul>
        <c:forEach items="${athlete.grandSlams}" var="title">
            <li>${title}</li>
        </c:forEach>
    </ul>
    <input type = "submit" value="Add Player"/>
</form:form>
</body>
</html>
