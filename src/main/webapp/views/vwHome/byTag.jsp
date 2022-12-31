<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%> <%@ taglib prefix="c"
                                                         uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean
        id="articlesByTag"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.Article>"
/>
<jsp:useBean id="Tag" scope="request" type="com.example.googlenewsclone.beans.Tag"/>
<script src="https://cdn.tailwindcss.com"></script>

<t:main>
  <jsp:body>
    <div
            class="px-4 md:px-8 lg:px-56 bg-gray-50 h-full py-20 flex flex-col gap-y-10"
    >
      <!-- section 1 -->
      <div
              class="rounded-lg border-gray-100 bg-white border px-4 py-2 h-fit w-full"
      >
        <div class="w-fit gap-x-2 flex items-center">
          <p class="text-lg text-gray-600 font-bold">Tag:</p>
          <p
                  class="text-sm my-8 px-4 py-2 rounded-full bg-red-50 text-red-900 w-fit font-bold"
          >
            ${Tag.tagName}
          </p>
        </div>
        <c:forEach items="${articlesByTag}" var="byTag">
          <!-- Div chua tung bai bao -->
        <a href="${pageContext.request.contextPath}/Home/Article?id=${byTag.articleID}">
          <div
                  class="flex border-gray-200 border-b flex-col gap-x-4 gap-y-4 lg:flex-row justify-between mb-8"
          >
            <!-- left side -->
            <div class="flex flex-col gap-y-1 w-full lg:w-2/5">
              <img
                      src="${byTag.thumbs_img}"
                      width="400"
                      height="200"
                      class="rounded-lg mb-2"
              />
              <c:choose>
                <c:when test="${byTag.premium}">
                  <p
                          class="text-white rounded-full px-2 py-1 bg-blue-500 w-fit text-xs"
                  >
                    Premium
                  </p>
                </c:when>
                <c:otherwise>
                  <p
                          class="text-white rounded-full px-2 py-1 bg-gray-500 w-fit text-xs"
                  >
                    Guest
                  </p>
                </c:otherwise>
              </c:choose>
              <a class="text-lg text-gray-600 font-bold" href="${pageContext.request.contextPath}/Home/Article?id=${byTag.articleID}">
                ${byTag.title}
              </a>
              <p class="text-gray-500 text-sm">${byTag.publish_date}</p>
            </div>
            <!-- right side chua description-->
            <p class="text-sm text-gray-500 font-regular w-full lg:w-3/5">
              ${byTag.subContent}
            </p>
          </div>
        </a>
        </c:forEach>
      </div>
    </div>
  </jsp:body>
</t:main>
