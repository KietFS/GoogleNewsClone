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
        id="allCategories"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.Category>"
/>
<jsp:useBean
        id="allParentCategories"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.ParentCategory>"
/>

<t:admin>
    <jsp:body>
        <div class="mt-10">
            <div class="flex w-full justify-between items-center px-4">
                <h1 class="text-gray-600 text-3xl font-bold w-fit">
                    Quản lý danh mục
                </h1>
                <form class="flex gap-x-2 items-center">
                    <div>
                        <input
                                type="text"
                                id="first_name"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm w-[300px] rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Tên danh mục"
                                required
                        />
                    </div>
                    <select
                            id="parentId"
                            class="bg-gray-50 w-[200px] border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >

                        <c:forEach items="${allParentCategories}" var="p">
                            <option value="${p.pCatID}">${p.pCatName}</option>
                        </c:forEach>

                    </select>

                    <button
                            type="button"
                            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800"
                    >
                        Thêm danh mục
                    </button>
                </form>
            </div>

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

                        <th scope="col" class="py-3 px-6">Tên danh mục</th>
                        <th scope="lol" class="py-3 px-6">Danh mục cha</th>
                        <th scope="col" class="py-3 px-6 flex">Hành động</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- map data ra o day -->

                    <c:forEach items="${allCategories}" var="c">
                    <tr
                            class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
                    >
                        <th
                                scope="row"
                                class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                        >
                            ${c.catID}
                        </th>
                        <td class="py-4 px-6">
                            <input
                                    class="truncate text-gray-500 text-sm w-[450px] px-2 py-2 border border-gray-200 bg-gray-100 rounded-lg"
                                    value="${c.catName}"
                            />
                        </td>
                        <td class="py-4 px-6">
                            <select
                                    id="countries"
                                    class="bg-gray-50 w-[350px] border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                            >
                                <c:forEach items="${allParentCategories}" var="p">
                                    <option ${p.pCatID == c.pCatID ? "selected" : ""} value="${p.pCatID}">${p.pCatName}</option>
                                </c:forEach>

                            </select>
                        </td>

                        <td class="py-4 px-6 flex gap-x-2 items-center">
                            <form
                                    method="post"
                                    action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                                    class="flex gap-x-2"
                            >
                                <button
                                        type="submit"
                                        id="id"
                                        name="id"
                                        value="thayidvaoday"
                                        class="font-medium text-blue-600 dark:text-blue-500 hover:underline p-2 rounded-full items-center justify-center hover:bg-gray-200"
                                >
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            fill="none"
                                            viewBox="0 0 24 24"
                                            stroke-width="1.5"
                                            stroke="gray"
                                            class="w-6 h-6"
                                    >
                                        <path
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                                d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
                                        />
                                    </svg>
                                </button>
                            </form>
                            <form
                                    method="post"
                                    action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                                    class="flex gap-x-2"
                            >
                                <button
                                        type="submit"
                                        id="id"
                                        name="id"
                                        value="thayidvaoday"
                                        class="font-medium text-blue-600 dark:text-blue-500 hover:underline p-2 rounded-full items-center justify-center hover:bg-gray-200"
                                >
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            fill="none"
                                            viewBox="0 0 24 24"
                                            stroke-width="1.5"
                                            stroke="gray"
                                            class="w-6 h-6"
                                    >
                                        <path
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                                d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0"
                                        />
                                    </svg>
                                </button>
                            </form>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </jsp:body>
</t:admin>

