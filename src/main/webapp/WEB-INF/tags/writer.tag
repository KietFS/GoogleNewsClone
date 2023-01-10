<%@ tag pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Google tin tức - tác giả</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/news.google.com.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous"
    ></script>
    <script
            src="https://cdn.tiny.cloud/1/0773iw75rdr2oge3dd4c68gqxlxks5f26jznvij4q769gy2a/tinymce/5/tinymce.min.js"
            referrerpolicy="origin"
    ></script>
    <script src="https://cdn.jsdelivr.net/npm/@tinymce/tinymce-jquery@1/dist/tinymce-jquery.min.js"></script><style>
        /* since nested groupes are not supported we have to use
       regular css for the nested dropdowns
    */
        li > ul {
            transform: translatex(100%) scale(0);
        }
        li:hover > ul {
            transform: translatex(101%) scale(1);
        }
        li > button svg {
            transform: rotate(-90deg);
        }
        li:hover > button svg {
            transform: rotate(-270deg);
        }

        /* Below styles fake what can be achieved with the tailwind config
       you need to add the group-hover variant to scale and define your custom
       min width style.
         See https://codesandbox.io/s/tailwindcss-multilevel-dropdown-y91j7?file=/index.html
         for implementation with config file
    */
        .group:hover .group-hover\:scale-100 {
            transform: scale(1);
        }
        .group:hover .group-hover\:-rotate-180 {
            transform: rotate(180deg);
        }
        .scale-0 {
            transform: scale(0);
        }
    </style>
</head>
<body>
<div class="w-screen h-full flex">
    <jsp:include page="../../views/partials/writerSideBar.jsp"/>
    <div class="w-4/5 bg-gray-50 min-h-screen h-fit pb-10">
        <jsp:include page="../../views/partials/adminHeader.jsp"/>
        <!-- data table here -->
        <jsp:doBody/>
    </div>
</div>
</body>
</html>
