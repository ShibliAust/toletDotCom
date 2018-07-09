using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace TOLET4
{
    public partial class office : System.Web.UI.Page
    {
        public commercialDAO obj = new commercialDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.execute_query("commercialspace", "Office");
        }

    }
}