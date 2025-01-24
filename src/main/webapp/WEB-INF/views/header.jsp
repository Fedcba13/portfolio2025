<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>DogCat</title>
<script type="text/javascript" src="resources/js/bootstrap.bundle.min.js"></script>  
<script type="text/javascript" src="resources/js/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.min.css"> 
</head>
<nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="#">Home
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <c:forEach var="menu" items="${menuList}" varStatus="status">
        	<c:if test="${menu.level == 1 }">
        		<%-- 하위 메뉴가 있는 경우 --%>
        		<c:if test="${menuList[status.index + 1].level == 2}">
        			<li class="nav-item dropdown">
          				<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" id="${menu.category_id }" role="button" aria-haspopup="true" aria-expanded="false">${menu.category_name }</a>
          				<div class="dropdown-menu">
        		</c:if>
        		<%-- 하위 메뉴가 없는 경우 --%>
        		<c:if test="${menuList[status.index + 1].level == 1}">
        			<li class="nav-item">
          				<a class="nav-link" href="#" id="${menu.category_id }">${menu.category_name }</a>
        			</li>
        		</c:if>
        	</c:if>
        	<c:if test="${menu.level == 2 }">
        		<%-- 하위 메뉴가 지속되는 경우 --%>
        		<c:if test="${menuList[status.index + 1].level == 2}">
   							<a class="dropdown-item" href="#" id="${menu.category_id }">${menu.category_name }</a>
				</c:if>
				<%-- 하위 메뉴가 끝난 경우 --%>
				<c:if test="${menuList[status.index + 1].level == 1}">
   							<a class="dropdown-item" href="#" id="${menu.category_id }">${menu.category_name }</a>
       					</div> <!-- close dropdown-menu -->
       				</li>
       			</c:if>
       		</c:if>
        </c:forEach>
      </ul>
      <form class="d-flex">
        <input class="form-control me-sm-2" type="search" placeholder="Search">
        <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<body>