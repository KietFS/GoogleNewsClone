<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="w-1/5 bg-white h-full flex flex-col py-[93px]">
    <!-- list mangaments -->

    <a
            class="flex gap-x-4 w-full px-4 py-8 border-gray-100 border-b border-t hover:bg-blue-50 cursor-pointer items-center"
            href="${pageContext.request.contextPath}/Staff/Writer/Index"
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

        <p class="text-lg text-gray-600 font-semibold">Quản lý bài viết cá nhân</p>
    </a>
    <a
            class="flex gap-x-4 w-full px-4 py-8 border-gray-100 border-b border-t hover:bg-blue-50 cursor-pointer items-center"
            href="${pageContext.request.contextPath}/Staff/Writer/Add"
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
                    d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"
            />
        </svg>

        <p class="text-lg text-gray-600 font-semibold">Viết bài</p>
    </a>
</div>
