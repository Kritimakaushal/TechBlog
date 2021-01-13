
<%@page import="com.kritima.TechBlog.web.model.PostsData"%>
<%@page import="java.util.List"%>
<%@page import="com.kritima.TechBlog.web.dao.connectsql"%>
<%@page import="com.kritima.TechBlog.web.dao.PostDao"%>

<div class="row">
<%
Thread.sleep(500);
PostDao dao=new PostDao(connectsql.getConnect());
int cid=Integer.parseInt(request.getParameter("cid"));
List<PostsData> list=null;
if(cid==0)
{
	list=dao.getAllPosts();
}
else
{
	list=dao.getPostsByCid(cid);	
}
if(list.size()==0)
{
 out.println("<h3 class='display-3 text-center'>No posts in this category...</h3>");
 return;
}
for(PostsData p :list)
{
	%>
	<div class="col-md-6 mt-2">
		<div class="card">
			<div class="card-body">
			<b><%= p.getPtitle() %></b>
			<p><%=p.getPcontent() %> </p>
			<pre><%= p.getPcode() %></pre>
			</div>		
		</div>
	</div>
	<%
}
%>
</div>