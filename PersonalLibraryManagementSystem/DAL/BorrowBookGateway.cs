using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using PersonalLibraryManagementSystem.Model;

namespace PersonalLibraryManagementSystem.DAL
{
    public class BorrowBookGateway
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionDb"].ConnectionString;
        BookGateway bookGateway = new BookGateway();
        MemberGateway memberGateway = new MemberGateway();
        public List<Book> BorrowedBookList() {
            int count = 0;
            List<Book> booklist = new List<Book>();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM BorrowBookTBL";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Book myBook = new Book();
                int bookId = int.Parse(reader["BookId"].ToString());
                int memberId = int.Parse(reader["MemberId"].ToString());
                Book book = bookGateway.GetBookInformation(bookId);
                Member member = memberGateway.GetMemberInformation(memberId);
                myBook.AMember = new Member();
                myBook.Title = book.Title;
                myBook.Author = book.Author;
                myBook.Publisher = book.Publisher;
                myBook.AMember.Name = member.Name;
                count++;
                myBook.SerialNo = count;

                booklist.Add(myBook);

            }
            reader.Close();
            connection.Close();
            return booklist;
        }
        
    }
}