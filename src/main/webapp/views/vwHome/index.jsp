<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="topArticles" scope="request" type="java.util.List<com.example.googlenewsclone.beans.Article>"/>
<jsp:useBean id="newestArticles" scope="request" type="java.util.List<com.example.googlenewsclone.beans.Article>"/>
<jsp:useBean id="randomArticles" scope="request" type="java.util.List<com.example.googlenewsclone.beans.Article>"/>
<jsp:useBean id="categories" scope="request" type="java.util.List<com.example.googlenewsclone.beans.Category>"/>

<script src="https://cdn.tailwindcss.com"></script>

<t:main>
    <jsp:body>
        <div
                class="py-10 h-fit px-4 md:px-8 lg:px-56 mx-auto bg-gray-50 flex flex-col gap-y-10"
        >
            <div>
                <h1 class="text-gray-500 font-bold text-3xl">Tin nổi bật trong tuần</h1>
                <p class="text-gray-500">
                    <c:set var="currentDate" value="<%=new java.util.Date()%>"/>
                    <fmt:formatDate value="${currentDate}" type="both"/> <br/>
                </p>
                <div class="mt-5 flex flex-col lg:flex-row gap-x-4 gap-y-5">
                    <!-- Left Side ( width 2/3) -->
                    <div
                            class="p-2 border-gray-100 rounded-lg border w-full lg:w-2/3 h-fit bg-white shadow-sm p-4 gap-y-5 flex flex-col"
                    >
                        <!-- Title trong the bao noi bat -->
                        <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                            <h1 class="text-xl text-blue-600">Bài viết nổi bật</h1>
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
                        <c:forEach items="${topArticles}" var="tA" begin="0" end="1">
                            <div
                                    class="px-2 py-8 border-t border-b-1 border-gray-200 w-full h-[320px] flex gap-x-5"
                            >
                                <!-- Main articles -->
                                <div class="w-2/5 flex flex-col gap-y-2">
                                    <img
                                            src="${tA.thumbs_img}"
                                            width="400"
                                            height="300"
                                            class="rounded-lg w-full"
                                    />
                                    <a href="${pageContext.request.contextPath}/Home/Article?id=${tA.articleID}"
                                       class="text-sm md:text-lg lg:text-xl hover:underline text-gray-500 font-semibold cursor-pointer"
                                    >
                                            ${tA.title}
                                    </a>
                                    <div class="flex justify-between items-center w-2/3">
                                        <p class="text-gray-500 mt-1 text-sm">${tA.publish_date}</p>
                                        <c:choose>
                                            <c:when test="${tA.premium}">
                                                <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                    Premium
                                                </p>
                                            </c:when>
                                            <c:otherwise>
                                                <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                    Guest
                                                </p>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <c:forEach items="${categories}" var="c">
                                        <c:if test="${c.catID == tA.catID}">
                                            <p class="text-sm text-red-500 font-bold">
                                                    ${c.catName}
                                            </p>
                                        </c:if>
                                    </c:forEach>
                                </div>
                                <!-- List articles -->
                                <div class="flex flex-col w-3/5 gap-y-4">
                                    <p class="text-gray-600 text-sm">
                                        ${tA.subContent}
                                    </p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!-- Right Side ( width 1/3) -->
                    <div
                            class="border-gray-100 rounded-lg border w-full lg:w-1/3 h-fit bg-white shadow-sm p-4"
                    >
                        <!-- Title trong the bao noi bat -->
                        <div class="flex items-center gap-x-1 w-fit cursor-pointer">
                            <h1 class="text-xl text-red-500">Bài viết nổi bật</h1>
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
                            <c:forEach items="${topArticles}" var="tA" begin="6" end="9">
                                <a href="${pageContext.request.contextPath}/Home/Article?id=${tA.articleID}">
                                    <div
                                            class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                    >
                                        <div class="flex flex-col gap-y-1">
                                            <c:choose>
                                                <c:when test="${tA.premium}">
                                                    <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                        Premium
                                                    </p>
                                                </c:when>
                                                <c:otherwise>
                                                    <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                        Guest
                                                    </p>
                                                </c:otherwise>
                                            </c:choose>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
                                            >
                                                    ${tA.title}
                                            </p>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                                            >
                                                    ${tA.publish_date}
                                            </p>
                                        </div>
                                        <img
                                                src="${tA.thumbs_img}"
                                                class="rounded-lg h-[80px] w-[100px]"
                                        />
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <h1 class="text-gray-500 font-bold text-3xl">
                    Bài viết được xem nhiều nhất
                </h1>
                <p class="text-gray-500">Mọi chuyên mục</p>
                <div
                        class="mt-5 grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3  gap-x-4 gap-y-10"
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

                        <div class="flex flex-col mt-3">
                            <!-- List articles right side -->
                            <c:forEach items="${topArticles}" var="tA" begin="0" end="2">
                                <a href="${pageContext.request.contextPath}/Home/Article?id=${tA.articleID}">
                                    <div
                                            class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                    >
                                        <div class="flex flex-col gap-y-1">
                                            <div class="flex items-center gap-x-1">
                                                <c:choose>
                                                    <c:when test="${tA.premium}">
                                                        <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Premium
                                                        </p>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Guest
                                                        </p>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
                                            >
                                                    ${tA.title}
                                            </p>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                                            >
                                                    ${tA.publish_date}
                                            </p>
                                        </div>
                                        <img
                                                src="${tA.thumbs_img}"
                                                class="rounded-lg h-[80px] w-[100px]"
                                        />
                                    </div>
                                </a>
                            </c:forEach>
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

                        <div class="flex flex-col mt-3">
                            <!-- List articles right side -->
                            <c:forEach items="${topArticles}" var="tA" begin="3" end="5">
                                <a href="${pageContext.request.contextPath}/Home/Article?id=${tA.articleID}">
                                    <div
                                            class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                    >
                                        <div class="flex flex-col gap-y-1">
                                            <div class="flex items-center gap-x-1">
                                                <c:choose>
                                                    <c:when test="${tA.premium}">
                                                        <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Premium
                                                        </p>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Guest
                                                        </p>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
                                            >
                                                    ${tA.title}
                                            </p>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                                            >
                                                    ${tA.publish_date}
                                            </p>
                                        </div>
                                        <img
                                                src="${tA.thumbs_img}"
                                                class="rounded-lg h-[80px] w-[100px]"
                                        />
                                    </div>
                                </a>
                            </c:forEach>
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

                        <div class="flex flex-col mt-3">
                            <!-- List articles right side -->
                            <c:forEach items="${topArticles}" var="tA" begin="6" end="8">
                                <a href="${pageContext.request.contextPath}/Home/Article?id=${tA.articleID}">
                                    <div
                                            class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                    >
                                        <div class="flex flex-col gap-y-1">
                                            <div class="flex items-center gap-x-1">
                                                <c:choose>
                                                    <c:when test="${tA.premium}">
                                                        <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Premium
                                                        </p>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Guest
                                                        </p>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
                                            >
                                                    ${tA.title}
                                            </p>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                                            >
                                                    ${tA.publish_date}
                                            </p>
                                        </div>
                                        <img
                                                src="${tA.thumbs_img}"
                                                class="rounded-lg h-[80px] w-[100px]"
                                        />
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <h1 class="text-gray-500 font-bold text-3xl">
                    Bài viết mới nhất
                </h1>
                <p class="text-gray-500">Mọi chuyên mục</p>
                <div
                        class="mt-5 grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3  gap-x-4 gap-y-10"
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

                        <div class="flex flex-col mt-3">
                            <!-- List articles right side -->
                            <c:forEach items="${newestArticles}" var="nA" begin="0" end="2">
                                <a href="${pageContext.request.contextPath}/Home/Article?id=${nA.articleID}">
                                    <div
                                            class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                    >
                                        <div class="flex flex-col gap-y-1">
                                            <div class="flex items-center gap-x-1">
                                                <c:choose>
                                                    <c:when test="${nA.premium}">
                                                        <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Premium
                                                        </p>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Guest
                                                        </p>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
                                            >
                                                    ${nA.title}
                                            </p>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                                            >
                                                    ${nA.publish_date}
                                            </p>
                                        </div>
                                        <img
                                                src="${nA.thumbs_img}"
                                                class="rounded-lg h-[80px] w-[100px]"
                                        />
                                    </div>
                                </a>
                            </c:forEach>
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

                        <div class="flex flex-col mt-3">
                            <!-- List articles right side -->
                            <c:forEach items="${newestArticles}" var="nA" begin="3" end="5">
                                <a href="${pageContext.request.contextPath}/Home/Article?id=${nA.articleID}">
                                    <div
                                            class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                    >
                                        <div class="flex flex-col gap-y-1">
                                            <div class="flex items-center gap-x-1">
                                                <c:choose>
                                                    <c:when test="${nA.premium}">
                                                        <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Premium
                                                        </p>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Guest
                                                        </p>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
                                            >
                                                    ${nA.title}
                                            </p>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                                            >
                                                    ${nA.publish_date}
                                            </p>
                                        </div>
                                        <img
                                                src="${nA.thumbs_img}"
                                                class="rounded-lg h-[80px] w-[100px]"
                                        />
                                    </div>
                                </a>
                            </c:forEach>
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

                        <div class="flex flex-col mt-3">
                            <!-- List articles right side -->
                            <c:forEach items="${newestArticles}" var="nA" begin="6" end="8">
                                <a href="${pageContext.request.contextPath}/Home/Article?id=${nA.articleID}">
                                    <div
                                            class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                    >
                                        <div class="flex flex-col gap-y-1">
                                            <div class="flex items-center gap-x-1">
                                                <c:choose>
                                                    <c:when test="${nA.premium}">
                                                        <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Premium
                                                        </p>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                            Guest
                                                        </p>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
                                            >
                                                    ${nA.title}
                                            </p>
                                            <p
                                                    class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer"
                                            >
                                                    ${nA.publish_date}
                                            </p>
                                        </div>
                                        <img
                                                src="${nA.thumbs_img}"
                                                class="rounded-lg h-[80px] w-[100px]"
                                        />
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="px-4 md:px-8 lg:px-56">
            <h1 class="text-gray-500 font-bold text-3xl">Tổng hợp bài viết</h1>
            <p class="text-gray-500">Từ mọi chuyên mục</p>
            <div
                    class="mt-5 grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3  gap-x-4 gap-y-10"
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
                        <c:forEach items="${randomArticles}" var="rA" begin="0" end="4">
                            <a href="${pageContext.request.contextPath}/Home/Article?id=${rA.articleID}">
                                <div
                                        class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                >
                                    <div class="flex flex-col gap-y-1">
                                        <c:choose>
                                            <c:when test="${rA.premium}">
                                                <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                    Premium
                                                </p>
                                            </c:when>
                                            <c:otherwise>
                                                <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                    Guest
                                                </p>
                                            </c:otherwise>
                                        </c:choose>
                                        <p
                                                class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
                                        >
                                                ${rA.title};
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
                            </a>
                        </c:forEach>
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
                        <c:forEach items="${randomArticles}" var="rA" begin="5" end="9">
                            <a href="${pageContext.request.contextPath}/Home/Article?id=${rA.articleID}">
                                <div
                                        class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                >
                                    <div class="flex flex-col gap-y-1">
                                        <c:choose>
                                            <c:when test="${rA.premium}">
                                                <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                    Premium
                                                </p>
                                            </c:when>
                                            <c:otherwise>
                                                <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                    Guest
                                                </p>
                                            </c:otherwise>
                                        </c:choose>
                                        <p
                                                class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
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
                            </a>
                        </c:forEach>
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
                        <c:forEach items="${randomArticles}" var="rA" begin="10" end="14">
                            <a href="${pageContext.request.contextPath}/Home/Article?id=${rA.articleID}">
                                <div
                                        class="flex flex-row justify-between gap-x-4 h-fit border-t border-gray-100 py-4"
                                >
                                    <div class="flex flex-col gap-y-1">
                                        <c:choose>
                                            <c:when test="${rA.premium}">
                                                <p class="bg-blue-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                    Premium
                                                </p>
                                            </c:when>
                                            <c:otherwise>
                                                <p class="bg-gray-500 text-xs px-2 py-1 text-white  font-semibold w-fit rounded-full">
                                                    Guest
                                                </p>
                                            </c:otherwise>
                                        </c:choose>
                                        <p
                                                class="text-gray-600 text-xs lg:text-sm hover:underline cursor-pointer font-semibold"
                                        >
                                                ${rA.title};
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
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <%--        </div>--%>

        <script>
            console.log(`${errPremium}`);
            if (`${errPremium}`.length > 0){
                alert(`${errPremium}`)
            }
        </script>
    </jsp:body>
</t:main>