<jsp:useBean id="playerStats" scope="request" type=""/>
<jsp:useBean id="PlayerStats" scope="request" type="com.example.springmvc.Model.PlayerStats"/>
<%--
  Created by IntelliJ IDEA.
  User: KNAndrikov18
  Date: 12/5/2022
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Head-to-head Statistics</h2>


<br><br>
<b>${PlayerStats.player1}</b> &emsp; vs. &emsp; <b>${PlayerStats.player2}</b>

<br><br>
Head-to-Head Score: <b>${PlayerStats.head2head}</b>

</body>
</html>
