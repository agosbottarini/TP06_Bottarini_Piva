using Microsoft.AspNetCore.Mvc;

namespace TP6. Elecciones 2023.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        return View();
    }
}
