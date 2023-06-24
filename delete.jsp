<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%
String id=request.getParameter("id");
//out.print(id);
String sql="delete from movie where id='"+id+"'";
int n=stmt1.executeUpdate(sql);
if(n==1)
{
    %>
    <script language="javascript">
        alert("removed  Successful");
        window.location.href="admin_view_movie.jsp";
    </script>

<%
}
%>