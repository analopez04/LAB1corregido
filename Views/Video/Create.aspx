<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Registrar video</title>
    <meta charset="UTF-8">
  <meta name="description" content="Free Web tutorials">
  <meta name="keywords" content="HTML,CSS,XML,JavaScript">
  <meta name="author" content="John Doe">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
   

    <form action="/Video/Create" method="post">

    <fieldset>
    <legend>Datos del Video</legend>   

    <label for= "idVideo">id Video</label>
    <input type="text" name="idVideo"/>

    <label for= "titulo">Titulo</label>
    <input type="text" name="titulo"/>

    <label for= "repro">No. Reproducciones</label>
    <input type="text" name="repro"/>

    <label for= "url">URL</label>
    <input type="text" name="url"/>

    <input type="submit" value="Registrar" /> 
    </fieldset>
    </form>
</body>
</html>
