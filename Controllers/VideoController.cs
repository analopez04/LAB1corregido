﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Data;
using System.Data.SqlClient;

using MVCPlantilla.Utilerias;

namespace MvcPlantilla.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/

        public ActionResult Index()
        {

            List<SqlParameter> parametros = new List<SqlParameter>();                      
            ViewData["video"]= BaseHelper.ejecutarConsulta("SELECT * FROM video" , CommandType.Text, parametros);

            return View();
        }


        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(int idVideo, string titulo, string repro, string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));
            BaseHelper.ejecutarSentencia("INSERT INTO video VALUES(@idVideo, @titulo, @repro, @url)", CommandType.Text, parametros);

            return RedirectToAction("Index", "Video");
        }

        public ActionResult Edit()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Edit(int idVideo, string titulo, int repro, string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            BaseHelper.ejecutarSentencia("UPDATE video SET  titulo=@titulo, repro=@repro, url=@url WHERE idVideo=@idVideo", CommandType.Text, parametros);

            return RedirectToAction("Index", "Video");
        }

        public ActionResult Delete()
        {
            return View();
        }
    
        [HttpPost]
        public ActionResult Delete(int idVideo)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));           
            BaseHelper.ejecutarSentencia("DELETE FROM video WHERE idVideo=@idVideo", CommandType.Text, parametros);

            return RedirectToAction("Index", "Video");
        }
    }
}
