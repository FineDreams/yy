<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  Date: 2018/2/27
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div id="navi">
    <jsp:include page="../main/menu.jsp"/>
    <%--<ul id="menu">--%>
        <%--<li><a href="../index.html" class="index_<c:choose><c:when test='<%=request.getParameter("class").equals("index")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
        <%--<li><a href="../role/role_list.jsp" class="role_<c:choose><c:when test='<%=request.getParameter("class").equals("role")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
        <%--<li><a href="../admin/admin_list.html" class="admin_<c:choose><c:when test='<%=request.getParameter("class").equals("admin")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
        <%--<li><a href="${pageContext.request.contextPath}/cost/cost_list" class="fee_<c:choose><c:when test='<%=request.getParameter("class").equals("cost")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
        <%--<li><a href="${pageContext.request.contextPath}/account/account_list" class="account_<c:choose><c:when test='<%=request.getParameter("class").equals("account")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
        <%--<li><a href="${pageContext.request.contextPath}/service/service_list" class="service_<c:choose><c:when test='<%=request.getParameter("class").equals("service")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
        <%--<li><a href="../bill/bill_list.html" class="bill_<c:choose><c:when test='<%=request.getParameter("class").equals("bill")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
        <%--<li><a href="../report/report_list.html" class="report_<c:choose><c:when test='<%=request.getParameter("class").equals("report")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
        <%--<li><a href="../user/user_info.html" class="information_<c:choose><c:when test='<%=request.getParameter("class").equals("information")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
        <%--<li><a href="../user/user_modi_pwd.html" class="password_<c:choose><c:when test='<%=request.getParameter("class").equals("password")%>'>on</c:when><c:otherwise>off</c:otherwise></c:choose>"></a></li>--%>
    <%--</ul>--%>
</div>

