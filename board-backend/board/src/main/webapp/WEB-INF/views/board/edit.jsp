<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글수정</title>
    <style>
        .container {
            width: 80%;
            margin: 0 auto;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        textarea {
            height: 300px;
            resize: vertical;
        }
        .btn {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-cancel {
            background-color: #f44336;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>글수정</h1>
        <form action="/board/edit/${board.id}" method="post">
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" id="title" name="title" value="${board.title}" required>
            </div>
            <div class="form-group">
                <label for="content">내용</label>
                <textarea id="content" name="content" required>${board.content}</textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn">저장</button>
                <button type="button" class="btn btn-cancel" onclick="location.href='/board/view/${board.id}'">취소</button>
            </div>
        </form>
    </div>
</body>
</html> 