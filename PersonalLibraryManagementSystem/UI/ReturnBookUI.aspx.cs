using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PersonalLibraryManagementSystem.BLL;
using PersonalLibraryManagementSystem.Model;

namespace PersonalLibraryManagementSystem.UI
{
    public partial class ReturnBookUI : System.Web.UI.Page
    {
        MemberManager memberManager=new MemberManager();
        BookManager bookManager=new BookManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showButton_Click(object sender, EventArgs e)
        {
           
            ShowAllBooks();
           
        }

        protected void returnButton_Click(object sender, EventArgs e)
        {
            int bookId = int.Parse(returnBookDropDownList.SelectedValue);
            mesReturnLabel.Text = bookManager.UpdateBorrowTbl(bookId);
            ShowAllBooks();

        }

        public void ShowAllBooks()
        {
            Member aMember = new Member();
            aMember.Number = numberReturnBookTextBox.Text;
            if (!memberManager.IsMemberExist(aMember))
            {
                mesReturnLabel.Text = "Sorry, member number doesn't exists!";
            }
            else
            {
                int memberId = memberManager.GetMemberId(aMember);

                returnBookDropDownList.DataSource = bookManager.GetBorrowBooks(memberId);
                returnBookDropDownList.DataTextField = "Title";
                returnBookDropDownList.DataValueField = "Id";
                returnBookDropDownList.DataBind();
                returnGridView.DataSource = bookManager.GetBorrowBooks(memberId);
                returnGridView.DataBind();


            }
        }
    }
}