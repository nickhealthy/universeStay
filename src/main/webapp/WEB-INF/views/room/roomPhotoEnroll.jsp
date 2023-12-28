<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:eval expression="@OauthProperties['KAKAO_JavaScript_KEY']" var="KakaoApiKey"/>
<%
    String isHost = (String) request.getAttribute("isHost");
%>
<html>
<head>
    <link rel="apple-touch-icon" sizes="57x57" href="/resources/img/favi.ico/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/resources/img/favi.ico//apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/resources/img/favi.ico/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/resources/img/favi.ico/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114"
          href="/resources/img/favi.ico/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120"
          href="/resources/img/favi.ico/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144"
          href="/resources/img/favi.ico/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152"
          href="/resources/img/favi.ico/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180"
          href="/resources/img/favi.ico/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"
          href="/resources/img/favi.ico/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32"
          href="/resources/img/favi.ico/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96"
          href="/resources/img/favi.ico/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16"
          href="/resources/img/favi.ico/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <title>RoomEnroll</title>
    <link rel="stylesheet" href="/resources/css2/style.css">
</head>
<body>

<%--<jsp:include page="/WEB-INF/views/common/user/header.jsp"/>--%>
<header class="components-user-header__header">
    <div class="components-user-header__header__inner">

        <!-- 헤더 로고 영역-->
        <div class="components-user-header__header__logo" onclick="location.href ='/'">
            <img class="components-user-header__logo"
                 src="/resources/img/logo/small_logo_no_bgd2.png"/>
        </div>
    </div>
    <!--메뉴 영역-->
    <div class="components-user-header__header__searchbar">
        <div class="components-user-header__header__searchbar__inner">
            <div class="screens-room-management__menuButton-box">
                <button onclick="location.href='/room/management'"><h2>숙소</h2></button>
            </div>
            <div class="screens-room-management__menuButton-box">
                <button onclick="location.href='/user/myPage/hostbookingmanagement'"><h2>예약</h2>
                </button>
            </div>
            <div class="screens-room-management__menuButton-box">
                <button onclick="location.href='#'"><h2>달력</h2></button>
            </div>
            <div class="screens-room-management__menuButton-box">
                <button onclick="location.href='/chatting/chattingRoomList'"><h2>메세지</h2></button>
            </div>
            <div class="screens-room-management__menuButton-box">
                <button onclick="location.href='#'"><h2>메뉴</h2></button>
            </div>
        </div>
    </div>


    <!--헤더 프로필 영역-->
    <div class="components-user-header__header__profile">
        <div class="components-user-header__header__profile__to-host">

            <% if ("Y".equals(isHost)) { %>
            <a class="components-user-header__a" href="/">
                <div>게스트 모드로 전환</div>
            </a>
            <% } %>

        </div>

        <div class="components-user-header__header__profile__my-profile components-user-header__dropdown">
            <button class="components-user-header__header__profile__my-profile__btn components-user-header__button">
                <div components-user-header__header__profile__my-profile__wrapper>
                    <img class="components-user-header__header__profile__hamburger"
                         src="/resources/img/user/bars-3.png"/>
                    <% //세션에 'user_email'이라는 값이 저장되어 있으면? (즉, 로그인 상태면) 아래 드롭다운을 보여준다.
                        if
                        (session.getAttribute("user_email") != null) {
                    %>
                    <img class="components-user-header__header__profile__img"
                         src="${profileImgUrl}"/>
                    <%
                    } else {
                    %>
                    <img class="components-user-header__header__profile__img"
                         src="/resources/img/user/default_profile_icon.png"/>
                    <%}%>
                </div>

                <%-- 마이프로필 버튼 눌렀을때 나오는 드롭다운--%>
                <div class="components-user-header__header__profile__option components-user-header__dropdown-div">

                    <% //세션에 'user_email'이라는 값이 저장되어 있으면? (즉, 로그인 상태면) 아래 드롭다운을 보여준다.
                        if
                        (session.getAttribute("user_email") != null) {
                    %>
                    <div class="components-user-header__dropdown__option dropdown__option-msg">
                        <span>메시지</span>
                    </div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-reservation"
                         onclick="location.href = '/user/myPage/mybookings/'">
                        <span>여행</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-wishlist"
                         onclick="location.href ='/user/wishLists'">
                        <span>위시리스트</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-reviews">
                        <span>나의 리뷰</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-coupon">
                        <span>나의 쿠폰</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-notice">
                        <span>공지사항</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-event"
                         onclick="location.href ='/event'">
                        <span>이벤트</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-account"
                         onclick="location.href ='/user/myPage/info'">
                        <span>계정</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-log-out"
                         onclick="location.href ='/user/userLogout'">
                        <span>로그아웃</span></div>
                    <%
                    } else  //세션에 'user_email'이라는 값이 저장되어 있지 않으면(즉, 로그아웃 상태면) 아래 드롭다운을 보여준다.
                    {
                    %>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-sign-up">
                        <span>회원가입</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-sign-in">
                        <span>로그인</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-notice">
                        <span>공지사항</span></div>
                    <div class="components-user-header__dropdown__option components-user-header__dropdown__option-event"
                         onclick="location.href ='/event'">
                        <span>이벤트</span></div>
                    <%}%>
                </div>
            </button>
        </div>
    </div>

    </div>

</header>
<div class="components-user-header__line"></div>

<form action="/room/photoEnroll" method="post" class="screens-room-roomEnroll__wrapper"
      enctype="multipart/form-data">

    <%--  숙소 사진을 추가하세요  --%>
    <div class="screens-room-roomEnroll__title">숙소 사진을 추가하세요</div>
    <div class="screens-room-roomEnroll__sub-title">
        숙소 등록을 시작하시려면 사진 5장을 제출하셔야 합니다. 나중에 추가하거나 변경하실 수 있습니다.
    </div>
    <div class="screens-room-roomEnroll__photo-main">
        <img class="screens-room-roomEnroll__photo-main-img" src="" alt="">
        <button type="button"
                class="screens-room-roomEnroll__btn-more-photo-main screens-room-roomEnroll__btn">
            <svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                 role="presentation" focusable="false"
                 style="display: block; height: 16px; width: 16px; fill: rgb(34, 34, 34);">
                <path d="m3 9.5c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.8284271 0 1.5-.67157288 1.5-1.5s-.6715729-1.5-1.5-1.5-1.5.67157288-1.5 1.5.6715729 1.5 1.5 1.5z"></path>
            </svg>
        </button>
        <div class="screens-room-roomEnroll__photo-main-toggle-update-delete">
            <button type="button"
                    class="screens-room-roomEnroll__photo-main-btn-update screens-room-roomEnroll__btn">
                수정하기
            </button>
            <button type="button"
                    class="screens-room-roomEnroll__photo-main-btn-delete screens-room-roomEnroll__btn">
                삭제하기
            </button>
        </div>
        <div class="screens-room-roomEnroll__photo-main__prev-upload-photo">
            <svg class="screens-room-roomEnroll__photos__part-1" viewBox="0 0 64 64"
                 xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                 role="presentation" focusable="false"
                 style="display: block; height: 64px; width: 64px; fill: currentcolor;">
                <path d="M41.636 8.404l1.017 7.237 17.579 4.71a5 5 0 0 1 3.587 5.914l-.051.21-6.73 25.114A5.002 5.002 0 0 1 53 55.233V56a5 5 0 0 1-4.783 4.995L48 61H16a5 5 0 0 1-4.995-4.783L11 56V44.013l-1.69.239a5 5 0 0 1-5.612-4.042l-.034-.214L.045 14.25a5 5 0 0 1 4.041-5.612l.215-.035 31.688-4.454a5 5 0 0 1 5.647 4.256zm-20.49 39.373l-.14.131L13 55.914V56a3 3 0 0 0 2.824 2.995L16 59h21.42L25.149 47.812a3 3 0 0 0-4.004-.035zm16.501-9.903l-.139.136-9.417 9.778L40.387 59H48a3 3 0 0 0 2.995-2.824L51 56v-9.561l-9.3-8.556a3 3 0 0 0-4.053-.009zM53 34.614V53.19a3.003 3.003 0 0 0 2.054-1.944l.052-.174 2.475-9.235L53 34.614zM48 27H31.991c-.283.031-.571.032-.862 0H16a3 3 0 0 0-2.995 2.824L13 30v23.084l6.592-6.59a5 5 0 0 1 6.722-.318l.182.159.117.105 9.455-9.817a5 5 0 0 1 6.802-.374l.184.162L51 43.721V30a3 3 0 0 0-2.824-2.995L48 27zm-37 5.548l-5.363 7.118.007.052a3 3 0 0 0 3.388 2.553L11 41.994v-9.446zM25.18 15.954l-.05.169-2.38 8.876h5.336a4 4 0 1 1 6.955 0L48 25.001a5 5 0 0 1 4.995 4.783L53 30v.88l5.284 8.331 3.552-13.253a3 3 0 0 0-1.953-3.624l-.169-.05L28.804 14a3 3 0 0 0-3.623 1.953zM21 31a4 4 0 1 1 0 8 4 4 0 0 1 0-8zm0 2a2 2 0 1 0 0 4 2 2 0 0 0 0-4zM36.443 6.11l-.175.019-31.69 4.453a3 3 0 0 0-2.572 3.214l.02.175 3.217 22.894 5.833-7.74a5.002 5.002 0 0 1 4.707-4.12L16 25h4.68l2.519-9.395a5 5 0 0 1 5.913-3.587l.21.051 11.232 3.01-.898-6.397a3 3 0 0 0-3.213-2.573zm-6.811 16.395a2 2 0 0 0 1.64 2.496h.593a2 2 0 1 0-2.233-2.496zM10 13a4 4 0 1 1 0 8 4 4 0 0 1 0-8zm0 2a2 2 0 1 0 0 4 2 2 0 0 0 0-4z"></path>
            </svg>
            <div class="screens-room-roomEnroll__photos__part-2">여기로 사진을 업로드하세요. (대표사진)</div>
            <div class="screens-room-roomEnroll__photos__part-3">5장의 사진을 선택하세요.</div>
            <div class="screens-room-roomEnroll__photos__part-4">
                <button type="button" class="screens-room-roomEnroll__btn-photo-main">기기에서 업로드
                </button>
                <input class="screens-room-roomEnroll__input-photo-main"
                       name="room_photo_main"
                       type="file" accept=".jpg, .jpeg, .png, .heic, .webp"
                       onchange="readURL(this);">
            </div>
        </div>
    </div>
    <div class="screens-room-roomEnroll__photos-sub">
        <div class="screens-room-roomEnroll__photo-sub screens-room-roomEnroll__photo-sub-1">

            <img class="screens-room-roomEnroll__photo-sub-img" src="" alt="">
            <button type="button"
                    class="screens-room-roomEnroll__btn-more-photo-sub screens-room-roomEnroll__btn">
                <svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                     role="presentation" focusable="false"
                     style="display: block; height: 16px; width: 16px; fill: rgb(34, 34, 34);">
                    <path d="m3 9.5c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.8284271 0 1.5-.67157288 1.5-1.5s-.6715729-1.5-1.5-1.5-1.5.67157288-1.5 1.5.6715729 1.5 1.5 1.5z"></path>
                </svg>
            </button>
            <div class="screens-room-roomEnroll__photo-sub-toggle-update-delete">
                <button type="button"
                        class="screens-room-roomEnroll__photo-sub-btn-update screens-room-roomEnroll__btn">
                    수정하기
                </button>
                <button type="button"
                        class="screens-room-roomEnroll__photo-sub-btn-delete screens-room-roomEnroll__btn">
                    삭제하기
                </button>
            </div>

            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true"
                 role="presentation" focusable="false"
                 style="display: block; height: 32px; width: 32px; fill: #717171;">
                <path d="M27 3a4 4 0 0 1 4 4v18a4 4 0 0 1-4 4H5a4 4 0 0 1-4-4V7a4 4 0 0 1 4-4zM8.89 19.04l-.1.08L3 24.92V25a2 2 0 0 0 1.85 2H18.1l-7.88-7.88a1 1 0 0 0-1.32-.08zm12.5-6-.1.08-7.13 7.13L20.92 27H27a2 2 0 0 0 2-1.85v-5.73l-6.3-6.3a1 1 0 0 0-1.31-.08zM27 5H5a2 2 0 0 0-2 2v15.08l4.38-4.37a3 3 0 0 1 4.1-.14l.14.14 1.13 1.13 7.13-7.13a3 3 0 0 1 4.1-.14l.14.14L29 16.59V7a2 2 0 0 0-1.85-2zM8 7a3 3 0 1 1 0 6 3 3 0 0 1 0-6zm0 2a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"></path>
            </svg>

            <input class="screens-room-roomEnroll__input-photo-sub"
                   name="room_photo_sub1"
                   type="file" accept=".jpg, .jpeg, .png, .heic, .webp"
                   onchange="readURLSub(this);">
        </div>
        <div class="screens-room-roomEnroll__photo-sub screens-room-roomEnroll__photo-sub-2">

            <img class="screens-room-roomEnroll__photo-sub-img" src="" alt="">
            <button type="button"
                    class="screens-room-roomEnroll__btn-more-photo-sub screens-room-roomEnroll__btn">
                <svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                     role="presentation" focusable="false"
                     style="display: block; height: 16px; width: 16px; fill: rgb(34, 34, 34);">
                    <path d="m3 9.5c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.8284271 0 1.5-.67157288 1.5-1.5s-.6715729-1.5-1.5-1.5-1.5.67157288-1.5 1.5.6715729 1.5 1.5 1.5z"></path>
                </svg>
            </button>
            <div class="screens-room-roomEnroll__photo-sub-toggle-update-delete">
                <button type="button"
                        class="screens-room-roomEnroll__photo-sub-btn-update screens-room-roomEnroll__btn">
                    수정하기
                </button>
                <button type="button"
                        class="screens-room-roomEnroll__photo-sub-btn-delete screens-room-roomEnroll__btn">
                    삭제하기
                </button>
            </div>

            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true"
                 role="presentation" focusable="false"
                 style="display: block; height: 32px; width: 32px; fill: #717171;">
                <path d="M27 3a4 4 0 0 1 4 4v18a4 4 0 0 1-4 4H5a4 4 0 0 1-4-4V7a4 4 0 0 1 4-4zM8.89 19.04l-.1.08L3 24.92V25a2 2 0 0 0 1.85 2H18.1l-7.88-7.88a1 1 0 0 0-1.32-.08zm12.5-6-.1.08-7.13 7.13L20.92 27H27a2 2 0 0 0 2-1.85v-5.73l-6.3-6.3a1 1 0 0 0-1.31-.08zM27 5H5a2 2 0 0 0-2 2v15.08l4.38-4.37a3 3 0 0 1 4.1-.14l.14.14 1.13 1.13 7.13-7.13a3 3 0 0 1 4.1-.14l.14.14L29 16.59V7a2 2 0 0 0-1.85-2zM8 7a3 3 0 1 1 0 6 3 3 0 0 1 0-6zm0 2a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"></path>
            </svg>

            <input class="screens-room-roomEnroll__input-photo-sub"
                   name="room_photo_sub2"
                   type="file" accept=".jpg, .jpeg, .png, .heic, .webp"
                   onchange="readURLSub(this);">
        </div>
        <div class="screens-room-roomEnroll__photo-sub screens-room-roomEnroll__photo-sub-3">

            <img class="screens-room-roomEnroll__photo-sub-img" src="" alt="">
            <button type="button"
                    class="screens-room-roomEnroll__btn-more-photo-sub screens-room-roomEnroll__btn">
                <svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                     role="presentation" focusable="false"
                     style="display: block; height: 16px; width: 16px; fill: rgb(34, 34, 34);">
                    <path d="m3 9.5c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.8284271 0 1.5-.67157288 1.5-1.5s-.6715729-1.5-1.5-1.5-1.5.67157288-1.5 1.5.6715729 1.5 1.5 1.5z"></path>
                </svg>
            </button>
            <div class="screens-room-roomEnroll__photo-sub-toggle-update-delete">
                <button type="button"
                        class="screens-room-roomEnroll__photo-sub-btn-update screens-room-roomEnroll__btn">
                    수정하기
                </button>
                <button type="button"
                        class="screens-room-roomEnroll__photo-sub-btn-delete screens-room-roomEnroll__btn">
                    삭제하기
                </button>
            </div>

            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true"
                 role="presentation" focusable="false"
                 style="display: block; height: 32px; width: 32px; fill: #717171;">
                <path d="M27 3a4 4 0 0 1 4 4v18a4 4 0 0 1-4 4H5a4 4 0 0 1-4-4V7a4 4 0 0 1 4-4zM8.89 19.04l-.1.08L3 24.92V25a2 2 0 0 0 1.85 2H18.1l-7.88-7.88a1 1 0 0 0-1.32-.08zm12.5-6-.1.08-7.13 7.13L20.92 27H27a2 2 0 0 0 2-1.85v-5.73l-6.3-6.3a1 1 0 0 0-1.31-.08zM27 5H5a2 2 0 0 0-2 2v15.08l4.38-4.37a3 3 0 0 1 4.1-.14l.14.14 1.13 1.13 7.13-7.13a3 3 0 0 1 4.1-.14l.14.14L29 16.59V7a2 2 0 0 0-1.85-2zM8 7a3 3 0 1 1 0 6 3 3 0 0 1 0-6zm0 2a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"></path>
            </svg>

            <input class="screens-room-roomEnroll__input-photo-sub"
                   name="room_photo_sub3"
                   type="file" accept=".jpg, .jpeg, .png, .heic, .webp"
                   onchange="readURLSub(this);">
        </div>
        <div class="screens-room-roomEnroll__photo-sub screens-room-roomEnroll__photo-sub-4">

            <img class="screens-room-roomEnroll__photo-sub-img" src="" alt="">
            <button type="button"
                    class="screens-room-roomEnroll__btn-more-photo-sub screens-room-roomEnroll__btn">
                <svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                     role="presentation" focusable="false"
                     style="display: block; height: 16px; width: 16px; fill: rgb(34, 34, 34);">
                    <path d="m3 9.5c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.82842712 0 1.5-.67157288 1.5-1.5s-.67157288-1.5-1.5-1.5-1.5.67157288-1.5 1.5.67157288 1.5 1.5 1.5zm5 0c.8284271 0 1.5-.67157288 1.5-1.5s-.6715729-1.5-1.5-1.5-1.5.67157288-1.5 1.5.6715729 1.5 1.5 1.5z"></path>
                </svg>
            </button>
            <div class="screens-room-roomEnroll__photo-sub-toggle-update-delete">
                <button type="button"
                        class="screens-room-roomEnroll__photo-sub-btn-update screens-room-roomEnroll__btn">
                    수정하기
                </button>
                <button type="button"
                        class="screens-room-roomEnroll__photo-sub-btn-delete screens-room-roomEnroll__btn">
                    삭제하기
                </button>
            </div>

            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true"
                 role="presentation" focusable="false"
                 style="display: block; height: 32px; width: 32px; fill: #717171;">
                <path d="M27 3a4 4 0 0 1 4 4v18a4 4 0 0 1-4 4H5a4 4 0 0 1-4-4V7a4 4 0 0 1 4-4zM8.89 19.04l-.1.08L3 24.92V25a2 2 0 0 0 1.85 2H18.1l-7.88-7.88a1 1 0 0 0-1.32-.08zm12.5-6-.1.08-7.13 7.13L20.92 27H27a2 2 0 0 0 2-1.85v-5.73l-6.3-6.3a1 1 0 0 0-1.31-.08zM27 5H5a2 2 0 0 0-2 2v15.08l4.38-4.37a3 3 0 0 1 4.1-.14l.14.14 1.13 1.13 7.13-7.13a3 3 0 0 1 4.1-.14l.14.14L29 16.59V7a2 2 0 0 0-1.85-2zM8 7a3 3 0 1 1 0 6 3 3 0 0 1 0-6zm0 2a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"></path>
            </svg>

            <input class="screens-room-roomEnroll__input-photo-sub"
                   name="room_photo_sub4"
                   type="file" accept=".jpg, .jpeg, .png, .heic, .webp"
                   onchange="readURLSub(this);">
        </div>
    </div>
    <input type="hidden" name="room_id" value="${room_id}">

    <input type="button"
           class="screens-room-roomEnroll__btn-submit screens-room-roomEnroll__btn-submit-photo"
           value="숙소 등록">
</form>

<jsp:include page="/WEB-INF/views/common/user/footerNotFix.jsp"/>

<%--<jsp:include page="/WEB-INF/views/common/user/footer.jsp"/>--%>

<%-- 숙소 주소 입력 Script --%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 카카오 지도 API : services 라이브러리 불러오기 -->
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${KakaoApiKey}&libraries=services"></script>
<%-- Script --%>
<script src="/resources/js/room/roomPhotoEnroll.js"></script>

</body>
</html>
