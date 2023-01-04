<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean
        id="categories"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.Category>"
/>

<%--<jsp:useBean--%>
<%--        id="tags"--%>
<%--        scope="request"--%>
<%--        type="java.util.List<com.example.googlenewsclone.beans.Tag>"--%>
<%--/>--%>

<jsp:useBean
        id="authUser"
        scope="session"
        type="com.example.googlenewsclone.beans.User"/>


<t:writer>
    <jsp:body>
        <div>
            <div class="px-8 py-10">
                <h1 class="text-gray-600 text-2xl font-semibold mb-10">Chỉnh sửa bài viết</h1>
                <form action="${pageContext.request.contextPath}/Staff/Writer/Add" method="post">
                    <input hidden type="text" id="writerid" name="writerid" value="${authUser.userID}">
                    <div class="flex flex-col gap-y-5">
                        <div class="flex flex-col gap-y-2 w-full">
                            <p class="text-lg font-bold text-gray-500">Tiêu đề bài viết</p>
                            <input
                                    class="truncate  h-[50px] w-full px-2 py-2 border border-gray-300 bg-white rounded-md"
                                    name="title"
                                    value="${article.title}"
                            />
                        </div>
                        <div class="flex flex-col gap-y-2">
                            <p class="text-lg font-bold text-gray-500">Đường dẫn Thumbnail</p>
                            <input
                                    class="w-full h-[50px] border-gray-300 border bg-white px-2 py-2 rounded-md flex items-center"
                                    id="thumbs_img"
                                    type="text"
                                    name="thumbs_img"
                                    required
                                    value=${article.thumbs_img}
                            />
                        </div>
                        <div class="flex flex-col gap-y-2">
                            <p class="text-lg font-bold text-gray-500">Tóm tắt</p>
                            <textarea

                                    id="tinysub"
                                    name="subcontent"
                                    class="border-gray-200 border rounded-lg bg-gray-100 w-full shadow-lg"
                            >
                                    ${article.subContent}
                            </textarea
                            >
                        </div>
                        <div class="flex flex-col gap-y-1">
                            <p class="text-gray-600 text-lg font-bold">Danh mục</p>
                            <select
                                    name="catid"
                                    required
                                    id="catid"
                                    class="w-full h-[50px] border border-gray-300 px-2 py-1 rounded-md"
                            >
                                <c:forEach items="${categories}" var="c">
                                    <option ${c.catID == article.catID ? "selected" : ""} value="${c.catID}">${c.catName}</option>
                                </c:forEach>

                            </select>
                        </div>
                        <div class="flex flex-col gap-y-2">
                            <p class="text-gray-600 text-lg font-bold">Nhãn</p>
                            <div

                                    class="w-full h-fit border border-gray-300 px-2 py-1 rounded-md grid grid-cols-6 gap-x-4 gap-y-4 w-full flex-wrap"
                            >

                                    <c:forEach items="${tags}" var="t" varStatus="loop">
                                        <div class="flex gap-x-1 items-center">
                                            <p class="text-gray-600 text-sm">${t.tagName}</p>
                                            <input type="checkbox" name="tags" value=${t.tagID}>
                                        </div>
                                    </c:forEach>

                            </div>
                        </div>

                        <div class="flex flex-col gap-y-2">
                            <p class="text-lg font-bold text-gray-500">Nội dung bài viết</p>
                            <textarea

                                    id="tiny"
                                    name="content"
                                    class="border-gray-200 border rounded-lg bg-gray-100 w-full shadow-lg"
                            >
                                    ${article.content}
                            </textarea
                            >
                        </div>
                        <button
                                type="submit"
                                class="text-center text-white font-bold bg-blue-500 rounded-lg text-lg py-3 hover:opacity-50"
                        >
                            Sửa bài viết
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/tom-select/dist/js/tom-select.complete.min.js"></script>
        <script>
            new TomSelect('#select-role', {
                maxItems: 3,
            });
        </script>
        <script>
            $("textarea#tinysub").tinymce({
                height: 300,
                menubar: false,
                plugins: [
                    "a11ychecker",
                    "advlist",
                    "advcode",
                    "advtable",
                    "autolink",
                    "checklist",
                    "export",
                    "lists",
                    "link",
                    "image",
                    "charmap",
                    "preview",
                    "anchor",
                    "searchreplace",
                    "visualblocks",
                    "powerpaste",
                    "fullscreen",
                    "formatpainter",
                    "insertdatetime",
                    "media",
                    "table",
                    "help",
                    "wordcount",
                ],
                toolbar:
                    "undo redo | a11ycheck casechange blocks | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist checklist outdent indent | removeformat | code table help",
            });
            $("textarea#tiny").tinymce({
                height: 500,
                menubar: false,
                plugins: [
                    "a11ychecker",
                    "advlist",
                    "advcode",
                    "advtable",
                    "autolink",
                    "checklist",
                    "export",
                    "lists",
                    "link",
                    "image",
                    "charmap",
                    "preview",
                    "anchor",
                    "searchreplace",
                    "visualblocks",
                    "powerpaste",
                    "fullscreen",
                    "formatpainter",
                    "insertdatetime",
                    "media",
                    "table",
                    "help",
                    "wordcount",
                ],
                toolbar:
                    "undo redo | a11ycheck casechange blocks | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist checklist outdent indent | removeformat | code table help",
            });
            $(document).ready(function() {
                $("#formAuthentication").validate({
                    rules: {
                        title: "required",
                    }
                });

            });

        </script>
    </jsp:body>
</t:writer>