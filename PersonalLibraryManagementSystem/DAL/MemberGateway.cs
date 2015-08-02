using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Configuration;
using PersonalLibraryManagementSystem.Model;
using System.Data.SqlClient;

namespace PersonalLibraryManagementSystem.DAL
{
    public class MemberGateway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["connectionDb"].ConnectionString;

        public int SaveMember(Member aMember)
        {

            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO MemberTBL VALUES('" + aMember.Number + "','" + aMember.Name + "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public bool IsMemberExist(Member aMember)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM MemberTBL WHERE Number='" + aMember.Number + "'";
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

        public int BorrowBook(int memberId, int bookId)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO BorrowBookTBL VALUES('" + bookId + "','" + memberId + "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }

        public int GetMemberId(Member aMember)
        {
            int memberId = 0;
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM MemberTBL WHERE Number='" + aMember.Number + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {

                memberId = int.Parse(reader["Id"].ToString());
            }

            reader.Close();
            connection.Close();
            return memberId;
        }
        public Member GetMemberInformation(int id)
        {
            Member aMember = new Member();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM MemberTBL WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                aMember.Name = reader["Name"].ToString();

            }
            reader.Close();
            connection.Close();
            return aMember;
        }

        public List<Member> GetAllMembers()
        {
            int count = 0;
            List<Member> memberList = new List<Member>();
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM MemberTBL";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Member aMember = new Member();
                aMember.Name = reader["Name"].ToString();
                aMember.Number = reader["Number"].ToString();
                count++;
                aMember.SerialNo = count;

                memberList.Add(aMember);

            }
            reader.Close();
            connection.Close();
            return memberList;
        }

    }
}