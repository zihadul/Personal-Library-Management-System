using PersonalLibraryManagementSystem.DAL;
using PersonalLibraryManagementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalLibraryManagementSystem.BLL
{
    public class BookManager
    {
        BookGateway bookGateway=new BookGateway();
        public string SaveBook(Book aBook)
        {

            int value = bookGateway.SaveBook(aBook);
            if (value > 0)
            {
                return "This book has been saved!";
            }
            else
            {
                return "Faild to save!";
            }

        }

        public bool IsBookNameExist(Book aBook)
        {
            return bookGateway.IsBookNameExist(aBook);
        }

        public List<Book> GetAllBooks()
        {
            return bookGateway.GetAllBooks();
        }

        public Book GetBookInformation(int id)
        {
            return bookGateway.GetBookInformation(id);
        }

        public List<Book> GetBorrowBooks(int id)
        {
            return bookGateway.GetBorrowBooks(id);
        }

        public string UpdateBorrowTbl(int bookId)
        {
            int value = bookGateway.UpdateBorrowTbl(bookId);
            if (value > 0)
            {
                return "Returned!";
            }
            else
            {
                return "Faild to save!";
            }
        }
    }
}