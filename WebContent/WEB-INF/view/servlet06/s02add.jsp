<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
 <div class="container">
    <div class="row">
      <div class="col-3">
        <nav class="nav flex-column">
          <a class="nav-link" href="${pageContext.request.contextPath }/servlet06/main">메인</a>
          <a class="nav-link" href="${pageContext.request.contextPath }/servlet06/add">추가</a>
          <a class="nav-link" href="${pageContext.request.contextPath }/servlet06/list">목록</a>
        </nav>
      </div>
      <div class="col-9">
        <h1>할 일 추가</h1>
        <form action="${pageContext.request.contextPath }/servlet06/add" method="post">

          <!-- .form-group>label[for=todo1]{할 일}+input#todo1.form-control -->
          <div class="form-group">
            <label for="todo1">할 일</label>
            <input type="text" id="todo1" class="form-control" name="todo">
          </div>

          <input type="submit" class="btn btn-primary" value="추가">
        </form>
      </div>
    </div>
  </div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>