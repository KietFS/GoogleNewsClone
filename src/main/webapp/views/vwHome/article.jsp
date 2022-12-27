<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<!-- container left side va right side -->
<div
        class="py-10 h-fit px-4 md:px-8 lg:px-56 mx-auto bg-gray-50 flex flex-col gap-y-10"
>
    <div>
        <div class="mt-5 flex flex-col lg:flex-row gap-x-4 gap-y-5">
            <!-- Left Side ( width 2/3) -->
            <div
                    class="p-2 border-gray-100 rounded-lg border w-full lg:w-2/3 h-fit bg-white shadow-sm p-4 gap-y-1 flex flex-col shadow-lg"
            >
                <h1 class="text-gray-500 font-bold text-3xl w-full">
                    Chủ tịch nước kết thúc thăm Hàn Quốc, mang về cam kết 15 tỉ USD
                </h1>
                <p class="text-gray-500 mt-1">Báo lao động, Thứ tư, 7/12/2022</p>
                <p class="text-blue-500 mt-1 font-semibold">Trương Giang</p>
                <p class="text-red-500 mt-1 font-semibold">
                    Chuyên mục - Chính trị
                </p>
                <div class="flex w-fit gap-x-2 flex-wrap items-center mt-1">
                    <p class="text-gray-600 text-sm">Tags:</p>
                    <a
                            class="px-2 py-1 rounded-full text-red-900 font-bold bg-red-50 cursor-pointer text-xs"
                    >chinh-tri</a
                    >
                    <a
                            class="px-2 py-1 rounded-full text-red-900 font-bold bg-red-50 cursor-pointer text-xs"
                    >han-quoc</a
                    >
                    <a
                            class="px-2 py-1 rounded-full text-red-900 font-bold bg-red-50 cursor-pointer text-xs"
                    >hom-nay</a
                    >
                </div>
                <img
                        src="https://media-cdn-v2.laodong.vn/storage/newsportal/2022/12/7/1124723/Chu_Tich_Nuoc_Nguyen.jpeg"
                        class="w-full h-full mt-2 rounded-lg"
                />
                <!-- contents of the article -->
                <div class="flex flex-col gap-y-2">
                    <p>
                        Đêm 6, rạng sáng 7.12, chuyên cơ chở Chủ tịch nước Nguyễn Xuân
                        Phúc và đoàn cấp cao Việt Nam đã về đến sân bay quốc tế Nội Bài,
                        thủ đô Hà Nội, kết thúc thành công chuyến thăm cấp nhà nước Đại
                        Hàn Dân Quốc theo lời mời của Tổng thống Yoon Suk-yeol.
                    </p>
                    <p>
                        Đúng như kỳ vọng của nhân dân hai nước, với sự hội tụ những điều
                        kiện cần và đủ, niềm tin và quyết tâm chính trị rất cao của lãnh
                        đạo cấp cao hai nước, trong chuyến thăm, Chủ tịch nước Nguyễn
                        Xuân Phúc và Tổng thống Yoon Suk-yeol đã cùng nhất trí ra Tuyên
                        bố chung về việc nâng cấp quan hệ giữa Việt Nam và Hàn Quốc lên
                        mức Đối tác chiến lược toàn diện, chính thức mở ra chương mới
                        trong quan hệ Việt-Hàn với tương lai tương sáng của hai đất
                        nước, hai dân tộc.
                    </p>
                    <p>
                        Đêm 6, rạng sáng 7.12, chuyên cơ chở Chủ tịch nước Nguyễn Xuân
                        Phúc và đoàn cấp cao Việt Nam đã về đến sân bay quốc tế Nội Bài,
                        thủ đô Hà Nội, kết thúc thành công chuyến thăm cấp nhà nước Đại
                        Hàn Dân Quốc theo lời mời của Tổng thống Yoon Suk-yeol.
                    </p>
                </div>
            </div>
            <!-- Right Side ( width 1/3) -->
            <div
                    class="border-gray-100 rounded-lg border w-full lg:w-1/3 h-fit bg-white shadow-lg p-4"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-red-500">Bài viết liên quan</h1>
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
    <!-- phan binh luan -->
    <div>
        <p class="text-lg text-gray-600 font-semibold mb-4">
            Bình luận của người dùng
        </p>
        <!-- chua cac binh luan -->
        <div class="flex flex-col gap-y-2">
            <div
                    class="flex gap-x-4 w-full border border-gray-100 shadow-lg bg-white w-full lg:w-2/3 px-4 py-2 rounded-lg"
            >
                <img
                        src="https://pbs.twimg.com/profile_images/1564398871996174336/M-hffw5a_400x400.jpg"
                        class="w-[50px] h-[50px] rounded-full border-gray-100"
                />
                <div class="flex flex-col gap-y-1">
                    <p class="text-blue-500 font-bold text-sm">
                        Michael Benjamin Jordan
                    </p>
                    <p class="text-gray-600 text-sm">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Perferendis dicta consequuntur enim officiis a, dolorem earum
                        corporis tenetur ducimus magnam, natus reprehenderit. Eaque
                        incidunt accusantium totam soluta odit sunt nisi.
                    </p>
                </div>
            </div>
            <div
                    class="flex gap-x-4 w-full border border-gray-100 shadow-lg bg-white w-full lg:w-2/3 px-4 py-2 rounded-lg"
            >
                <img
                        src="https://pbs.twimg.com/profile_images/1564398871996174336/M-hffw5a_400x400.jpg"
                        class="w-[50px] h-[50px] rounded-full border-gray-100"
                />
                <div class="flex flex-col gap-y-1">
                    <p class="text-blue-500 font-bold text-sm">
                        Michael Benjamin Jordan
                    </p>
                    <p class="text-gray-600 text-sm">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Perferendis dicta consequuntur enim officiis a, dolorem earum
                        corporis tenetur ducimus magnam, natus reprehenderit. Eaque
                        incidunt accusantium totam soluta odit sunt nisi.
                    </p>
                </div>
            </div>
            <div
                    class="flex gap-x-4 w-full border border-gray-100 shadow-lg bg-white w-full lg:w-2/3 px-4 py-2 rounded-lg"
            >
                <img
                        src="https://pbs.twimg.com/profile_images/1564398871996174336/M-hffw5a_400x400.jpg"
                        class="w-[50px] h-[50px] rounded-full border-gray-100"
                />
                <div class="flex flex-col gap-y-1">
                    <p class="text-blue-500 font-bold text-sm">
                        Michael Benjamin Jordan
                    </p>
                    <p class="text-gray-600 text-sm">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Perferendis dicta consequuntur enim officiis a, dolorem earum
                        corporis tenetur ducimus magnam, natus reprehenderit. Eaque
                        incidunt accusantium totam soluta odit sunt nisi.
                    </p>
                </div>
            </div>
            <!-- Them binh luan cua ban -->
            <form>
                <div
                        class="flex gap-x-4 w-full border border-gray-100 shadow-lg bg-white w-full lg:w-2/3 px-4 py-2 rounded-lg"
                >
                    <img
                            src="https://pbs.twimg.com/profile_images/1564398871996174336/M-hffw5a_400x400.jpg"
                            class="w-[50px] h-[50px] rounded-full border-gray-100"
                    />
                    <div class="flex flex-col gap-y-1 w-full">
                        <p class="text-blue-500 font-bold text-sm w-full">
                            Michael Benjamin Jordan
                        </p>
                        <textarea
                                class="border border-gray-200 h-[80px] rounded-lg w-[100%] flex items-start text-xs px-2 py-1"
                        ></textarea>
                        <div class="flex flex-end mt-4">
                            <button
                                    class="text-blue-900 bg-blue-50 px-2 py-1 text-sm w-fit rounded-full font-bold"
                            >
                                Đăng bình luận
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="py-10 px-8 lg:px-28 bg-white h-fit mt-10">
    <div class="space-y-5">
        <div>
            <img src="./assets/images/Logo.png" width="300" height="60" />
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


