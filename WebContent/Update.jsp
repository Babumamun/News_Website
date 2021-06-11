<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.5.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
<style>
body {
    background-image: url("images/bg.jpg");
}
</style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-offset-5 col-md-6">
            <h1>Modify News</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
    <form role="form" class="form-horizontal" method="post" action="saveupdate">
        <div class="form-group">
            <label class="control-label col-md-3">ID</label>
            <div class="col-md-9">
                <input type="text" disabled class="form-control" value="${news.id}">
                <input type="hidden" name="id" value="${news.id}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3" >Tittle</label>

        <div class="col-md-9">
            <input type="text" name="tittle" value="${news.tittle}" class="form-control">
        </div>
        </div>
        
<div class="form-group">
    <label class="control-label col-md-3">Deatils</label>
    <div class="col-md-9">
        <input type="text" name="des" value="${news.des}" class="form-control">
    </div>
</div>
        <div class="col-md-offset-5">
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </form>
        </div>
    </div>
</div>
</body>
</html>