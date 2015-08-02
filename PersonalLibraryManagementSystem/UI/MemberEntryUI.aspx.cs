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
    public partial class MemberEntryUI : System.Web.UI.Page
    {
        MemberManager memberManager=new MemberManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            memberEntryGridView.DataSource = memberManager.GetAllMembers();
            memberEntryGridView.DataBind();

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Member aMember=new Member();
            aMember.Number = numberMemberEntryTextBox.Text;
            aMember.Name = nameMemberEntryTextBox.Text;
            if (memberManager.IsMemberExist(aMember))
            {
                mesMemberLabel.Text = "Sorry, Member already exists!";
            }
            else
            {
                mesMemberLabel.Text = memberManager.SaveMember(aMember);
                memberEntryGridView.DataSource = memberManager.GetAllMembers();
                memberEntryGridView.DataBind();
            }
        }
    }
}