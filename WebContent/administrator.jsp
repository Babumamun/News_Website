<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminPage</title>
<link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.5.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <script>
        function modify(id) {
            window.location="${pageContext.request.contextPath}/update?id="+id;
        }
        
        function del(id) {
            var result=confirm("Do you really want to delete this record?");
            if(result)
                window.location="${pageContext.request.contextPath}/del?id="+id;
        }
    </script>
<link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.5.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div id="page_wrapper">
  <div id="header_wrapper">
    <div id="header">
      <h1>News<font color="#FFDF8C">Today</font></h1>
      <h2>World latest online news</h2>
    </div>
    <div id="navcontainer">
      <ul id="navlist">
        <li id="active"><a href="main.jsp" id="current">Home</a></li>
        <li><a href="add.jsp">AddNews</a></li>
        <li><a href="https://gmail.com/">Gmail</a></li>
        <li><a href="https://www.youtube.com/">YouTube</a></li>
        <li><a href="https://fb.com/">Facebook</a></li>
      </ul>
    </div>
  </div>
  </div>
</head>
<body>

    <div class="row">
        <div class="col-md-offset-1 col-md-10">
            <table class="table table-striped">
                <tr><th>ID</th><th>Tittle</th><th>Deatils</th>
                   <th>Operation</th></tr>
                <c:forEach var="news" items="${news}">
                   <tr>
                       <td>${news.id}</td>
                       <td>${news.tittle}</td>
                       <td>${news.des}</td>
                       <td><button type="button" class="btn btn-primary" onclick="modify('${news.id}')">Modify</button>
                       <button type="button" class="btn btn-warning" onclick="del('${news.id}')">Delete</button>
                       </td>
                   </tr>
                </c:forEach>
            </table>
        </div>
    </div>


<div id="footer"> <a href="getall">Home</a> | <a href="">politics| <a href="">Sports</a> | <a href="">Entertianment</a> | <a href="login.html">log-in</a> <br />
 News provided by: <a href="">MAMUN MD AL.COM</a> </div>
</div>
<div align=center>Downloaded Any News Form <a href='main.jsp'>Mamun MD AL </a></div>

</body>
</html>