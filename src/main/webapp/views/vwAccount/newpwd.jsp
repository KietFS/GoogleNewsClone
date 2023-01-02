<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="verifiedUser" scope="request" type="com.example.googlenewsclone.beans.User"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Khôi phục mật khẩu</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<form id="formRecovery" action="${pageContext.request.contextPath}/Account/UpdatePassword" method="post">
    <div
            class="flex flex-col items-center justify-center h-screen w-screen gap-y-5"
    >

        <a href="${pageContext.request.contextPath}/Home">
            <img
                    src="${pageContext.request.contextPath}/assets/images/Logo.png"
                    class="w-[300px] h-[60px] cursor-pointer hover:opacity-50"
            />
        </a>
        <div class="text-2xl text-gray-500 font-semibold text-center">
            Khôi phục mật khẩu
        </div>
        <div class="flex flex-start w-[300px]">
            <p class="text-red-500 font-semibold text-sm">${errVerify}</p>
        </div>
        <input type="hidden" name="userid" value="${verifiedUser.userID}">
        <!-- input password -->
        <div class="flex flex-col gap-y-1">
            <p class="text-gray-600 font-bold ml-2">Mật khẩu mới</p>
            <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="Nhập mật khẩu của bạn"
                    autofocus
                    required
                    class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
            />
        </div>
        <div class="flex flex-col gap-y-1">
            <p class="text-gray-600 font-bold ml-2">Xác nhận mật khẩu</p>
            <input
                    type="password"
                    id="confirm"
                    name="confirm"
                    placeholder="Xác nhận mật khẩu của bạn"
                    required
                    class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
            />
        </div>
        <!-- button section -->
        <div class="flex flex-col gap-y-4">
            <!-- login button -->

            <button
                    type="submit"
                    class="bg-blue-500 text-white font-bold rounded-full py-2 w-[300px] text-center mt-4 hover:opacity-50"
            >
                Đổi mật khẩu
            </button>

        </div>

    </div>
</form>
</body>

<script type="text/javascript">

    $(document).ready(function() {
        $("#formRecovery").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                username: "required",
                password: "required",
            },

            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                },

                password: "Please enter password"
            }
        });

    });
</script>
</html>



