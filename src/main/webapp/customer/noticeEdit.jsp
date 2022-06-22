<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
//String seq=request.getParameter("c");
%>    
<%
/* NoticeDao dao=new NoticeDao();
Notice n=dao.getNotice(seq); */
/* 
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection conn=DriverManager.getConnection(url,user,pw);
//접속성공
//String sql="select * from notices where seq="+seq;
String sql="select * from notices where seq=?";

//Statement st=conn.createStatement();
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1,seq);
//ResultSet rs=st.executeQuery(sql);//stmt형식 실행 select 실행
ResultSet rs=pstmt.executeQuery(); //pstmt형식 실행
rs.next();
*/

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>noticeEdit.jsp</h3>
<form action="noticeEditProc.do" method="post">
<table class="twidth">
	<colgrou>
		<col width=15%/>
		<col width=35%/>
		<col width=5%/>
		<col width=35%/>
	</colgrou>
	<caption>Detail</caption>
	<tbody>
		<tr>
			<th class="left">글번호</th>
			<td>${n.seq}</td>
			<th class="left">조회수</th>
			<td>${n.hit}</td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td>${n.writer}</td>
			<th class="left">작성시간</th>
			<td>${n.regdate}</td>
		</tr>
		<tr>
			<th class="left">제목</th>
			<td colspan="3" id="title">
				<input type="text" name="title" value="${n.title}"/>
			</td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content">
				<textarea class="txt" name="content">${n.content}</textarea>
			</td>
		</tr>
		<tr>
			<th class="left">첨부</th>
			<td colspan="3" id="addfile">
				첨부
			</td>
		</tr>
	</tbody>
</table>
<div>
	<input type="hidden" name="c" value="${n.seq}" />
	<input type="submit" value="수정"/>
	<a href="noticeDetail.jsp?c=${n.seq}">취소</a>
</div>
</form>
</body>
</html>