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
    public partial class BorrowBookUI : System.Web.UI.Page
    {
        BookManager bookManager=new BookManager();
        MemberManager memberManager=new MemberManager();
        BorrowBookManager borrowBookManager = new BorrowBookManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadBorrowDropDown();
            borrowBookGridView.DataSource = borrowBookManager.BorrowedBookList();
            borrowBookGridView.DataBind();

        }

        public void LoadBorrowDropDown()
        {
            if (!IsPostBack)
            {
                borrowBookDropDownList.DataSource = bookManager.GetAllBooks();
                borrowBookDropDownList.DataTextField = "Title";
                borrowBookDropDownList.DataValueField = "Id";
                borrowBookDropDownList.DataBind();
            }
        }

        protected void borrowBookDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(borrowBookDropDownList.SelectedValue);
            authorBorrowBookTextBox.Text = bookManager.GetBookInformation(id).Author;
            publisherBorrowBookTextBox.Text = bookManager.GetBookInformation(id).Publisher;
        }

        protected void borrowButton_Click(object sender, EventArgs e)
        {
            Member anMember=new Member();
            anMember.Number = numberBorrowBookTextBox.Text;
            if (!memberManager.IsMemberExist(anMember))
            {
                mesBorrowBookLabe.Text = "Sorry, member number doesn't exists!";
            }
            else
            {
               int memberId = memberManager.GetMemberId(anMember);
                int bookId =int.Parse( borrowBookDropDownList.SelectedValue);

                mesBorrowBookLabe.Text = memberManager.BorrowBook(memberId, bookId);
                borrowBookGridView.DataSource = borrowBookManager.BorrowedBookList();
                borrowBookGridView.DataBind();
            }
        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            borrowBookGridView.PageIndex = e.NewPageIndex;
            borrowBookGridView.DataBind();
        }

      
    }
}