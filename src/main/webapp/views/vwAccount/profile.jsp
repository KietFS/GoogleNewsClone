<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="profileUser" scope="request" type="com.example.googlenewsclone.beans.User"/>

<t:main>
    <jsp:body>
        <div
                class="flex flex-col lg:flex-row gap-y-2 w-full mt-12 justify-center items-center gap-x-5"
        >
            <div class="h-fit w-[400px] px-4 py-4 gap-y-5 flex flex-col">
                <div
                        class="rounded-full w-[100px] h-[100px] text-white text-[50px] font-bold bg-blue-500 flex flex-col items-center justify-center mx-auto"
                >
                    HK
                </div>
                <h1 class="text-gray-500 text-xl font-semibold text-center">
                    Cập nhật thông tin cá nhân của bạn
                </h1>
                <div class="flex flex-col gap-y-1">
                    <p class="text-gray-600 font-bold ml-2">Tên</p>
                    <input
                            type="text"
                            id="name"
                            name="name"
                            placeholder="Tên của bạn"
                            autofocus
                            required
                            class="w-full border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
                    />
                </div>
                <!-- input email -->
                <div class="flex flex-col gap-y-1">
                    <p class="text-gray-600 font-bold ml-2">Email</p>
                    <input
                            type="text"
                            id="email"
                            name="email"
                            placeholder="Email của bạn"
                            autofocus
                            required
                            class="w-full border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
                    />
                </div>

                <button
                        type="submit"
                        class="bg-blue-500 text-white py-2 rounded-full font-bold mt-4 hover:opacity-50"
                >
                    Thay đổi
                </button>
            </div>
        </div>
    </jsp:body>
</t:main>