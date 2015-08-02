using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using PersonalLibraryManagementSystem.Model;
using System.Data.SqlClient;

namespace PersonalLibraryManagementSystem.DAL
{
    public class BookGateway
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionDb"].ConnectionString;

        public int SaveBook(Book aBook)
        {

            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO BookTBL VALUES('" + aBook.Title + "','" + aBook.Author+ "','" + aBook.Publisher + "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public bool IsBookNameExist(Book aBook)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM BookTBL WHERE Title='" + aBook.Title + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                reader.Close();
                connection.Close();
                return true;
            }
            else
            {
                reader.Close();
                connection.Close();
                return false;
            }
        
        }

        public List<Book> GetAllBooks()
        {
            int count = 0;
            List<Book> booklist = new List<Book>();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM BookTBL";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Book aBook =new Book();
                aBook.Id = int.Parse(reader["Id"].ToString());
             aBook.Title = reader["Title"].ToString();
             aBook.Author = reader["Author"].ToString();
             aBook.Publisher = reader["Publisher"].ToString();
             count++;
             aBook.SerialNo = count;

               booklist.Add(aBook);

            }
            reader.Close();
            connection.Close();
            return booklist;
        }

        public Book GetBookInformation(int id)
        {
            Book aBook = new Book();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM BookTBL WHERE Id='"+id+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                aBook.Id = int.Parse(reader["Id"].ToString());
                aBook.Title = reader["Title"].ToString();
                aBook.Author = reader["Author"].ToString();
                aBook.Publisher = reader["Publisher"].ToString();

            }
            reader.Close();
            connection.Close();
            return aBook;
        }

        public List<Book> GetBorrowBooks(int id)
        {

            List<Book> booklist = new List<Book>();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM BorrowBookTBL WHERE MemberId='"+id+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            { 

                int bookId = int.Parse(reader["BookId"].ToString());
                Book aBook =GetBookInformation(bookId);
                booklist.Add(aBook);

            }
            reader.Close();
            connection.Close();
            return booklist;
        }

        public int UpdateBorrowTbl(int bookId)
        {

            SqlConnection connection = new SqlConnection(connectionString);
            string query = "DELETE BorrowBookTBL WHERE BookId='"+bookId+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }
    }
}