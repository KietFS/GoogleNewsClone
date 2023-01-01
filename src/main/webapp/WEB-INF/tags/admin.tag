<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
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
<div class="w-screen h-fit flex">
    <div
            class="w-1/5 border-r border-gray-200 bg-white h-screen flex flex-col py-0"
    >
        <!-- list mangaments -->
        <a
                class="flex gap-x-4 w-full px-4 py-8 border-gray-100 border-b border-t hover:bg-blue-50 cursor-pointer items-center"
        >
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="2"
                    stroke="#4b5563"
                    class="w-6 h-6"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z"
                />
            </svg>
            <p class="text-lg text-gray-600 font-semibold">Quản lý người dùng</p>
        </a>
        <a
                class="flex gap-x-4 w-full px-4 py-8 border-gray-100 border-b border-t hover:bg-blue-50 cursor-pointer items-center"
        >
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="2"
                    stroke="#4b5563"
                    class="w-6 h-6"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M12 7.5h1.5m-1.5 3h1.5m-7.5 3h7.5m-7.5 3h7.5m3-9h3.375c.621 0 1.125.504 1.125 1.125V18a2.25 2.25 0 01-2.25 2.25M16.5 7.5V18a2.25 2.25 0 002.25 2.25M16.5 7.5V4.875c0-.621-.504-1.125-1.125-1.125H4.125C3.504 3.75 3 4.254 3 4.875V18a2.25 2.25 0 002.25 2.25h13.5M6 7.5h3v3H6v-3z"
                />
            </svg>

            <p class="text-lg text-gray-600 font-semibold">Quản lý bài viết</p>
        </a>
        <a
                class="flex gap-x-4 w-full px-4 py-8 border-gray-100 border-b border-t hover:bg-blue-50 cursor-pointer items-center"
        >
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="2"
                    stroke="#4b5563"
                    class="w-6 h-6"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M8.25 6.75h12M8.25 12h12m-12 5.25h12M3.75 6.75h.007v.008H3.75V6.75zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0zM3.75 12h.007v.008H3.75V12zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0zm-.375 5.25h.007v.008H3.75v-.008zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z"
                />
            </svg>

            <p class="text-lg text-gray-600 font-semibold">Quản lý danh mục</p>
        </a>
        <a
                class="flex gap-x-4 w-full px-4 py-8 border-gray-100 border-b border-t hover:bg-blue-50 cursor-pointer items-center"
        >
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="2"
                    stroke="#4b5563"
                    class="w-6 h-6"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z"
                />
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M6 6h.008v.008H6V6z"
                />
            </svg>

            <p class="text-lg text-gray-600 font-semibold">Quản lý tags</p>
        </a>
    </div>
    <div class="w-4/5 bg-gray-50 h-screen">
        <div
                class="shadow-lg p-4 flex w-full h-[70px] bg-white justify-between items-center"
        >
            <img src="./assets/images/Logo.png" width="160" height="40" />
            <div class="group inline-block">
                <button class="flex items-center">
              <span
                      class="font-semibold text-left flex-1 text-gray-500 font-bold border-b-2 border-transparent hover:border-blue-500"
              >Xin chào admin</span
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
                    <li
                            class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                    >
                        Tài khoản
                    </li>
                    <li
                            class="rounded-sm px-3 py-1 hover:text-blue-500 text-gray-500 text-lg cursor-pointer"
                    >
                        Đăng xuất
                    </li>
                </ul>
            </div>
        </div>

        <!-- data table here -->
        <jsp:doBody/>
    </div>
</div>
</body>
</html>
