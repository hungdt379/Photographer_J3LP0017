<%-- 
    Document   : Home
    Created on : Mar 25, 2020, 11:37:33 AM
    Author     : dangt
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/photo.css" rel="stylesheet" type="text/css"/>

        <title>My front page</title>
    </head>
    <body>
        <div class="container">

            <div class="header">
                <div class="link">
                    <a href="home" style="font-weight: bold" >My front page</a>

                    <c:forEach items="${galleries}" var="g">
                        <a href="gallery?id=${g.id}" >Gallery ${g.id}</a>                    
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
                    <div class="gallery">
                        <div class="titleImg">
                            <img src="image/p4.jpg" width="700px" height="500px">
                            <i><p>Lorem ipsum dolor sit amet</p></i>
                        </div>
                        <table>
                            <tr>
                                <c:forEach items="${galleries}" var="g">
                                    <c:if test="${g.id <= 3}">
                                        <td>
                                            <img src="image/${g.picture}" width="220px" height="170px" >
                                            <a class="viewGallery" href="gallery?id=${g.id}">${g.name}</a>
                                            <div class="description">${g.description}</div>
                                        </td>
                                    </c:if>
                                </c:forEach>
                            </tr>
                            <tr>
                                <c:forEach items="${galleries}" var="g">
                                    <c:if test="${g.id > 3}">
                                        <td>
                                            <img src="image/${g.picture}" width="220px" height="170px" >
                                            <a class="viewGallery" href="gallery?id=${g.id}">${g.name}</a>
                                            <div class="description">${g.description}</div>
                                        </td>
                                    </c:if>
                                </c:forEach>
                            </tr>

                        </table>
                    </div>
                    <div class="about">
                        <div class="about_me">About me</div>
                        <div class="aboutText">${contact.about_me}</div>
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
                <div class="link-footer">
                    <a style="color:white"><u>Created with SimpleSite</u></a>
                </div>
                <div class="number"> 0  9  5  7  9  6</div>
            </div>
        </div>
    </body>
</html>
