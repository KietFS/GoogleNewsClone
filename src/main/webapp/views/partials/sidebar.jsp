
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div
        class="w-1/5 bg-white h-full flex flex-col py-[93px]"
>
  <!-- list mangaments -->
  <a
          class="flex gap-x-4 w-full px-4 py-8 border-gray-100 border-b border-t hover:bg-blue-50 cursor-pointer items-center"
          href="${pageContext.request.contextPath}/Staff/Admin/User?page=1"
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
          href="${pageContext.request.contextPath}/Staff/Admin/Article?page=1"
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
          href="${pageContext.request.contextPath}/Staff/Admin/Category?page=1"
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
          href="${pageContext.request.contextPath}/Staff/Admin/Tag?page=1"
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

