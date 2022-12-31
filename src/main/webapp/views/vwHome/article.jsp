<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="article" scope="request" type="com.example.googlenewsclone.beans.Article"/>
<jsp:useBean id="category" scope="request" type="com.example.googlenewsclone.beans.Category"/>
<jsp:useBean id="user" scope="request" type="com.example.googlenewsclone.beans.User"/>
<jsp:useBean id="tags" scope="request" type="java.util.List<com.example.googlenewsclone.beans.Tag>"/>
<jsp:useBean id="revelantArticles" scope="request" type="java.util.List<com.example.googlenewsclone.beans.Article>"/>
<jsp:useBean id="comments" scope="request" type="java.util.List<com.example.googlenewsclone.beans.Comment>"/>
<jsp:useBean id="userComts" scope="request" type="java.util.List<com.example.googlenewsclone.beans.User>"/>
<jsp:useBean id="authUser" scope="session" type="com.example.googlenewsclone.beans.User"/>
<script src="https://cdn.tailwindcss.com"></script>
<t:main>
    <jsp:body>
        <div>
        <!-- container left side va right side -->
        <div
                class="py-10 h-fit px-4 md:px-8 lg:px-56 mx-auto bg-gray-50 flex flex-col gap-y-10"
        >
            <div>
                <div class="mt-5 flex flex-col lg:flex-row gap-x-4 gap-y-5">
                    <!-- Left Side ( width 2/3) -->
                    <div
                            class="p-2 border-gray-100 rounded-lg border w-full  h-fit bg-white shadow-sm p-4 gap-y-1 flex flex-col shadow-lg"
                    >
                        <h1 class="text-gray-500 font-bold text-3xl w-full">
                                ${article.title}
                        </h1>
                        <p class="text-gray-500 mt-1">${article.publish_date}</p>
                        <p class="text-blue-500 mt-1 font-semibold">${user.firstName}</p>
                        <p class="text-red-500 mt-1 font-semibold">Chuyên mục - ${category.catName}</p>
                        <div class="flex w-fit gap-x-2 flex-wrap items-center mt-1">
                            <p class="text-gray-600 text-sm">Tags:</p>
                            <c:forEach items="${tags}" var="t">
                                <a
                                        class="px-2 py-1 rounded-full text-red-900 font-bold bg-red-50 cursor-pointer text-xs"
                                >${t.tagName}</a
                                >
                            </c:forEach>
                        </div>
                            ${article.content}
                    </div>
                </div>
                <!-- Right Side ( width 1/3) -->
                <div
                        class="border-gray-100 rounded-lg border w-full mt-10  h-fit bg-white shadow-lg p-4"
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
                        <c:forEach items="${revelantArticles}" var="rA">
                            <c:if test="${rA.articleID != article.articleID}">
                                <div
                                        class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                >
                                    <div class="flex flex-col gap-y-1">

                                        <p
                                                class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                                        >
                                                ${rA.title}
                                        </p>
                                        <p
                                                class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                                        >
                                                ${rA.publish_date}
                                        </p>
                                    </div>
                                    <img
                                            src="${rA.thumbs_img}"
                                            class="rounded-lg h-[80px] w-[100px]"
                                    />
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!-- phan binh luan -->
        <div class="lg:px-56 md:px-8 px-4 mt-10">
            <p class="text-lg text-gray-600 font-semibold mb-4">
                Bình luận của người đọc
            </p>
            <!-- chua cac binh luan -->
            <div class="flex flex-col gap-y-2">
                <c:forEach items="${comments}" var="com">
                    <c:forEach items="${userComts}" var="uC">
                        <div class="flex flex-col">
                        <c:if test="${uC.userID == com.userID}">
                            <div
                            class="flex gap-x-4 w-full border border-gray-100 shadow-lg bg-white w-full px-4 py-2 rounded-lg mt-2"
                            >
                            <img
                                    src="https://pbs.twimg.com/profile_images/1564398871996174336/M-hffw5a_400x400.jpg"
                                    class="w-[50px] h-[50px] rounded-full border-gray-100"
                            />
                            <div class="flex flex-col gap-y-1">
                                <p class="text-blue-500 font-bold text-sm">
                                        ${uC.username}
                                </p>
                                <p class="text-black-500 text-sm">
                                        ${com.date}
                                </p>
                                <p class="text-gray-600 text-sm">
                                        ${com.content}
                                </p>
                            </div>
                        </c:if>
                        </div>
                    </c:forEach>
                    </div>
                </c:forEach>
                <!-- Them binh luan cua ban -->
                <c:choose>
                    <c:when test="${auth}">
                        <form action="${pageContext.request.contextPath}/Home/AddComment" method="post">
                            <input type="hidden" id="userid" name="userid" value="${authUser.userID}">
                            <input type="hidden" id="articleid" name="articleid" value="${article.articleID}">
                            <div
                                    class="flex gap-x-4 w-full border border-gray-100 shadow-lg bg-white w-full px-4 py-2 rounded-lg mt-2"
                            >
                                <img
                                        src="https://pbs.twimg.com/profile_images/1564398871996174336/M-hffw5a_400x400.jpg"
                                        class="w-[50px] h-[50px] rounded-full border-gray-100"
                                />
                                <div class="flex flex-col gap-y-1 w-full">
                                    <p class="text-blue-500 font-bold text-sm w-full">
                                            ${authUser.username}
                                    </p>
                                    <textarea
                                            class="border border-gray-200 h-[80px] rounded-lg w-[100%] flex items-start text-xs px-2 py-1"
                                            id="content"
                                            name="content"
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
                    </c:when>
                    <c:otherwise>
                            <a class=" py-2 bg-blue-50 mt-4  text-blue-900 font-bold rounded-lg text-center" href="${pageContext.request.contextPath}/Account/Login"> Đăng nhập ngay để bình luận</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
        </div>
        </div>
    </jsp:body>
</t:main>


