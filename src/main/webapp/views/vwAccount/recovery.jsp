<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Khôi phục mật khẩu</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/news.google.com.ico">

</head>
<body>
<form id="formRecovery" action="${pageContext.request.contextPath}/Account/ForgetPassword" method="post">
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
            <p class="text-green-500 font-semibold text-sm">${message}</p>
            <p class="text-red-500 font-semibold text-sm">${errVerify}</p>
            <p class="text-green-500 font-semibold text-sm">${completeRecovery}</p>
        </div>
        <!-- input email -->
        <div class="flex flex-col gap-y-1">
            <p class="text-gray-600 font-bold ml-2">Email</p>
            <input
                    type="text"
                    id="email"
                    name="email"
                    placeholder="Email của bạn"
                    autofocus
                    required
                    class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
            />
        </div>
        <!-- button section -->
        <div class="flex flex-col gap-y-4">
            <!-- otp button -->
            <button
                    type="submit"
                    class="bg-blue-500 text-white font-bold rounded-full py-2 w-[300px] text-center mt-4 hover:opacity-50"
            >
                Gửi OTP khôi phục
            </button>
            <!-- login button -->
            <a href="${pageContext.request.contextPath}/Account/Login"
               class="bg-blue-50 text-blue-900 font-bold rounded-full py-2 w-[300px] text-center hover:opacity-50"
            >
                Chuyển sang đăng nhập
            </a>
        </div>
    </div>
    </div>
</form>
</body>

<script type="text/javascript">

    $(document).ready(function () {
        $("#formRecovery").validate({
            rules: {
                email: {
                    required: true,
                    email: true,
                },
                name: "required",
                confirm: "required",
                password: "required",
                roles: "required",
            },
            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address",
                },
                password: "Please enter password",
            },
        });
    });
</script>
</html>



