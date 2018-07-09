using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TOLET4
{ 
    public class userDTO
    {
        private String password, email, name, contact;

        public userDTO() { }
        public userDTO(String name, String password, String email, String contact)
        {
            this.name = name;
            this.password = password;
            this.name = name;
            this.email = email;
        }
        public String NAME
        {
            get { return name; }

            set { name = value; }
        }


        public String PASSWORD
        {
            get { return password; }

            set { password = value; }
        }

        public String CONTACT
        {
            get { return contact; }

            set { contact = value; }
        }

        public String EMAIL
        {
            get { return email; }

            set { email = value; }
        }
    }
}