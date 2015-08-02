using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalLibraryManagementSystem.Model
{
    public class Book
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public string Publisher { get; set; }
        public int SerialNo { get; set; }
        public Member AMember { get; set; }
    }
}