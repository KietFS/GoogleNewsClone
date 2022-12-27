<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%--<jsp:useBean id="parentCat" scope="request" type="com.example.googlenewsclone.beans.ParentCategory"/>--%>
<jsp:useBean id="parentCategories" scope="request" type="java.util.List<com.example.googlenewsclone.beans.ParentCategory>"/>
<jsp:useBean id="categories" scope="request" type="java.util.List<com.example.googlenewsclone.beans.Category>"/>

<header class="px-4 pt-4 border-b border-b-gray-200">
  <div class="w-full flex justify-between items-center mb-2">
    <img src="${pageContext.request.contextPath}/assets/images/Logo.png" width="160" height="40" />
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
      <a
              href="${pageContext.request.contextPath}/Home/Register"
              class="bg-transparent text-blue-700 font-semibold hover:opacity-50 py-2 px-4 border border-blue-500 rounded"
      >
        Đăng ký
      </a>
      <a
              href="${pageContext.request.contextPath}/Home/Login"
              class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded"
      >
        Đăng nhập
      </a>
    </div>
  </div>
  <div
          class="flex lg:hidden justify-between w-fit items-center gap-x-2 mt-4"
  >
    <a
            href="Register"
            class="bg-transparent text-blue-700 font-semibold hover:opacity-50 py-2 px-4 border border-blue-500 rounded"
    >
      Đăng ký
    </a>
    <a
            href="Login"
            class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded"
    >
      Đăng nhập
    </a>
  </div>
  <div
          class="w-fit overflow-auto mx-auto flex flex-wrap items-center gap-y-5 gap-x-5 lg:gap-x-10 mt-8"
  >
<%--    <div class="group inline-block">--%>
<%--      <button class="flex items-center">--%>
<%--            <span--%>
<%--                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"--%>
<%--            >Trang chủ</span--%>
<%--            >--%>
<%--        <span>--%>
<%--              <svg--%>
<%--                      class="fill-current h-4 w-4 transform group-hover:-rotate-180 transition duration-150 ease-in-out"--%>
<%--                      xmlns="http://www.w3.org/2000/svg"--%>
<%--                      viewBox="0 0 20 20"--%>
<%--              >--%>
<%--                <path--%>
<%--                        d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"--%>
<%--                />--%>
<%--              </svg>--%>
<%--            </span>--%>
<%--      </button>--%>
<%--      <ul--%>
<%--              class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"--%>
<%--      >--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Tin mới--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Tin hot--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Tin vắn trong ngày--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--    <div class="group inline-block">--%>
<%--      <button class="flex items-center">--%>
<%--            <span--%>
<%--                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"--%>
<%--            >Kinh Doanh</span--%>
<%--            >--%>
<%--        <span>--%>
<%--              <svg--%>
<%--                      class="fill-current h-4 w-4 transform group-hover:-rotate-180 transition duration-150 ease-in-out"--%>
<%--                      xmlns="http://www.w3.org/2000/svg"--%>
<%--                      viewBox="0 0 20 20"--%>
<%--              >--%>
<%--                <path--%>
<%--                        d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"--%>
<%--                />--%>
<%--              </svg>--%>
<%--            </span>--%>
<%--      </button>--%>
<%--      <ul--%>
<%--              class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"--%>
<%--      >--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Nông sản--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Hải sản--%>
<%--        </li>--%>

<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Lâm sản--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--    <div class="group inline-block">--%>
<%--      <button class="flex items-center">--%>
<%--            <span--%>
<%--                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"--%>
<%--            >Thể thao</span--%>
<%--            >--%>
<%--        <span>--%>
<%--              <svg--%>
<%--                      class="fill-current h-4 w-4 transform group-hover:-rotate-180 transition duration-150 ease-in-out"--%>
<%--                      xmlns="http://www.w3.org/2000/svg"--%>
<%--                      viewBox="0 0 20 20"--%>
<%--              >--%>
<%--                <path--%>
<%--                        d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"--%>
<%--                />--%>
<%--              </svg>--%>
<%--            </span>--%>
<%--      </button>--%>
<%--      <ul--%>
<%--              class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"--%>
<%--      >--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Bóng đá--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Bóng rổ--%>
<%--        </li>--%>

<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Bóng chày--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Cầu lông--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--    <div class="group inline-block">--%>
<%--      <button class="flex items-center">--%>
<%--            <span--%>
<%--                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"--%>
<%--            >Giải trí</span--%>
<%--            >--%>
<%--        <span>--%>
<%--              <svg--%>
<%--                      class="fill-current h-4 w-4 transform group-hover:-rotate-180 transition duration-150 ease-in-out"--%>
<%--                      xmlns="http://www.w3.org/2000/svg"--%>
<%--                      viewBox="0 0 20 20"--%>
<%--              >--%>
<%--                <path--%>
<%--                        d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"--%>
<%--                />--%>
<%--              </svg>--%>
<%--            </span>--%>
<%--      </button>--%>
<%--      <ul--%>
<%--              class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"--%>
<%--      >--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Giới sao--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Phim--%>
<%--        </li>--%>

<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Nhạc--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Thời trang--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--    <div class="group inline-block">--%>
<%--      <button class="flex items-center">--%>
<%--            <span--%>
<%--                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"--%>
<%--            >Giáo dục</span--%>
<%--            >--%>
<%--        <span>--%>
<%--              <svg--%>
<%--                      class="fill-current h-4 w-4 transform group-hover:-rotate-180 transition duration-150 ease-in-out"--%>
<%--                      xmlns="http://www.w3.org/2000/svg"--%>
<%--                      viewBox="0 0 20 20"--%>
<%--              >--%>
<%--                <path--%>
<%--                        d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"--%>
<%--                />--%>
<%--              </svg>--%>
<%--            </span>--%>
<%--      </button>--%>
<%--      <ul--%>
<%--              class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"--%>
<%--      >--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Tin tức--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Tuyển sinh--%>
<%--        </li>--%>

<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Chân dung--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Du học--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--    <div class="group inline-block">--%>
<%--      <button class="flex items-center">--%>
<%--            <span--%>
<%--                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"--%>
<%--            >Đời sống</span--%>
<%--            >--%>
<%--        <span>--%>
<%--              <svg--%>
<%--                      class="fill-current h-4 w-4 transform group-hover:-rotate-180 transition duration-150 ease-in-out"--%>
<%--                      xmlns="http://www.w3.org/2000/svg"--%>
<%--                      viewBox="0 0 20 20"--%>
<%--              >--%>
<%--                <path--%>
<%--                        d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"--%>
<%--                />--%>
<%--              </svg>--%>
<%--            </span>--%>
<%--      </button>--%>
<%--      <ul--%>
<%--              class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"--%>
<%--      >--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Nhịp sống--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Tổ ấm--%>
<%--        </li>--%>

<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Bài học sống--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Nhà--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--    <div class="group inline-block">--%>
<%--      <button class="flex items-center">--%>
<%--            <span--%>
<%--                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"--%>
<%--            >Du lịch</span--%>
<%--            >--%>
<%--        <span>--%>
<%--              <svg--%>
<%--                      class="fill-current h-4 w-4 transform group-hover:-rotate-180 transition duration-150 ease-in-out"--%>
<%--                      xmlns="http://www.w3.org/2000/svg"--%>
<%--                      viewBox="0 0 20 20"--%>
<%--              >--%>
<%--                <path--%>
<%--                        d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"--%>
<%--                />--%>
<%--              </svg>--%>
<%--            </span>--%>
<%--      </button>--%>
<%--      <ul--%>
<%--              class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"--%>
<%--      >--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Điểm đến--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Ẩm thực--%>
<%--        </li>--%>

<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Dấu chân--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Tư vấn--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--    <div class="group inline-block">--%>
<%--      <button class="flex items-center">--%>
<%--            <span--%>
<%--                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"--%>
<%--            >Góc nhìn</span--%>
<%--            >--%>
<%--        <span>--%>
<%--              <svg--%>
<%--                      class="fill-current h-4 w-4 transform group-hover:-rotate-180 transition duration-150 ease-in-out"--%>
<%--                      xmlns="http://www.w3.org/2000/svg"--%>
<%--                      viewBox="0 0 20 20"--%>
<%--              >--%>
<%--                <path--%>
<%--                        d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"--%>
<%--                />--%>
<%--              </svg>--%>
<%--            </span>--%>
<%--      </button>--%>
<%--      <ul--%>
<%--              class="bg-white border rounded-sm transform scale-0 group-hover:scale-100 absolute transition duration-150 ease-in-out origin-top"--%>
<%--      >--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Môi trường--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"--%>
<%--        >--%>
<%--          Văn hóa--%>
<%--        </li>--%>

<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Chính trị--%>
<%--        </li>--%>
<%--        <li--%>
<%--                class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"--%>
<%--        >--%>
<%--          Covid 19--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
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
            <li
                    class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
            >
                ${c.catName}
            </li>
          </c:if>
        </c:forEach>
      </ul>
    </div>
  </c:forEach>
  </div>
</header>