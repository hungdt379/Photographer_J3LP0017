<%-- 
    Document   : Gallery
    Created on : Mar 25, 2020, 11:37:58 AM
    Author     : dangt
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/photo.css" rel="stylesheet" type="text/css"/>
        
        <title>Gallery</title>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <div class="link">
                    <a href="home" >My front page</a>
                    <c:forEach items="${galleries}" var="g">
                        <a href="gallery?id=${g.id}" style="font-weight: ${gId==g.id?"bold":""}">Gallery ${g.id}</a>                    
                    </c:forEach>
                    <a href="contact">Contact</a>
                </div>
                <div class="title">
                    <div class="webTitle">
                            <a href="home">
                            <img src="image/logo.jpg">
                            </a>
                            PHOTOGRAPHER
                    </div>
                    <h2>Welcome to this website</h2>
                </div>
            </div>
            <div class="content">
                <div class="left">
                    <div class="titleGallery">
                        Gallery ${gId}
                    </div>
                    <div class="slide">
                        <c:forEach items="${pictures}" var="p">
                            <img class="mySlides" src="image/${p.name}" alt="../image/${p.name}" width="700px" height="500px" >
                        </c:forEach>
                        <br>
                        <div class="control">
                            <button class="btnLeft" class="previous" onclick="plusDivs(-1)"><</button>
                            <button class="btnRight" class="next" onclick="plusDivs(1)">></button>
                        </div>
                    </div>

                    <div style="width: 900px; margin-left: 120px;">
                        <c:forEach items="${pictures}" var="p">
                             <c:if test="true">   
                                 <div class="bgPicture" style="float: left; width: 175px; margin:15px;">
                                     <img class="imageItem" src="image/${p.name}" width="155px" height="110px" >
                                 </div>
                             </c:if>
                         </c:forEach>
                    </div>

                </div>
                <div class="right">
                    <div class="share">
                        <div class="sharePage">Share this page</div>
                        <a class="social" href="#">
                            <div class="fb">
                                Share on Facebook
                            </div>
                        </a>
                        <a class="social" href="#">
                            <div class="twitter">
                                Share on Twitter
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="number">0  9  5  7  9  6</div>
            </div>
        </div>
    </body>
    <script>
        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            if (n > x.length) {
                slideIndex = 1;
            }
            if (n < 1) {
                slideIndex = x.length;
            }
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            x[slideIndex - 1].style.display = "block";
        }
    </script>
</html>

