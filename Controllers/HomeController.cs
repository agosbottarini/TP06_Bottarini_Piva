using Microsoft.AspNetCore.Mvc;

namespace TP06_Bottarini_Piva.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        return View();
    }
        public IActionResult Elecciones23()
    {
        return View();
    }
        public IActionResult Creditos()
    {
        return View();
    }
        public IActionResult AgregarPartido()
    {
        return View();
    }
        public IActionResult AgregarCandidato()
    {
        return View();
    }
        public IActionResult VerDetallePartido()
    {
        return View();
    }
         public IActionResult VerDetalleCandidato()
    {
        return View();
    }

}

