<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Đăng ký tài khoản</title>
  <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/news.google.com.ico">
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>
<form id="formRegister" action="${pageContext.request.contextPath}/Account/Register" method="post">
  <div
          class="flex flex-col items-center justify-center h-screen w-screen gap-y-5"
  >
    <img
            src="${pageContext.request.contextPath}/assets/images/Logo.png"
            class="w-[300px] h-[60px] cursor-pointer hover:opacity-50"
    />
    <div class="text-2xl text-gray-500 font-semibold text-left">
      Trang đăng ký
    </div>
    <div class="flex flex-start w-[300px]">
      <p class="text-red-500 font-semibold text-sm">${existedUser}</p>
      <p class="text-green-500 font-semibold text-sm">${successfulRegistration}</p>
      <p class="text-red-500 font-semibold text-sm">${errRegistration}</p>
    </div>
    <!-- input name -->
    <div class="flex flex-col gap-y-1">
      <p class="text-gray-600 font-bold ml-2">Tên</p>
      <input
              type="text"
              id="name"
              name="name"
              placeholder="Tên của bạn"
              autofocus
              required
              class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
      />
    </div>
    <div class="flex flex-col gap-y-1">
      <p class="text-gray-600 font-bold ml-2">Tài khoản đăng nhập</p>
      <input
              type="text"
              id="username"
              name="username"
              placeholder="Tên tài khoản"
              autofocus
              required
              class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
      />
    </div>
    <!-- input email -->
    <div class="flex flex-col gap-y-1">
      <p class="text-gray-600 font-bold ml-2">Email</p>
      <input
              type="email"
              id="email"
              name="email"
              placeholder="Email của bạn"
              autofocus
              required
              class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
      />
    </div>
    <!-- input password -->
    <div class="flex flex-col gap-y-1">
      <p class="text-gray-600 font-bold ml-2">Mật khẩu</p>
      <input
              type="password"
              id="password"
              name="password"
              placeholder="Nhập mật khẩu của bạn"
              required
              class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
      />
    </div>
    <!-- input confirm password -->
    <div class="flex flex-col gap-y-1">
      <p class="text-gray-600 font-bold ml-2">Xác nhận mật khẩu</p>
      <input
              type="password"
              id="confirmPassword"
              name="confirmPassword"
              placeholder="Xác nhận mật khẩu"
              required
              class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
      />
    </div>
    <div class="flex flex-col gap-y-1">
      <p class="text-gray-600 font-bold ml-2">Bạn là ?</p>
      <select
              name="roles"
              required
              id="cars"
              class="w-[300px] bg-gray-100 border border-gray-200 px-4 py-2 rounded-full"
      >
        <option value="1">Người đọc bài</option>
        <option value="2">Người viết bài</option>
      </select>
    </div>
    <!-- button section -->
<%--    Captcha V2 Checkbox--%>
    <div class="g-recaptcha" data-sitekey="6LcZW-EjAAAAAMlY0qR84jYZDU9twwZZLIi0cTF5"></div>
    <div class="flex flex-col gap-y-4">
      <!-- login button -->
      <button
              type="submit"
              class="bg-blue-500 text-white font-bold rounded-full py-2 w-[300px] text-center mt-4 hover:opacity-50"
      >
        Đăng ký ngay
      </button>
      <!-- submit button -->
      <a href="${pageContext.request.contextPath}/Account/Login"
         class="bg-blue-50 text-blue-900 font-bold rounded-full py-2 w-[300px] text-center hover:opacity-50"
      >
        Chuyển sang đăng nhập
      </a>
    </div>
  </div>
</form>
</body>
<script type="text/javascript">
  $(document).ready(function () {
    $("#formRegister").validate({
      rules: {
        email: {
          required: true,
          email: true,
        },
        name: "required",
        confirmPassword: "required",
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