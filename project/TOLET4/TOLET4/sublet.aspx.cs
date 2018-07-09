using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TOLET4
{
    public partial class sublet : System.Web.UI.Page
    {
        public residentialDAO obj = new residentialDAO();

        protected void Page_Load(object sender, EventArgs e)
        {
            obj.execute_query("residentialhouse", "Sublet");
        }

    }
}