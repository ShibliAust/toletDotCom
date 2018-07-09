using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TOLET4
{
    public class commercialDTO
    {

        private String title, category, division, district, address, rent, size, description,
                 carparking, lift, contact, mail, image, date;

        public commercialDTO(String title, String category, String division, String district, String address, String rent, String size, String description
         , String carprking, String lift, String contact, String mail, String image, String date )
        {
            this.title = title;
            this.category = category;
            this.division = division;
            this.district = district;
            this.address = address;

            this.rent = rent;
            this.size = size;
            this.description = description;
            

            this.carparking = carprking;
            this.lift = lift;
            this.contact = contact;
            this.mail = mail;
            this.image = image;
            this.date = date;

        }

        public String TITLE
        {
            get { return title; }

            set { title = value; }
        }
        public String CATEGORY
        {
            get { return category; }

            set { category = value; }
        }
        public String DIVISION
        {
            get { return division; }

            set { division = value; }
        }
        public String DISTRICT
        {
            get { return district; }

            set { district = value; }
        }
        public String ADDRESS
        {
            get { return address; }

            set { address = value; }
        }
        public String RENT
        {
            get { return rent; }

            set { rent = value; }
        }
        public String SIZE
        {
            get { return size; }

            set { size = value; }
        }
        public String DESCRIPTION
        {
            get { return description; }

            set { description = value; }
        }
        
        public String CARPARKING
        {
            get { return carparking; }

            set { carparking = value; }
        }
        public String LIFT
        {
            get { return lift; }

            set { lift = value; }
        }
        public String CONTACT
        {
            get { return contact; }

            set { contact = value; }
        }
        public String MAIL
        {
            get { return mail; }

            set { mail = value; }
        }
        public String IMAGE
        {
            get { return image; }

            set { image = value; }
        }

        public String DATE
        {
            get { return date; }

            set { date = value; }
        }

    }
}