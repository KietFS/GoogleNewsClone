<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:writer>
    <jsp:body>
        <div>
            <div>${content}</div>
            <div class="px-4 md:px-8 lg:px-56 py-10">
                <form action="${pageContext.request.contextPath}/Staff/Writer/Add" method="post">
                    <div class="flex flex-col gap-y-5">
                        <div class="flex flex-col gap-y-2">
                            <p class="text-lg font-bold text-gray-500">Tiêu đề bài viết</p>
                            <input class="w-full h-[50px] border-gray-300 border bg-white px-2 py-1" id="title" name="title" required />
                        </div>
                        <div class="flex flex-col gap-y-2">
                            <p class="text-lg font-bold text-gray-500">Nội dung bài viết</p>
                            <textarea id="tiny" name="content" class="border-gray-200 border rounded-lg bg-gray-100 w-full shadow-lg">
 &lt;p&gt;Welcome to the TinyMCE jQuery example!&lt;/p&gt;</textarea
                            >
                        </div>
                        <button type="submit" class="text-center text-blue-900 font-bold bg-blue-50 rounded-lg text-lg py-3">Đăng bài</button>
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