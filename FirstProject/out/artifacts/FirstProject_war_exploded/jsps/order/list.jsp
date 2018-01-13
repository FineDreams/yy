<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>订单列表</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	* {
		font-size: 11pt;
	}
	div {
		border: solid 2px gray;
		width: 75px;
		height: 75px;
		text-align: center;
	}
	li {
		margin: 10px;
	}

	#buy {
		background: url(<c:url value='/images/all.png'/>) no-repeat;
		display: inline-block;

		background-position: 0 -902px;
		margin-left: 30px;
		height: 36px;
		width: 146px;
	}
	#buy:HOVER {
		background: url(<c:url value='/images/all.png'/>) no-repeat;
		display: inline-block;

		background-position: 0 -938px;
		margin-left: 30px;
		height: 36px;
		width: 146px;
	}
</style>
  </head>

  <body>
<h1>我的订单</h1>
<c:forEach var="order" items="${requestScope.orderList}">
<table border="1" width="100%" cellspacing="0" background="black">
	<tr bgcolor="gray" bordercolor="gray">
		<td colspan="6">
			订单编号：${order.oid}　成交时间：${order.ordertime}　金额：<font color="red"><b>${order.total}</b></font>　
					<c:if test="${order.state==3}">
						<a href="<c:url value='/order?method=load&oid=${order.oid}'/>">付款</a>
					</c:if>
					<c:if test="${order.state==4}">
						已付款
						等待发货
					</c:if>
					<c:if test="${order.state==5}">
						已付款
						<a href="<c:url value='/order?method=confirm&oid=${order.oid}'/>">确认收货</a>
					</c:if>
					<c:if test="${order.state==6}">
						收货成功
						订单结束
					</c:if>
					<%--<a href="<c:url value="/order?method=confirm&oid=${order.oid}"/> ">确认收货</a>--%>

		</td>
	</tr>
	<c:forEach var="orderItem" items="${order.orderItemList}">


	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='${orderItem.book.image}'/>" height="75"/></div>
		</td>
		<td>书名：${orderItem.book.bname}</td>
		<td>单价：${orderItem.book.price}元</td>
		<td>作者：${orderItem.book.author}</td>
		<td>数量：${orderItem.count}</td>
		<td>小计：${(orderItem.book.price)*(orderItem.count)}元</td>
	</tr>

</c:forEach>
</table>
</c:forEach>



	<%--<tr bordercolor="gray" align="center">--%>
	<%--<td width="15%">--%>
	<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
	<%--</td>--%>
	<%--<td>书名：Java详解</td>--%>
	<%--<td>单价：39.9元</td>--%>
	<%--<td>作者：张孝祥</td>--%>
	<%--<td>数量：2</td>--%>
	<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>
	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>


	<%--<tr bgcolor="gray" bordercolor="gray">--%>
		<%--<td colspan="6">--%>
			<%--订单编号：abcdefg　成交时间：2000-01-01 15:30　金额：<font color="red"><b>319.2</b></font>　--%>

					<%--<a href="<c:url value='/jsps/order/desc.jsp'/>">付款</a>--%>

					<%--等待发货--%>
					<%--<a href="javascript:alert('已确认收货！');">确认收货</a>--%>
					<%--订单结束--%>
		<%--</td>--%>
	<%--</tr>--%>

	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>
	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>
	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>

	<%--<tr bgcolor="gray" bordercolor="gray">--%>
		<%--<td colspan="6">--%>
			<%--订单编号：abcdefg　成交时间：2000-01-01 15:30　金额：<font color="red"><b>319.2</b></font>　--%>

					<%--<a href="<c:url value='/jsps/order/desc.jsp'/>">付款</a>--%>

					<%--等待发货--%>
					<%--<a href="javascript:alert('已确认收货！');">确认收货</a>--%>
					<%--订单结束--%>
		<%--</td>--%>
	<%--</tr>--%>

	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>
	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>
	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>

	<%--<tr bgcolor="gray" bordercolor="gray">--%>
		<%--<td colspan="6">--%>
			<%--订单编号：abcdefg　成交时间：2000-01-01 15:30　金额：<font color="red"><b>319.2</b></font>　--%>

					<%--<a href="<c:url value='/jsps/order/desc.jsp'/>">付款</a>--%>

					<%--等待发货--%>
					<%--<a href="javascript:alert('已确认收货！');">确认收货</a>--%>
					<%--订单结束--%>
		<%--</td>--%>
	<%--</tr>--%>

	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>
	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>
	<%--<tr bordercolor="gray" align="center">--%>
		<%--<td width="15%">--%>
			<%--<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>--%>
		<%--</td>--%>
		<%--<td>书名：Java详解</td>--%>
		<%--<td>单价：39.9元</td>--%>
		<%--<td>作者：张孝祥</td>--%>
		<%--<td>数量：2</td>--%>
		<%--<td>小计：79.8元</td>--%>
	<%--</tr>--%>



  </body>
</html>
