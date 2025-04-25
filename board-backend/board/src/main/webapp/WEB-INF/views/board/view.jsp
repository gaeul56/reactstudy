<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 상세보기</title>
    <style>
        .container {
            width: 80%;
            margin: 0 auto;
        }
        .post-header {
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .post-title {
            font-size: 24px;
            margin-bottom: 10px;
        }
        .post-meta {
            color: #666;
            font-size: 14px;
        }
        .post-content {
            margin: 20px 0;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            min-height: 200px;
        }
        .btn-group {
            margin-top: 20px;
        }
        .btn {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }
        .btn-edit {
            background-color: #2196F3;
        }
        .btn-delete {
            background-color: #f44336;
        }
        .btn-list {
            background-color: #9e9e9e;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="post-header">
            <h1 class="post-title">${board.title}</h1>
            <div class="post-meta">
                작성일: <fmt:formatDate value="${board.createdAt}" pattern="yyyy-MM-dd HH:mm"/>
            </div>
        </div>
        <div class="post-content">
            ${board.content}
        </div>
        <div class="btn-group">
            <a href="/board/edit/${board.id}" class="btn btn-edit">수정</a>
            <a href="/board/delete/${board.id}" class="btn btn-delete" onclick="return confirm('정말 삭제하시겠습니까?')">삭제</a>
            <a href="/board/list" class="btn btn-list">목록</a>
        </div>
    </div>
</body>
</html> 