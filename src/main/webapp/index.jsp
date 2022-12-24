<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Google Tin tức</title>
    <script src="https://cdn.tailwindcss.com"></script>
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
            <button
                    class="bg-transparent text-blue-700 font-semibold hover:opacity-50 py-2 px-4 border border-blue-500 rounded"
            >
                Đăng ký
            </button>
            <button
                    class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded"
            >
                Đăng nhập
            </button>
        </div>
    </div>
    <div
            class="flex lg:hidden justify-between w-fit items-center gap-x-2 mt-4"
    >
        <button
                class="bg-transparent text-blue-700 font-semibold hover:opacity-50 py-2 px-4 border border-blue-500 rounded"
        >
            Đăng ký
        </button>
        <button
                class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded"
        >
            Đăng nhập
        </button>
    </div>
    <div
            class="w-fit overflow-auto mx-auto flex flex-wrap items-center gap-y-5 gap-x-5 lg:gap-x-10 mt-8"
    >
        <p
                class="border-b-4 border-blue-500 w-fit pb-1 text-blue-500 font-semibold cursor-pointer"
        >
            Trang chủ
        </p>
        <p
                class="border-b-2 border-transparent w-fit pb-1 text-gray-600 font-semibold cursor-pointer"
        >
            Dành cho bạn
        </p>
        <p
                class="border-b-2 border-transparent w-fit pb-1 text-gray-600 font-semibold cursor-pointer"
        >
            Đang theo dõi
        </p>
        <p
                class="border-b-2 border-transparent w-fit pb-1 text-gray-600 font-semibold cursor-pointer"
        >
            Doanh nghiệp
        </p>
        <p
                class="border-b-2 border-transparent w-fit pb-1 text-gray-600 font-semibold cursor-pointer"
        >
            Giải trí
        </p>
        <p
                class="border-b-2 border-transparent w-fit pb-1 text-gray-600 font-semibold cursor-pointer"
        >
            Thể thao
        </p>
        <p
                class="border-b-2 border-transparent w-fit pb-1 text-gray-600 font-semibold cursor-pointer"
        >
            Thế giới
        </p>
        <p
                class="border-b-2 border-transparent w-fit pb-1 text-gray-600 font-semibold cursor-pointer"
        >
            Việt Nam
        </p>
    </div>
</header>

<div
        class="py-10 h-fit px-4 md:px-8 lg:px-56 mx-auto bg-gray-50 flex flex-col gap-y-10"
>
    <div>
        <h1 class="text-gray-500 font-bold text-3xl">Tin vắn cho bạn</h1>
        <p class="text-gray-500">Thứ tư, 7/12/2022</p>
        <div class="mt-5 flex flex-col lg:flex-row gap-x-4 gap-y-5">
            <!-- Left Side ( width 2/3) -->
            <div
                    class="p-2 border-gray-100 rounded-lg border w-full lg:w-2/3 h-fit bg-white shadow-sm p-4 gap-y-5 flex flex-col"
            >
                <!-- Title trong the bao noi bat -->
                <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                    <h1 class="text-xl text-blue-600">Tin bài hàng đầu</h1>
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
                    <div class="w-2/5">
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                width="250"
                                height="200"
                                class="rounded-lg"
                        />
                        <h1
                                class="text-sm md:text-lg lg:text-xl text-gray-500 font-semibold mt-4 cursor-pointer"
                        >
                            HLV Park phát biểu sau khi nhận huân chương Heungin
                        </h1>
                        <div class="flex justify-between items-center w-full mt-2">
                            <p class="text-gray-500 mt-1 text-sm">12 giờ trước</p>
                            <p
                                    class="text-white rounded-full px-2 py-1 bg-blue-500 w-fit text-xs"
                            >
                                Premium
                            </p>
                        </div>
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
                    <div class="w-2/5">
                        <img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                width="250"
                                height="200"
                                class="rounded-lg"
                        />
                        <h1
                                class="text-sm md:text-lg lg:text-xl text-gray-500 font-semibold mt-4 cursor-pointer"
                        >
                            HLV Park phát biểu sau khi nhận huân chương Heungin
                        </h1>
                        <div class="flex justify-between items-center w-full mt-2">
                            <p class="text-gray-500 mt-1 text-sm">12 giờ trước</p>
                            <p
                                    class="text-white rounded-full px-2 py-1 bg-blue-500 w-fit text-xs"
                            >
                                Premium
                            </p>
                        </div>
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
        <h1 class="text-gray-500 font-bold text-3xl">Tin theo chủ đề</h1>
        <p class="text-gray-500">Thứ tư, 7/12/2022</p>
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
</body>
</html>
