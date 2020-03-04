<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lista de Videos</title>
</head>
<body>
    Existen <%:((System.Data.DataTable)ViewData["video"]).Rows.Count %> videos
    <br />  
   <table>
   <tr>ID Video</tr>
   <tr>Titulo</tr>
   <tr>No. Reproducciones</tr>
   <tr>URL</tr>
   <%
       foreach (System.Data.DataRow ren in ((System.Data.DataTable)ViewData["video"]).Rows)
       {%>
       <tr>
       <td><%:ren["idVideo"].ToString()%></td>
       <td><%:ren["titulo"].ToString()%></td>
       <td><%:ren["repro"].ToString()%></td>
       <td><%:ren["url"].ToString()%></td>

       </tr>
       <%}
            %>
   </table>       
    

</body>
</html>
