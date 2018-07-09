using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TOLET4
{
    public class contactDTO
    {
        private String name, email, category, massege, date;

        public contactDTO() { }

        public contactDTO(String name, String email, String category, String massege, String date )
        {
            this.name = name;
            this.email = email;
            this.category = category;
            this.massege = massege;
            this.date = date;
        }

        public String NAME
        {
            get { return name; }

            set { name = value; }
        }

        public String EMAIL
        {
            get { return email; }

            set { email = value; }
        }
        public String CATEGORY
        {
            get { return category; }

            set { category = value; }
        }
        
        public String MASSEGE
        {
            get { return massege; }

            set { massege = value; }
        }
        public String DATE
        {
            get { return date; }

            set { date = value; }
        }
    }
}