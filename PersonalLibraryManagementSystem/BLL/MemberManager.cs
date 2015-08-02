using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PersonalLibraryManagementSystem.DAL;
using PersonalLibraryManagementSystem.Model;

namespace PersonalLibraryManagementSystem.BLL
{
    public class MemberManager
    {
        MemberGateway memberGateway=new MemberGateway();

        public string SaveMember(Member aMember)
        {

            int value = memberGateway.SaveMember(aMember);
            if (value > 0)
            {
                return "This member has been saved!";
            }
            else
            {
                return "Faild to save!";
            }
        }

        public bool IsMemberExist(Member aMember)
            {
                return memberGateway.IsMemberExist(aMember);

            }

        public int GetMemberId(Member aMember)
        {
            return memberGateway.GetMemberId(aMember);
        }

        public string BorrowBook(int memberId, int bookId)
        {
            int value = memberGateway.BorrowBook(memberId,bookId);
            if (value > 0)
            {
                return "Borrowed!";
            }
            else
            {
                return "Faild!!";
            }
        }
        public List<Member> GetAllMembers()
        {
            return memberGateway.GetAllMembers();
        }
    }
}