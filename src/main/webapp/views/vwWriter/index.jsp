<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean
        id="articles"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.Article>"
/>

<t:writer>
    <jsp:body>
        <div class="mt-10">
            <div class="flex justify-between items-center px-8 w-full">
                <h1 class="text-gray-600 text-3xl font-bold">
                    Quản lý bài viết của bạn
                </h1>

                <div class="flex items-center gap-x-4">
                <form
                        name="changeArticleStatus"
                        method="get"
                        action="${pageContext.request.contextPath}/Staff/Writer/Index"
                >
                    <input type="hidden" name="page" value=${page}>
                    <select
                            onchange="this.form.submit()"
                            name="statusid"
                            id="statusid"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <option value="0" ${statusid == 0 ? "selected" : ""}>
                           Tất cả
                        </option>
                        <option value="1" ${statusid == 1 ? "selected" : ""}>
                            Đang chờ
                        </option>
                        <option value="3" ${statusid == 3 ? "selected" : ""}>Bị từ chối</option>
                        <option value="4" ${statusid == 4 ? "selected" : ""}>Đã xuất bản</option>
                        <option value="2" ${statusid == 2 ? "selected" : ""}>Chờ xuất bản</option>
                    </select>
                </form>
                    <form
                            name="changePage"
                            method="get"
                            action="${pageContext.request.contextPath}/Staff/Writer/Index"
                    >
                        <input type="hidden" name="statusid" value=${statusid}  />
                        <select
                                onchange="this.form.submit()"
                                name="page"
                                id="page"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        >
                            <c:forEach begin="1" end="${maxPage}" var="p">
                            <option value=${p} ${page == p ? "selected" : ""}>
                              Trang ${p}
                            </option>
                            </c:forEach>
                        </select>
                    </form>
                </div>

            </div>

            <div
                    class="overflow-x-auto relative shadow-md sm:rounded-lg mx-8 my-8 border border-gray-200"
            >
                <table
                        class="w-full text-sm text-left text-gray-500 dark:text-gray-400"
                >
                    <thead
                            class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400"
                    >
                    <tr>
                        <th scope="col" class="py-3 px-6">ID</th>
                        <th scope="col" class="py-3 px-6">Tiêu đề</th>
                        <th scope="col" class="py-3 px-6">Trạng thái</th>
                        <th scope="col" class="py-3 px-6">Hành động</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${articles}" var="a">
                        <c:choose>
                            <c:when test="${a.statusID == 1}">
                                <tr
                                        class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
                                >
                                    <th
                                            scope="row"
                                            class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                                    >
                                            ${a.articleID}
                                    </th>
                                    <td class="py-4 px-6">
                                        <p class="text-gray-500 text-sm w-[400px] truncate">
                                                ${a.title}
                                        </p>
                                    </td>


                                    <td class="py-4 px-6">
                                        <p
                                                class="text-yellow-800 font-bold bg-yellow-50 rounded-full px-2 py-1 text-center"
                                        >
                                            Đang chờ
                                        </p>
                                    </td>
                                    <td class="py-4 px-6">
                                        <div class="flex flex-row gap-x-2 items-center">
                                        <a href="${pageContext.request.contextPath}/Staff/Writer/Edit?id=${a.articleID}" class="rounded-full p-2 hover:bg-gray-200">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="gray" class="w-6 h-6">
                                                <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                            </svg>
                                        </a>
                                            <a href="${pageContext.request.contextPath}/Staff/Writer/Delete?id=${a.articleID}" class="rounded-full p-2 hover:bg-gray-200">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="gray" class="w-6 h-6">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                                </svg>

                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${a.statusID == 3}">
                                <tr
                                        class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
                                >
                                    <th
                                            scope="row"
                                            class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                                    >
                                            ${a.articleID}
                                    </th>
                                    <td class="py-4 px-6">
                                        <p class="text-gray-500 text-sm w-[400px] truncate">
                                                ${a.title}
                                        </p>
                                    </td>


                                    <td class="py-4 px-6">
                                        <p
                                                class="text-red-800 font-bold bg-red-50 rounded-full px-2 py-1 text-center"
                                        >
                                            Bị từ chối
                                        </p>
                                    </td>
                                    <td class="py-4 px-6">
                                        <div class="flex flex-row gap-x-2 items-center">
                                            <a href="${pageContext.request.contextPath}/Staff/Writer/Edit?id=${a.articleID}" class="rounded-full p-2 hover:bg-gray-200">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="gray" class="w-6 h-6">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                                </svg>
                                            </a>
                                            <form method="post" action="${pageContext.request.contextPath}/Staff/Writer/Delete">
                                                <input type="hidden" name="id" value=${a.articleID} />
                                                <button class="rounded-full p-2 hover:bg-gray-200" type="submit">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="gray" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                                    </svg>

                                                </button>
                                            </form>

                                        </div>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${a.statusID == 2}">
                                <tr
                                        class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
                                >
                                    <th
                                            scope="row"
                                            class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                                    >
                                            ${a.articleID}
                                    </th>
                                    <td class="py-4 px-6">
                                        <p class="text-gray-500 text-sm w-[400px] truncate">
                                                ${a.title}
                                        </p>
                                    </td>

                                    <td class="py-4 px-6">
                                        <p
                                                class="text-blue-800 font-bold bg-blue-50 rounded-full px-2 py-1 text-center"
                                        >
                                            Đã duyệt
                                        </p>
                                    </td>
                                    <td class="py-4 px-6">
                                        <div class="flex flex-row gap-x-2 items-center">
                                            <a href="${pageContext.request.contextPath}/Staff/Writer/Edit?id=${a.articleID}" class="rounded-full p-2 hover:bg-gray-200">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="gray" class="w-6 h-6">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                                </svg>
                                            </a>
                                            <form method="post" action="${pageContext.request.contextPath}/Staff/Writer/Delete">
                                                <input type="hidden" name="id" value=${a.articleID} />
                                                <button class="rounded-full p-2 hover:bg-gray-200" type="submit">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="gray" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                                    </svg>

                                                </button>
                                            </form>

                                        </div>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${a.statusID == 4}">
                                <tr
                                        class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
                                >
                                    <th
                                            scope="row"
                                            class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                                    >
                                            ${a.articleID}
                                    </th>
                                    <td class="py-4 px-6">
                                        <p class="text-gray-500 text-sm w-[400px] truncate">
                                                ${a.title}
                                        </p>
                                    </td>

                                    <td class="py-4 px-6">
                                        <p
                                                class="text-green-800 font-bold bg-green-50 rounded-full px-2 py-1 text-center"
                                        >
                                            Đã xuất bản
                                        </p>
                                    </td>
                                    <td class="py-4 px-6">
                                        <div class="flex flex-row gap-x-2 items-center">
                                            <a href="${pageContext.request.contextPath}/Staff/Writer/Edit?id=${a.articleID}" class="rounded-full p-2 hover:bg-gray-200">
                                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="gray" class="w-6 h-6">
                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
                                                </svg>
                                            </a>
                                            <form method="post" action="${pageContext.request.contextPath}/Staff/Writer/Delete">
                                                <input type="hidden" name="id" value=${a.articleID} />
                                                <button class="rounded-full p-2 hover:bg-gray-200" type="submit">
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="gray" class="w-6 h-6">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                                                    </svg>

                                                </button>
                                            </form>

                                        </div>
                                    </td>
                                </tr>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </jsp:body>
</t:writer>