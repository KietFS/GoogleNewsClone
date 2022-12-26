<%--
  Created by IntelliJ IDEA.
  User: huynhngoctuankiet
  Date: 25/12/2022
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <script
          src="https://code.jquery.com/jquery-3.6.0.min.js"
          integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
          crossorigin="anonymous"
  ></script>
  <script
          src="https://cdn.tiny.cloud/1/0773iw75rdr2oge3dd4c68gqxlxks5f26jznvij4q769gy2a/tinymce/5/tinymce.min.js"
          referrerpolicy="origin"
  ></script>
  <script src="https://cdn.jsdelivr.net/npm/@tinymce/tinymce-jquery@1/dist/tinymce-jquery.min.js"></script>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    /* since nested groupes are not supported we have to use
     regular css for the nested dropdowns
  */
    li > ul {
      transform: translatex(100%) scale(0);
    }
    li:hover > ul {
      transform: translatex(101%) scale(1);
    }
    li > button svg {
      transform: rotate(-90deg);
    }
    li:hover > button svg {
      transform: rotate(-270deg);
    }

    /* Below styles fake what can be achieved with the tailwind config
     you need to add the group-hover variant to scale and define your custom
     min width style.
       See https://codesandbox.io/s/tailwindcss-multilevel-dropdown-y91j7?file=/index.html
       for implementation with config file
  */
    .group:hover .group-hover\:scale-100 {
      transform: scale(1);
    }
    .group:hover .group-hover\:-rotate-180 {
      transform: rotate(180deg);
    }
    .scale-0 {
      transform: scale(0);
    }
  </style>
</head>
<body>
<div>
  <header class="px-4 pt-4 border-b border-b-gray-200">
    <div class="w-full flex justify-between items-center mb-2">
      <img src="./assets/images/Logo.png" width="160" height="40" />
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
                href="register"
                class="bg-transparent text-blue-700 font-semibold hover:opacity-50 py-2 px-4 border border-blue-500 rounded"
        >
          Đăng ký
        </a>
        <a
                href="login"
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
              href="register"
              class="bg-transparent text-blue-700 font-semibold hover:opacity-50 py-2 px-4 border border-blue-500 rounded"
      >
        Đăng ký
      </a>
      <a
              href="login"
              class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded"
      >
        Đăng nhập
      </a>
    </div>
    <div
            class="w-fit overflow-auto mx-auto flex flex-wrap items-center gap-y-5 gap-x-5 lg:gap-x-10 mt-8"
    >
      <div class="group inline-block">
        <button class="flex items-center">
            <span
                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
            >Trang chủ</span
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
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Tin mới
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Tin hot
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Tin vắn trong ngày
          </li>
        </ul>
      </div>
      <div class="group inline-block">
        <button class="flex items-center">
            <span
                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
            >Kinh Doanh</span
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
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Nông sản
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Hải sản
          </li>

          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Lâm sản
          </li>
        </ul>
      </div>
      <div class="group inline-block">
        <button class="flex items-center">
            <span
                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
            >Thể thao</span
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
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Bóng đá
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Bóng rổ
          </li>

          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Bóng chày
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Cầu lông
          </li>
        </ul>
      </div>
      <div class="group inline-block">
        <button class="flex items-center">
            <span
                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
            >Giải trí</span
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
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Giới sao
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Phim
          </li>

          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Nhạc
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Thời trang
          </li>
        </ul>
      </div>
      <div class="group inline-block">
        <button class="flex items-center">
            <span
                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
            >Giáo dục</span
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
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Tin tức
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Tuyển sinh
          </li>

          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Chân dung
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Du học
          </li>
        </ul>
      </div>
      <div class="group inline-block">
        <button class="flex items-center">
            <span
                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
            >Đời sống</span
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
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Nhịp sống
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Tổ ấm
          </li>

          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Bài học sống
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Nhà
          </li>
        </ul>
      </div>
      <div class="group inline-block">
        <button class="flex items-center">
            <span
                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
            >Du lịch</span
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
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Điểm đến
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Ẩm thực
          </li>

          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Dấu chân
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Tư vấn
          </li>
        </ul>
      </div>
      <div class="group inline-block">
        <button class="flex items-center">
            <span
                    class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
            >Góc nhìn</span
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
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Môi trường
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
          >
            Văn hóa
          </li>

          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Chính trị
          </li>
          <li
                  class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lgs cursor-pointer"
          >
            Covid 19
          </li>
        </ul>
      </div>
    </div>
  </header>
  <div>${content}</div>
  <div class="px-4 md:px-8 lg:px-56 py-10">
  <form action="addArticle" method="post">
    <div class="flex flex-col gap-y-5">
    <div class="flex flex-col gap-y-2">
      <p class="text-lg font-bold text-gray-500">Tiêu đề bài viết</p>
      <input class="w-full h-[50px] border-gray-300 border bg-white px-2 py-1" id="title" name="title" required />
    </div>
    <div class="flex flex-col gap-y-2">
      <p class="text-lg font-bold text-gray-500">Nội dung bài viết</p>
        <textarea id="tiny" name="content" class="border-gray-200 border rounded-lg bg-gray-100 w-full shadow-lg">
 &lt;p&gt;Welcome to the TinyMCE jQuery example!&lt;/p&gt;</textarea
        >
    </div>
    <button type="submit" class="text-center text-blue-900 font-bold bg-blue-50 rounded-lg text-lg py-3">Đăng bài</button>
    </div>
  </form>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/tom-select/dist/js/tom-select.complete.min.js"></script>
<script>
  new TomSelect('#select-role', {
    maxItems: 3,
  });
</script>
<script>
  $("textarea#tiny").tinymce({
    height: 500,
    menubar: false,
    plugins: [
      "a11ychecker",
      "advlist",
      "advcode",
      "advtable",
      "autolink",
      "checklist",
      "export",
      "lists",
      "link",
      "image",
      "charmap",
      "preview",
      "anchor",
      "searchreplace",
      "visualblocks",
      "powerpaste",
      "fullscreen",
      "formatpainter",
      "insertdatetime",
      "media",
      "table",
      "help",
      "wordcount",
    ],
    toolbar:
            "undo redo | a11ycheck casechange blocks | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist checklist outdent indent | removeformat | code table help",
  });
  $(document).ready(function() {
    $("#formAuthentication").validate({
      rules: {
        title: "required",
      }
    });

  });

</script>
</body>
</html>

