﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Modificar datos</title>
</head>
<body>
    <form action="/Video/Edit" method="post">
    <fieldset>
    <legend>Modificar datos</legend>

    <label for="idVideo">id Video</label>
    <input type="text" name="idVideo" />

    <label for="titulo">Titulo</label>
    <input type="text" name="titulo" />

    <label for="repro">No. Reproducciones</label>
    <input type="text" name="repro" />

    <label for="url">URL</label>
    <input type="text" name="url" />

        <input type="submit" value="Modificar " />

    </fieldset>
    </form>
</body>
</html>
