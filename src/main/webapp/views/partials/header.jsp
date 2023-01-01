<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
        contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<jsp:useBean
        id="parentCategories"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.ParentCategory>"
/>
<jsp:useBean
        id="categories"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.Category>"
/>
<jsp:useBean
        id="authUser"
        scope="session"
        type="com.example.googlenewsclone.beans.User"
/>

<header class="px-4 pt-4 border-b border-b-gray-200">
  <div class="w-full flex justify-between items-center mb-2">
    <a href="${pageContext.request.contextPath}/Home">
      <img
              src="${pageContext.request.contextPath}/assets/images/Logo.png"
              width="160"
              height="40"
      />
    </a>
    <!-- input search -->
    <div
            class="w-[180px] md:w-[300px] lg:w-[600px] border border-gray-200 h-12 rounded-full pl-4 flex items-center bg-gray-100"
    >
      <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke-width="1.5"
              stroke="currentColor"
              class="w-6 h-6 mr-2"
      >
        <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z"
        />
      </svg>

      <input
              class="w-[100px] md:w-[200px] lg:w-[500px] h-10 ring-0 bg-gray-100"
              placeholder="Tìm kiếm tin tức"
      />
    </div>

    <div class="hidden lg:flex justify-between items-center gap-x-2">
      <c:choose>
        <c:when test="${auth}">
          <form
                  id="frmLogout"
                  method="post"
                  action="${pageContext.request.contextPath}/Account/Logout"
          ></form>
          <div class="group inline-block">
            <button class="flex items-center">
              <span
                      class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
              >Xin chào, <b>${authUser.username}</b></span
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
                    class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"
            >
              <a
                      href="${pageContext.request.contextPath}/Account/Profile"
              >
                <li
                        class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                >
                  Thông tin cá nhân
                </li>
              </a>
              <c:if test="${authUser.roleID == 4}">
                <a
                        href="${pageContext.request.contextPath}/Staff/Admin"
                >
                  <li
                          class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                  >
                    Quản lý
                  </li>

                </a>
              </c:if>
              <c:if test="${authUser.roleID == 3}">
                <a
                        href="${pageContext.request.contextPath}/Staff/Editor"
                >
                  <li
                          class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                  >
                    Quản lý bài viết
                  </li>

                </a>
              </c:if>
              <c:if test="${authUser.roleID == 2}">
                <a
                        href="${pageContext.request.contextPath}/Staff/Writer"
                >
                  <li
                          class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                  >
                    Quản lý bài viết
                  </li>

                </a>
              </c:if>
              <a href="javascript: $('#frmLogout').submit()">
                <li
                        class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                >
                  Đăng xuất
                </li>
              </a>
            </ul>
          </div>
        </c:when>
        <c:otherwise>
          <a
                  href="${pageContext.request.contextPath}/Account/Register"
                  class="bg-transparent text-blue-700 font-semibold hover:opacity-50 py-2 px-4 border border-blue-500 rounded"
          >
            Đăng ký
          </a>
          <a
                  href="${pageContext.request.contextPath}/Account/Login"
                  class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded"
          >
            Đăng nhập
          </a>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
  <div
          class="w-fit overflow-auto mx-auto flex flex-wrap items-center gap-y-5 gap-x-5 lg:gap-x-10 mt-8"
  >
    <c:forEach items="${parentCategories}" var="pc">
      <div class="group inline-block">
        <button class="flex items-center">
          <span
                  class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
          >${pc.pCatName}</span
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
                class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"
        >
          <c:forEach items="${categories}" var="c">
            <c:if test="${pc.pCatID == c.pCatID}">
              <a
                      href="${pageContext.request.contextPath}/Home/Category?id=${c.catID}"
              >
                <li
                        class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                >
                    ${c.catName}
                </li>
              </a>
            </c:if>
          </c:forEach>
        </ul>
      </div>
    </c:forEach>

  </div>
  <div class="flex lg:hidden justify-between items-center gap-x-2">
    <c:choose>
      <c:when test="${auth}">
        <form
                id="frmLogout"
                method="post"
                action="${pageContext.request.contextPath}/Account/Logout"
        ></form>
        <div class="group inline-block">
          <button class="flex items-center">
              <span
                      class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
              >Xin chào, <b>${authUser.username}</b></span
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
                  class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"
          >
            <a
                    href="${pageContext.request.contextPath}/Account/Profile"
            >
              <li
                      class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
              >
                Thông tin cá nhân
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
      </c:when>
      <c:otherwise>
        <div class="flex w-fit gap-x-2 my-2">
        <a
                href="${pageContext.request.contextPath}/Account/Register"
                class="bg-transparent text-blue-700 font-semibold hover:opacity-50 py-2 px-4 border border-blue-500 rounded"
        >
          Đăng ký
        </a>
        <a
                href="${pageContext.request.contextPath}/Account/Login"
                class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded"
        >
          Đăng nhập
        </a>
        </div>
      </c:otherwise>
    </c:choose>
  </div>
</header>
