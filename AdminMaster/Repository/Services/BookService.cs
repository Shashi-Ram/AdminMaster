using AdminMaster.Models;
using AdminMaster.Repository.Interface;
using AdminMaster.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AdminMaster.Repository.Services
{
    public class BookService:GenericInterface<BookWithAuthorViewModel>
    {
        private MSDBContext dbContext;
        public BookService()
        {
            dbContext = new MSDBContext();
        }

        public List<BookWithAuthorViewModel> Getdata()
        {
            var books = (from book in dbContext.books
                         join
                         Author in dbContext.authors
                         on book.Author_Id equals Author.Id
                         select new BookWithAuthorViewModel()
                         {
                             Id=book.Id,
                             Title=book.Title,
                             Price=book.Price,
                             Quantity=book.Quantity,
                             Published_On=book.Published_On,
                             AuthorName=Author.Name,
                             AuthorEmail=Author.Email,
                             AuthorMobile=Author.Mobile
                         }).ToList();
            return books;
        }
    }
}
