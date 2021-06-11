<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add page</title>
<link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.5.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <style>
body {
    background-image: url("images/bg1.jpg");
}

</style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-offset-4 col-md-6">
            <h1> Add news </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form role="form" class="form-horizontal" method="post" action="add">
                <div class="form-group">
                    <label class="col-md-3 control-label" for="id">ID</label>
                    <div class="col-md-9">
                    <input type="text" class="form-control" id="id" name="id">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label" for="tittle">Tittle</label>
                    <div class="col-md-9">
                    <input type="text" class="form-control" id="tittle" name="tittle">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label" for="des">Descripstion</label>
                    <div class="col-md-9">
                    <input type="text" class="form-control" id="des" name="des">
                    </div>
                </div>
                
                <div class="col-md-offset-5">
                <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>