<#include "/custom.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#function getFormInputHtml column>
<#assign dbtype=column.sqlTypeName?lower_case>
<#assign colname=column.columnName?lower_case>
<#assign rtn>
<#if (colname=="id"||colname=="createuser"||colname=="createdate"||colname=="updateuser"||colname=="updatedate"||colname=="remarks"||colname=="delflag") ><#else>
	<#if dbtype=="number" >
	<input id="${column.columnNameLower}" name="${column.columnNameLower}" class="easyui-numberbox" data-options="min:0,max:999999,precision:${column.decimalDigits},required:true"/>
	<#elseif (dbtype=="varchar2"||dbtype=="char")  >
	<input id="${column.columnNameLower}" name="${column.columnNameLower}" class="easyui-textbox" data-options="required:true"/>
	<#elseif (dbtype=="clob")  >
	<input id="${column.columnNameLower}" name="${column.columnNameLower}" class="easyui-textbox" data-options="required:true,multiline:true" style="height:100px"/>
	<#elseif (dbtype=="date")>
	<input id="${column.columnNameLower}" name="${column.columnNameLower}" class="easyui-textbox" data-options="required:true" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"/>
	</#if>
</#if>
</#assign>
<#return rtn?trim>
</#function>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/taglib/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>${table.tableAlias}</title>
	<%@ include file="/WEB-INF/view/taglib/header.jsp" %>
	<%@ include file="/WEB-INF/view/taglib/easyui.jsp" %>
	<%@ include file="/WEB-INF/view/taglib/layer.jsp" %>
	<%@ include file="/WEB-INF/view/taglib/uedit.jsp" %>
  </head>
  <body>
 	<div style="position:absolute;top:10px;left:20px;right:20px;bottom:10px;">
        <form id="dataForm" method="post">
        	<#list table.columns as column>
           	<#if (column.columnName?lower_case=="id"||column.columnName?lower_case=="createuser"||column.columnName?lower_case=="createdate"||column.columnName?lower_case=="updateuser"||column.columnName?lower_case=="updatedate"||column.columnName?lower_case=="remarks"||column.columnName?lower_case=="delflag") >
           	<#else>
			<div class="fitem">
				<label>${column.columnAlias}</label>
				${getFormInputHtml(column)}
			</div>
			</#if>
		</#list>
            <input id="id" name="id" type="hidden"/>
		</form>
    </div>
    <script type="text/javascript">
	    var loadi,url,index = parent.layer.getFrameIndex(window.name);
	    $(document).ready(function(){
	        var row = parent.$('#dataList').datagrid('getSelected');
	        url = '${"${"}ctx${"}"}/${moduleC}${table.classNameFirstLower}/save';
	        if(row != null) {
	            $('#dataForm').form('load', row);
	    		url = '${"${"}ctx${"}"}/${moduleC}${table.classNameFirstLower}/update';
	        }
	    });
	
	    function submitInfo(){
	        $('#dataForm').form('submit',{
	            url: url,
	            onSubmit: function(param){
	            	if($(this).form('validate')) {
	            		loadi = parent.layer.load(2, {shade: layerLoadShade,time: layerLoadMaxTime});
	            	}
	                return $(this).form('validate');
	            },
	            success: function(data){
	            	parent.layer.close(loadi);
	                cleanErrMsg();
	                var data = eval('(' + data + ')');
	                if (data.success==TRUE){
	            		parent.$.${table.classNameFirstLower}.reloadData();
	                	parent.layer.msg("操作成功！", {offset: layerMsgOffset,icon: 6,shift: 8,time: layerMsgTime});
	            		parent.layer.close(index);
	                } else {
	                    renderErrMsg(data.message);
	                }
	            }
	        });
	    }
    </script>
  </body>
</html>
