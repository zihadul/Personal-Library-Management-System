using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PersonalLibraryManagementSystem.DAL;
using PersonalLibraryManagementSystem.Model;

namespace PersonalLibraryManagementSystem.BLL
{
    public class BorrowBookManager
    {
        BorrowBookGateway borrowBookGateway = new BorrowBookGateway();
        public List<Book> BorrowedBookList() {
            return borrowBookGateway.BorrowedBookList();

        }
    }
}