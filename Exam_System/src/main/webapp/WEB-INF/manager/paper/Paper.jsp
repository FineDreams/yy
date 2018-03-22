<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>题库</title>
<script src="<%=basePath %>res/easyui/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="<%=basePath %>res/easyui/jquery.easyui.min.js" type="text/javascript"></script>
<link href="<%=basePath %>res/easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>res/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath %>res/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
<script type="text/javascript">
var paperId = "";
$(function (){
	$('#tab2').datagrid({
		url:"<%=basePath %>paper.do?method=getPaperInfo",
		fitColumns:true,
		singleSelect:true,
		pagination:true,
		pageSize:10,
		pageList:[10,20,40],
		rownumbers:true,//行号
		columns:[[
		          {field:'paperName',title:'试卷名',halign:'center',align:'center',width:20},
		          {field:'fullScore',title:'满分',halign:'center',align:'center',width:20},
		          {field:'paperTime',title:'出卷时间',halign:'center',align:'center',width:20},
		          {field:'validateTime',title:'做卷时间(小时)',halign:'center',align:'center',width:20},
		          {field:'available',title:'有效期',halign:'center',align:'center',width:20},
		          {field:'byUser',title:'出卷人',halign:'center',align:'center',width:20},
		          {field:'caozuo',title:'操作',halign:'center',align:'center',width:20,formatter:formatter1}
		          ]],
	})
})
function formatter1(value,row){
	return "<a href='javascript:enterMaintainPage("+row.paperID+")'>修改</a>|<a href='javascript:deletePaper("+row.paperID+")'>删除</a>";
}
function enterMaintainPage(id){
	window.parent.addTab('修改试卷信息','<%=basePath %>paper.do?method=enterPaperMaintainPage&paperId='+id)
}
function addPaper(id){
	window.parent.addTab('新增试卷','<%=basePath %>/admin/toAddPaper')
}
function deletePaper(id){
	$.ajax({
		url:'<%=basePath%>paper.do?method=delPaper&paperId='+id,
		type:'post',
		dataType:'json',
		returnType:'json',
		success:function(r){
			if(r == "ok"){
				$('#tab2').datagrid('reload')
			}else{
				$.messager.alert('提示', '请重试');
			}
		}
	})
}
function search(){
	var type = $.trim($('#byUser').val());
	var mainContent = $.trim($('#paperName').val()) ;
		$('#tab2').datagrid({
			url:"<%=basePath %>paper.do?method=getPaperInfo&byUser="+encodeURI(encodeURI(type))+"&paperName="+encodeURI(encodeURI(mainContent)),
			type:'post',
			fitColumns:true,
			singleSelect:true,
			pagination:true,
			pageSize:10,
			pageList:[10,20,40],
			rownumbers:true,//行号
			columns:[[
					{field:'paperName',title:'试卷名',halign:'center',align:'center',width:20},
					{field:'fullScore',title:'满分',halign:'center',align:'center',width:20},
					{field:'paperTime',title:'出卷时间',halign:'center',align:'center',width:20},
					{field:'validateTime',title:'做卷时间(小时)',halign:'center',align:'center',width:20},
					{field:'byUser',title:'出卷人',halign:'center',align:'center',width:20},
					{field:'caozuo',title:'操作',halign:'center',align:'center',width:20,formatter:formatter1}
					]],
		})
}
</script>
<style type="text/css">
.abody{
	position: absolute;
	left: 0;top: 0;bottom: 0;right: 0;
}
a{
	text-decoration:none;
}
.panel_title_1 div{
	font-size:15px;
	text-align:center;
	color:red;
	font-weigh:10px;
	padding:1px;
}

.panel_text div{
	vertical-align:middle;
	line-height:100px;
	text-align:center;
}
.combo-panel {
  height:60px;
  overflow: auto;
}
</style>
</head>
<body class="abody">
	<div class="easyui-panel" title="试卷信息维护"  data-options="headerCls:'panel_title_1',collapsible:false">
		<div style="padding:5px;line-height: 30px">
				试卷名:<input type="text"  id="paperName" class="easyui-textbox" value="" size=20 data-options="prompt:'请输入试卷名'"/>&nbsp;  
				出卷人:<input type="text"  id="byUser" class="easyui-textbox" value="" size=20 data-options="prompt:'请输入出卷人'"/>&nbsp;  
			<div style="float:right;">
				<a href="javascript:search()" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
		        <a href="javascript:addPaper();" class="easyui-linkbutton" iconCls="icon-add" style="width:120px">新增试卷</a>  
			</div>
		</div>
		<div>
			<table id="tab2" width="100%" style="padding:5px;"></table>
		</div>
	</div>
</body>
</html>