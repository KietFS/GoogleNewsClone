<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/31/2022
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>404 - Not Found</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/news.google.com.ico">

</head>
<body>
<div class="w-screen h-screen items-center flex flex-col justify-center">
    <img src="${pageContext.request.contextPath}/assets/images/Logo.png" class="w-[300px] h-[60px]" />
    <img src="${pageContext.request.contextPath}/assets/images/404.png" class="w-[300px] h-[300px]" />
    <h1 class="text-2xl font-bold text-gray-500 text-center">
        Trang bạn vừa tìm kiếm không tồn tại
    </h1>
    <p class="text-sm text-gray-600">
    Vui lòng liên hệ quản trị viên để tìm hiểu thêm
    </p>
    <a
            href="${pageContext.request.contextPath}/Home"
            class="px-4 py-2 text-sm text-blue-900 font-bold hover:opacity-50 mt-2 bg-blue-100 rounded-full"
    >
        Quay về trang chủ
    </a>
</div>
</body>
</html>
