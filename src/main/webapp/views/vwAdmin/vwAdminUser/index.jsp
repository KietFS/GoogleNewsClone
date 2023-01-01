<%--
  Created by IntelliJ IDEA.
  User: TUF
  Date: 12/31/2022
  Time: 5:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div
        class="overflow-x-auto relative shadow-md sm:rounded-lg mx-4 my-16"
>
    <table
            class="w-full text-sm text-left text-gray-500 dark:text-gray-400"
    >
        <thead
                class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400"
        >
        <tr>
            <th scope="col" class="py-3 px-6">Tên người dùng</th>
            <th scope="col" class="py-3 px-6">Email</th>
            <th scope="col" class="py-3 px-6">Tên đăng nhập</th>
            <th scope="col" class="py-3 px-6">Vai trò</th>
            <th scope="col" class="py-3 px-6">Hành động</th>
        </tr>
        </thead>
        <tbody>
        <tr
                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
        >
            <th
                    scope="row"
                    class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
            >
                Đoàn Chấn Hưng
            </th>
            <td class="py-4 px-6">20110508@student.hcmute.edu.vn</td>
            <td class="py-4 px-6">Người dùng</td>
            <td class="py-4 px-6">
                <form
                        name="changeRole"
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/ChangeUserRole"
                >
                    <select
                            onchange="this.form.submit()"
                            name="role"
                            id="role"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <option value="Subcriber" selected>Subcriber</option>
                        <option value="Writer">Writer</option>
                        <option value="Editor">Editor</option>
                    </select>
                </form>
            </td>
            <td class="py-4 px-6">
                <form
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                >
                    <button
                            type="submit"
                            id="id"
                            name="id"
                            value="thayidvaoday"
                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                    >
                        Xóa người dùng
                    </button>
                </form>
            </td>
        </tr>
        <tr
                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
        >
            <th
                    scope="row"
                    class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
            >
                Đoàn Chấn Hưng
            </th>
            <td class="py-4 px-6">20110508@student.hcmute.edu.vn</td>
            <td class="py-4 px-6">Người dùng</td>
            <td class="py-4 px-6">
                <form
                        name="changeRole"
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/ChangeUserRole"
                >
                    <select
                            onchange="this.form.submit()"
                            name="role"
                            id="role"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <option value="Subcriber" selected>Subcriber</option>
                        <option value="Writer">Writer</option>
                        <option value="Editor">Editor</option>
                    </select>
                </form>
            </td>
            <td class="py-4 px-6">
                <form
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                >
                    <button
                            type="submit"
                            id="id"
                            name="id"
                            value="thayidvaoday"
                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                    >
                        Xóa người dùng
                    </button>
                </form>
            </td>
        </tr>
        <tr
                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
        >
            <th
                    scope="row"
                    class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
            >
                Đoàn Chấn Hưng
            </th>
            <td class="py-4 px-6">20110508@student.hcmute.edu.vn</td>
            <td class="py-4 px-6">Người dùng</td>
            <td class="py-4 px-6">
                <form
                        name="changeRole"
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/ChangeUserRole"
                >
                    <select
                            onchange="this.form.submit()"
                            name="role"
                            id="role"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <option value="Subcriber" selected>Subcriber</option>
                        <option value="Writer">Writer</option>
                        <option value="Editor">Editor</option>
                    </select>
                </form>
            </td>
            <td class="py-4 px-6">
                <form
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                >
                    <button
                            type="submit"
                            id="id"
                            name="id"
                            value="thayidvaoday"
                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                    >
                        Xóa người dùng
                    </button>
                </form>
            </td>
        </tr>
        <tr
                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
        >
            <th
                    scope="row"
                    class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
            >
                Đoàn Chấn Hưng
            </th>
            <td class="py-4 px-6">20110508@student.hcmute.edu.vn</td>
            <td class="py-4 px-6">Người dùng</td>
            <td class="py-4 px-6">
                <form
                        name="changeRole"
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/ChangeUserRole"
                >
                    <select
                            onchange="this.form.submit()"
                            name="role"
                            id="role"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <option value="Subcriber" selected>Subcriber</option>
                        <option value="Writer">Writer</option>
                        <option value="Editor">Editor</option>
                    </select>
                </form>
            </td>
            <td class="py-4 px-6">
                <form
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                >
                    <button
                            type="submit"
                            id="id"
                            name="id"
                            value="thayidvaoday"
                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                    >
                        Xóa người dùng
                    </button>
                </form>
            </td>
        </tr>
        <tr
                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
        >
            <th
                    scope="row"
                    class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
            >
                Đoàn Chấn Hưng
            </th>
            <td class="py-4 px-6">20110508@student.hcmute.edu.vn</td>
            <td class="py-4 px-6">Người dùng</td>
            <td class="py-4 px-6">
                <form
                        name="changeRole"
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/ChangeUserRole"
                >
                    <select
                            onchange="this.form.submit()"
                            name="role"
                            id="role"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <option value="Subcriber" selected>Subcriber</option>
                        <option value="Writer">Writer</option>
                        <option value="Editor">Editor</option>
                    </select>
                </form>
            </td>
            <td class="py-4 px-6">
                <form
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                >
                    <button
                            type="submit"
                            id="id"
                            name="id"
                            value="thayidvaoday"
                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                    >
                        Xóa người dùng
                    </button>
                </form>
            </td>
        </tr>
        <tr
                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
        >
            <th
                    scope="row"
                    class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
            >
                Đoàn Chấn Hưng
            </th>
            <td class="py-4 px-6">20110508@student.hcmute.edu.vn</td>
            <td class="py-4 px-6">Người dùng</td>
            <td class="py-4 px-6">
                <form
                        name="changeRole"
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/ChangeUserRole"
                >
                    <select
                            onchange="this.form.submit()"
                            name="role"
                            id="role"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <option value="Subcriber" selected>Subcriber</option>
                        <option value="Writer">Writer</option>
                        <option value="Editor">Editor</option>
                    </select>
                </form>
            </td>
            <td class="py-4 px-6">
                <form
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                >
                    <button
                            type="submit"
                            id="id"
                            name="id"
                            value="thayidvaoday"
                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                    >
                        Xóa người dùng
                    </button>
                </form>
            </td>
        </tr>
        <tr
                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
        >
            <th
                    scope="row"
                    class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
            >
                Đoàn Chấn Hưng
            </th>
            <td class="py-4 px-6">20110508@student.hcmute.edu.vn</td>
            <td class="py-4 px-6">Người dùng</td>
            <td class="py-4 px-6">
                <form
                        name="changeRole"
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/ChangeUserRole"
                >
                    <select
                            onchange="this.form.submit()"
                            name="role"
                            id="role"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <option value="Subcriber" selected>Subcriber</option>
                        <option value="Writer">Writer</option>
                        <option value="Editor">Editor</option>
                    </select>
                </form>
            </td>
            <td class="py-4 px-6">
                <form
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                >
                    <button
                            type="submit"
                            id="id"
                            name="id"
                            value="thayidvaoday"
                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                    >
                        Xóa người dùng
                    </button>
                </form>
            </td>
        </tr>
        <tr
                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
        >
            <th
                    scope="row"
                    class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
            >
                Đoàn Chấn Hưng
            </th>
            <td class="py-4 px-6">20110508@student.hcmute.edu.vn</td>
            <td class="py-4 px-6">Người dùng</td>
            <td class="py-4 px-6">
                <form
                        name="changeRole"
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/ChangeUserRole"
                >
                    <select
                            onchange="this.form.submit()"
                            name="role"
                            id="role"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <option value="Subcriber" selected>Subcriber</option>
                        <option value="Writer">Writer</option>
                        <option value="Editor">Editor</option>
                    </select>
                </form>
            </td>
            <td class="py-4 px-6">
                <form
                        method="post"
                        action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                >
                    <button
                            type="submit"
                            id="id"
                            name="id"
                            value="thayidvaoday"
                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                    >
                        Xóa người dùng
                    </button>
                </form>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
