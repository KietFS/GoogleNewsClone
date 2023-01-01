<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean
        id="authUser"
        scope="session"
        type="com.example.googlenewsclone.beans.User"
/>
<div
        class="shadow-lg p-4 flex w-full h-[70px] bg-white justify-between items-center"
>
    <img src="${pageContext.request.contextPath}/assets/images/Logo.png" width="160" height="40" />
    <form
        id="frmLogout"
        method="post"
        action="${pageContext.request.contextPath}/Account/Logout"
    ></form>
    <div class="group inline-block">
        <button class="flex items-center">
              <span
                      class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
              >Xin chào <b>${authUser.username}</b></span
              >
            <span>
                <svg
                        class="fill-current h-4 w-4 transform group-hover:-rotate-180 transition duration-150 ease-in-out"
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 20 20"
                >
                  <path
                          d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"
                  />
                </svg>
              </span>
        </button>
        <ul
                class="bg-white border z-99 rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"
        >
            <a href="${pageContext.request.contextPath}/Account/Profile">
                <li
                        class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                >
                    Tài khoản
                </li>
            </a>
            <a href="javascript: $('#frmLogout').submit()">
                <li
                        class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                >
                    Đăng xuất
                </li>
            </a>
        </ul>
    </div>
</div>