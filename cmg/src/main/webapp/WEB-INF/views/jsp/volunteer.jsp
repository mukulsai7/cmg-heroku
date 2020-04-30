<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cmg.model.FullDetails"%>
<html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<head>
    <title>Step 1</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="jumbotron">
        <div class="text-center">
            <div class="container h-100">
                <div class="row h-100 justify-content-center align-items-center">
                    <div class="col-10 col-md-8 col-lg-6">
                        <form class="form-example" action="next" method="post">
                            <h5>Please select volunteer type and location</h5>
                                <label for="volunteerType">Select volunteer type</label> <select name="volunteerType"
                                    id="volunteerType" class="form-control radio" required>
                                    <option value="">Choose...</option>
                                    <option value="Food support">Food support</option>
                                    <option value="Financial support">Financial support</option>
                                    <option value="Medical support">Medical support</option>
                                    <option value="Need Masks">Need Masks</option>
                                    <option value="Job assistance">Need daily essentials</option>
                                    <option value="Job assistance">Job assistance</option>
                                    <option value="Psychological support">Psychological
                                        support</option>
                                </select>
                            <p></p>
                            <div class="form-group">
                                <label for="state">Select state</label> <select name="state" id="state"
                                    class="form-control radio" required>
                                    <option value="">Choose...</option>

                                    <%
                                        ArrayList<String> stateList = (ArrayList<String>) request.getAttribute("stateList");
                                        for (String state : stateList) {
                                    %>
                                    <%
                                        String s = state;
                                    %>
                                    <option value=<%=s%>><%=s%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>

                            <button type="submit" id="submit" class="btn btn-primary btn-customized">Next</button>
                            <a href="<%=request.getContextPath()%>/home" class="btn btn-outline-secondary"
                                id="homeButton" role="button" aria-pressed="true">Home</a>
                        </form>
                    </div>
                </div>
            </div>
         </div>
         
    </div>
</body>

</html>

<style>
    .col-centered {
        margin: 0 auto;
        float: none;
    }
</style>