<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Information</title>
</head>
<body>
 <form method="Post" action='addUser.jsp'>
 
 *이름(한글실명)<input type="text" name="name01" /><br/><br/>
 
 *성별<input type="radio" name="sex" value="male" />남
	<input type="radio" name="sex" value="female" />여<br/><br/>
	
*생년월일<input type="number" name="year" value="birthyear" style="width:40px;height:20px"/>년
		<select name="month">
			<optgroup label="선택" >
				<% for(int i=1; i<13; i++) {
					out.println("<option>"+i+"</option>");
				} %>
			</optgroup>
		</select>월
		
		
		
		<select name="day">
  			<optgroup label="선택" >
  				<% for(int i=1; i<32; i++) {
  					out.println("<option>"+i+"</option>");
  				 } %>
  			</optgroup>
		</select>일
		
		
		<input type="radio" name="solar" checked="checked" /> <span class="up">양력</span>&nbsp; 
		<input type="radio" name="solar"/> <span class="up">음력</span>&nbsp;
		<input type="radio" name="solar"/> <span class="up">윤달</span> <br/><br/>
		
		
*최종학력 <select name = "school">
  			<optgroup label="선택하세요">
			<option>대졸</option><option>고졸</option><option>중졸</option><option>초졸</option>
			</optgroup>
  		</select><br/><br/>
  		
*직업
	<select name="job">
	  	<optgroup label="선택하세요">
			<option value="회사원">회사원</option>
			<option value="예술가">예술가</option>
			<option value="자영업">자영업</option>
			<option value="프리랜서">프리랜서</option>
			<option value="무직">무직</option>
		</optgroup>
  </select><br/><br/>
  
  
  *결혼여부<input type="radio" name="marry" value="single" />미혼
		<input type="radio" name="marry" value="married" />기혼
	&nbsp;&nbsp;&nbsp;자녀수
	<select>
	  	<optgroup label="선택">
			<option>0</option>
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4이상</option>
		</optgroup>	
	</select>명 <br/><br/><br/><br/>


*연락처
&nbsp;&nbsp;전화번호&nbsp;<input type="text" name="callnumber1" style="width:40px" />
-&nbsp;<input type="text" name="callnumber2" style="width:40px" />
-&nbsp;<input type="text" name="callnumber3" style="width:40px" />
<input type="radio" name="home" checked="checked" /> <span class="up">집</span>&nbsp; 
<input type="radio" name="home"/><span class="up">직장</span> <br/><br/>

&nbsp;&nbsp;휴대폰&nbsp;<input type="number" name="phonenumber"/>-&nbsp;

이동통신사<input type="radio" name="telecom" checked="checked" /> 
	<span class="up">SKT</span>&nbsp; <input type="radio"name="telecom"/> 
	<span class="up">KTF</span><input type="radio" name="telecom"  /> 
	<span class="up">LGT</span><br/><br/>
	전화번호나 휴대폰번호 2가지중 하나는 반드시 입력하셔야 합니다.<br/><br/><br/><br/>


*거주지주소&nbsp;&nbsp;<input type="button" value="국내">&nbsp;&nbsp;<input type="button" value="국외">
 	<input type='submit' value='가입' />
	<input type='reset' value='취소' />
 </form>
</body>
</html>