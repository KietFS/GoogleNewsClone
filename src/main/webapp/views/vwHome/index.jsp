<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Google Tin tức</title>
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

<div
        class="py-10 h-fit px-4 md:px-8 lg:px-56 mx-auto bg-gray-50 flex flex-col gap-y-10"
>
    <div>
        <h1 class="text-gray-500 font-bold text-3xl">Tin nổi bật trong tuần</h1>
        <p class="text-gray-500">Thứ tư, 7/12/2022</p>
        <div class="mt-5 flex flex-col lg:flex-row gap-x-4 gap-y-5">
            <!-- Left Side ( width 2/3) -->
            <div
                    class="p-2 border-gray-100 rounded-lg border w-full lg:w-2/3 h-fit bg-white shadow-sm p-4 gap-y-5 flex flex-col"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-blue-600">Bài viết nổi bật</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-blue-600"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <!-- Big left articles -->
                <div
                        class="px-2 py-8 border-t border-b-1 border-gray-200 w-full h-[320px] flex items-center gap-x-5"
                >
                    <!-- Main articles -->
                    <div class="w-2/5 flex flex-col gap-y-2">
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                width="250"
                                height="200"
                                class="rounded-lg"
                        />
                        <a href="article?id=1"
                                class="text-sm md:text-lg lg:text-xl hover:underline text-gray-500 font-semibold cursor-pointer"
                        >
                            HLV Park phát biểu sau khi nhận huân chương Heungin
                        </a>
                        <div class="flex justify-between items-center w-full">
                            <p class="text-gray-500 mt-1 text-sm">12 giờ trước</p>
                            <p
                                    class="text-white rounded-full px-2 py-1 bg-blue-500 w-fit text-xs"
                            >
                                Premium
                            </p>
                        </div>
                        <p class="text-sm text-red-500 font-bold">Chính trị</p>
                    </div>
                    <!-- List articles -->
                    <div class="flex flex-col gap-y-4">
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                    </div>
                </div>
                <div
                        class="px-2 py-4 border-t border-b-2 border-gray-200 w-full h-[320px] flex items-center gap-x-5"
                >
                    <!-- Main articles -->
                    <div class="w-2/5 flex flex-col gap-y-2">
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                width="250"
                                height="200"
                                class="rounded-lg"
                        />
                        <a href="article?id=1"
                                class="text-sm md:text-lg lg:text-xl text-gray-500 font-semibold cursor-pointer"
                        >
                            HLV Park phát biểu sau khi nhận huân chương Heungin
                        </a>
                        <div class="flex justify-between items-center w-full">
                            <p class="text-gray-500 mt-1 text-sm">12 giờ trước</p>
                            <p
                                    class="text-white rounded-full px-2 py-1 bg-blue-500 w-fit text-xs"
                            >
                                Premium
                            </p>
                        </div>
                        <p class="text-sm text-red-500 font-bold">Chính trị</p>
                    </div>
                    <!-- List articles -->
                    <div class="flex flex-col gap-y-4">
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Right Side ( width 1/3) -->
            <div
                    class="border-gray-100 rounded-lg border w-full lg:w-1/3 h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Bài viết nổi bật</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <h1 class="text-gray-500 font-bold text-3xl">
            Bài viết được xem nhiều
        </h1>
        <p class="text-gray-500">Mọi chuyên mục</p>
        <div
                class="mt-5 grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3 items-center gap-x-4 gap-y-10"
        >
            <!-- Right Side ( width 1/3) -->

            <div
                    class="p-2 border-gray-100 rounded-lg border w-full h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Tin bài hàng đầu</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
            <div
                    class="p-2 border-gray-100 rounded-lg border w-full h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Tin bài hàng đầu</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
            <div
                    class="p-2 border-gray-100 rounded-lg border w-full h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Tin bài hàng đầu</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <h1 class="text-gray-500 font-bold text-3xl">Bài viết mới nhất</h1>
        <p class="text-gray-500">Mọi chuyên mục</p>
        <div
                class="mt-5 grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3 items-center gap-x-4 gap-y-10"
        >
            <!-- Right Side ( width 1/3) -->

            <div
                    class="p-2 border-gray-100 rounded-lg border w-full h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Tin bài hàng đầu</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
            <div
                    class="p-2 border-gray-100 rounded-lg border w-full h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Tin bài hàng đầu</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
            <div
                    class="p-2 border-gray-100 rounded-lg border w-full h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Tin bài hàng đầu</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <h1 class="text-gray-500 font-bold text-3xl">Tổng hợp bài viết</h1>
        <p class="text-gray-500">Từ mọi chuyên mục</p>
        <div
                class="mt-5 grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3 items-center gap-x-4 gap-y-10"
        >
            <!-- Right Side ( width 1/3) -->

            <div
                    class="p-2 border-gray-100 rounded-lg border w-full h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Tin bài hàng đầu</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
            <div
                    class="p-2 border-gray-100 rounded-lg border w-full h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Tin bài hàng đầu</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
            <div
                    class="p-2 border-gray-100 rounded-lg border w-full h-fit bg-white shadow-sm p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Tin bài hàng đầu</h1>
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="w-4 h-4 text-red-500"
                    >
                        <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                d="M8.25 4.5l7.5 7.5-7.5 7.5"
                        />
                    </svg>
                </div>

                <div class="flex flex-col mt-5">
                    <!-- List articles right side -->
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                    <div
                            class="flex flex-row gap-x-4 h-fit border-t border-gray-100 py-4"
                    >
                        <div class="flex flex-col gap-y-1">
                            <div class="flex items-center gap-x-1">
                                <img
                                        src="https://cdn.tgdd.vn/GameApp/3/225241/Screentshots/bao-lao-dong-tin-tuc-va-tap-chi-cap-nhat-lien-tuc-225241-logo-27-06-2020.png"
                                        width="15"
                                        height="15"
                                        class="rounded-full mr-0.5"
                                />
                                <p class="text-gray-500 text-xs font-semibold">
                                    Báo lao động
                                </p>
                            </div>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ
                                USD
                            </p>
                            <p
                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                            >
                                1 giờ trước
                            </p>
                        </div>
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="rounded-lg h-[80px] w-[100px]"
                        />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="py-10 px-8 lg:px-28 bg-white h-fit mt-10">
    <div class="space-y-5">
        <div>
            <img src="${pageContext.request.contextPath}/assets/images/Logo.png" width="300" height="60" />
            <p class="text-lg text-gray-500 font-normal text-left">
                Mang cả thế giới đến cho bạn
            </p>
        </div>
        <div
                class="grid grid-cols-2 tablet:grid-cols-2 lg:grid-cols-6 gap-x-10 gap-y-10"
        >
            <div class="space-y-2">
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Điều khoản
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Chính sách bảo mật
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Trần Quốc Siêu
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Võ Huỳnh anh Nhật
                </p>
            </div>
            <div class="space-y-2">
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Điều khoản
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Chính sách bảo mật
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Trần Quốc Siêu
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Võ Huỳnh anh Nhật
                </p>
            </div>
            <div class="space-y-2">
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Điều khoản
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Chính sách bảo mật
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Trần Quốc Siêu
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Võ Huỳnh anh Nhật
                </p>
            </div>
            <div class="space-y-2">
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Điều khoản
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Chính sách bảo mật
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Trần Quốc Siêu
                </p>
                <p
                        class="text-sm text-gray-400 font-normal text-left hover:text-gray-700 cursor-pointer"
                >
                    Võ Huỳnh anh Nhật
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
