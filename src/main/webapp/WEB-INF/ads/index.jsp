<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body class="bg-dark">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<div class="container" style="text-align: center">
    <h1 class="text">Here Are all the ads!</h1>
</div>
<div class="container-expand center p-4">
    <script>
        function randNum() {
            let num = Math.floor(Math.random() * 6);
            return "img" + num;
        }
    </script>

    <c:forEach var="ad" items="${ads}">
        <div class="card card-bg m-4 p-3 card-txt card-border">
            <img id="${ad.getId()}" src="" class="card-img-top">
            <div class="card-body">
                <h5 class="card-title">${ad.title}</h5>
                <p class="card-text">${ad.description}</p>
                <a href="/adpage?adId=${ad.getId()}" class="btn card-btn">View Ad</a>
            </div>
        </div>
        <script>
            document.getElementById("${ad.id}").classList.add(randNum());
        </script>
    </c:forEach>
</div>


</div>
</body>
</html>
