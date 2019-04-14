using PMSOperation;
using PMSOperation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PMSWeb.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
        [HttpGet]
        public ActionResult SearchProperty()
        {
            SearchModel model = new SearchModel();
            return View("~/Views/Search/Search.cshtml", model);
        }

        [HttpPost]
        public ActionResult SearchProperty(SearchModel filter)
        {
            PropertyViewOperation operation = new PropertyViewOperation();
            var model = operation.GetSearchedProperties(filter);
            return View("~/Views/Property/Index.cshtml", model);
        }
    }
}