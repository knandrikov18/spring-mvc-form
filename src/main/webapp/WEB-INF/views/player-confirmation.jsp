<jsp:useBean id="athlete" scope="request" type="com.example.springmvc.Model.Athlete"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: KNAndrikov18
  Date: 11/30/2022
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Player Confirmation</title>
</head>
<body>
<h2>Player Confirmation</h2>
<hr>


<br><br>
The player has been added.

<br><br>
<b>Name</b> : ${athlete.firstName}
${athlete.lastName}
<br><br>
Country: ${athlete.country}
<br><br>
Handedness: ${athlete.handedness}

<b>Current Rank</b> : ${athlete.rank}

<b>Last Won</b> : <fmt:formatDate value="${athlete.lastWon}" type="date" pattern="dd-MM-YYYY"/>

<b>Prize Money</b> : ${athlete.prizeMoney}
</body>
</html>
