<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Information</title>
</head>
<body>
 <form method="Post" action='addUser.jsp'>
 
 *�̸�(�ѱ۽Ǹ�)<input type="text" name="name01" /><br/><br/>
 
 *����<input type="radio" name="sex" value="male" />��
	<input type="radio" name="sex" value="female" />��<br/><br/>
	
*�������<input type="number" name="year" value="birthyear" style="width:40px;height:20px"/>��
		<select name="month">
			<optgroup label="����" >
				<% for(int i=1; i<13; i++) {
					out.println("<option>"+i+"</option>");
				} %>
			</optgroup>
		</select>��
		
		
		
		<select name="day">
  			<optgroup label="����" >
  				<% for(int i=1; i<32; i++) {
  					out.println("<option>"+i+"</option>");
  				 } %>
  			</optgroup>
		</select>��
		
		
		<input type="radio" name="solar" checked="checked" /> <span class="up">���</span>&nbsp; 
		<input type="radio" name="solar"/> <span class="up">����</span>&nbsp;
		<input type="radio" name="solar"/> <span class="up">����</span> <br/><br/>
		
		
*�����з� <select name = "school">
  			<optgroup label="�����ϼ���">
			<option>����</option><option>����</option><option>����</option><option>����</option>
			</optgroup>
  		</select><br/><br/>
  		
*����
	<select name="job">
	  	<optgroup label="�����ϼ���">
			<option value="ȸ���">ȸ���</option>
			<option value="������">������</option>
			<option value="�ڿ���">�ڿ���</option>
			<option value="��������">��������</option>
			<option value="����">����</option>
		</optgroup>
  </select><br/><br/>
  
  
  *��ȥ����<input type="radio" name="marry" value="single" />��ȥ
		<input type="radio" name="marry" value="married" />��ȥ
	&nbsp;&nbsp;&nbsp;�ڳ��
	<select>
	  	<optgroup label="����">
			<option>0</option>
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4�̻�</option>
		</optgroup>	
	</select>�� <br/><br/><br/><br/>


*����ó
&nbsp;&nbsp;��ȭ��ȣ&nbsp;<input type="text" name="callnumber1" style="width:40px" />
-&nbsp;<input type="text" name="callnumber2" style="width:40px" />
-&nbsp;<input type="text" name="callnumber3" style="width:40px" />
<input type="radio" name="home" checked="checked" /> <span class="up">��</span>&nbsp; 
<input type="radio" name="home"/><span class="up">����</span> <br/><br/>

&nbsp;&nbsp;�޴���&nbsp;<input type="number" name="phonenumber"/>-&nbsp;

�̵���Ż�<input type="radio" name="telecom" checked="checked" /> 
	<span class="up">SKT</span>&nbsp; <input type="radio"name="telecom"/> 
	<span class="up">KTF</span><input type="radio" name="telecom"  /> 
	<span class="up">LGT</span><br/><br/>
	��ȭ��ȣ�� �޴�����ȣ 2������ �ϳ��� �ݵ�� �Է��ϼž� �մϴ�.<br/><br/><br/><br/>


*�������ּ�&nbsp;&nbsp;<input type="button" value="����">&nbsp;&nbsp;<input type="button" value="����">
 	<input type='submit' value='����' />
	<input type='reset' value='���' />
 </form>
</body>
</html>