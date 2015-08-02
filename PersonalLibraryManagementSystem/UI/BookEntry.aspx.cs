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
    public partial class BookEntry : System.Web.UI.Page
    {
        BookManager bookManager=new BookManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            bookEntryGridView.DataSource = bookManager.GetAllBooks();
            bookEntryGridView.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Book aBook=new Book();
            aBook.Title = titleBookEntryTextBox.Text;
            aBook.Author = authorBookEntryTextBox.Text;
            aBook.Publisher = publisherBookEntryTextBox.Text;
            if (bookManager.IsBookNameExist(aBook))
            {
                messageLabel.Text = "Sorry,Book already exists!";
            }
            else
            {
                messageLabel.Text = bookManager.SaveBook(aBook);
                bookEntryGridView.DataSource = bookManager.GetAllBooks();
                bookEntryGridView.DataBind();
            }
        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            bookEntryGridView.PageIndex = e.NewPageIndex;
            bookEntryGridView.DataBind();
        }
    }
}