<%--
  Created by IntelliJ IDEA.
  User: TUF
  Date: 12/31/2022
  Time: 5:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean
        id="allArticles"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.Article>"
/>

<t:admin>
    <jsp:body>
        <div class="mt-10">
            <h1 class="text-gray-600 text-3xl font-bold mx-4">
                Quản lý bài viết
            </h1>

            <div
                    class="overflow-x-auto relative shadow-md sm:rounded-lg mx-4 mt-8 border border-gray-100"
            >
                <table
                        class="w-full text-sm text-left text-gray-500 dark:text-gray-400"
                >
                    <thead
                            class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400"
                    >
                    <tr>
                        <th scope="col" class="py-3 px-6">ID</th>
                        <th scope="col" class="py-3 px-6">Tên bài viết</th>
                        <th scope="col" class="py-3 px-6">Lượt xem</th>
                        <th scope="col" class="py-3 px-6">Trạng thái</th>
                        <th scope="col" class="py-3 px-6">Hành động</th>
                        <th scope="col" class="py-3 px-3">Xem</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${allArticles}" var="a">
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
                            <p class="truncate text-gray-500 text-sm max-w-[300px]">
                                ${a.title}
                            </p>
                        </td>
                        <td class="py-4 px-6">${a.views}</td>
                        <td class="py-4 px-6">
                            <form
                                    name="changeArticleStatus"
                                    method="post"
                                    action="${pageContext.request.contextPath}/Staff/Admin/ChangeArticleStatus"
                            >
                                <input type="hidden" name="articleid" id="articleid" value="${a.articleID}">
                                <select
                                        onchange="this.form.submit()"
                                        name="statusid"
                                        id="statusid"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                >
                                    <option value="1" ${a.statusID == 1 ? "selected" : ""}>
                                        Chưa được duyệt
                                    </option>
                                    <option value="3" ${a.statusID == 3 ? "selected" : ""}>Bị từ chối</option>
                                    <option value="4" ${a.statusID == 4 ? "selected" : ""}>Đã xuất bản</option>
                                    <option value="2" ${a.statusID == 2 ? "selected" : ""}>Chờ xuất bản</option>
                                </select>
                            </form>
                        </td>
                        <td class="py-4 px-6">
                            <form
                                    method="post"
                                    action="${pageContext.request.contextPath}/Staff/Admin/DeleteArticle"
                            >
                                <button
                                        type="submit"
                                        name="articleid"
                                        value="${a.articleID}"
                                        class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                                >
                                    Xóa bài viết
                                </button>
                            </form>
                        </td>
                        <td class="py-4 px-6">
                            <a href="${pageContext.request.contextPath}/Home/Article?id=${a.articleID}">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="gray" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M13.19 8.688a4.5 4.5 0 011.242 7.244l-4.5 4.5a4.5 4.5 0 01-6.364-6.364l1.757-1.757m13.35-.622l1.757-1.757a4.5 4.5 0 00-6.364-6.364l-4.5 4.5a4.5 4.5 0 001.242 7.244" />
                                </svg>

                            </a>
                        </td>

                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </jsp:body>
</t:admin>

