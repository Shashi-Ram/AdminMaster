using AdminMaster.Repository.Interface;
using AdminMaster.ViewModel;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AdminMaster.Controllers
{
    public class BooksController : Controller
    {
        public GenericInterface<BookWithAuthorViewModel> BookService { get; }
        public BooksController(GenericInterface<BookWithAuthorViewModel> _book)
        {
            BookService = _book;
        }

        

        public IActionResult Index()
        {
            return View();
        }
        public JsonResult GetData()
        {
            var book = BookService.Getdata();
            return Json(book);
        }
    }
}
