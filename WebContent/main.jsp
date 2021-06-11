<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main page</title>
<link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.5.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>

  <table>
              <tr>
               <td>
     <div class="container-fluid">          
    <div class="row">
    <div class="col-md-offset-1 col-md-1">
               <form method="post" action="getbytittle"
                  role="form" class="form-inline">
                <div class="form-group">
                <div class="col-md-20">
                    <input type="text" name="tittle" class="form-control"
                    value="${tittle==null?'':tittle}">
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </form>
            </div>
            </div>
            </div>
            </td>
               
               </tr>
             
            </table>
 
 
 
 
 
 
 
 
  <div class="container-fluid">
    <div class="row">
        <div class="col-md-offset-0 col-md-8">
            <table class="table table-striped">
              <tr>
               <td>Heading</td>
               <td>Deatils</td>
               </tr>
               
            
          <c:forEach var="nws" items="${news}">

          <tr>
            
            <td>${nws.tittle}</td>

            <td>${nws.des}</td>

          </tr>

       </c:forEach>
          
            </table>
        </div>
    </div>
</div>
 
</html>