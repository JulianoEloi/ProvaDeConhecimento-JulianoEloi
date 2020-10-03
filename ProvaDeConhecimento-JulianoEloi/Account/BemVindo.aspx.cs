using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProvaDeConhecimento_JulianoEloi.Account
{
    public partial class BemVindo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string uid = (string) Session["user"];
            userName.Text = uid.ToUpper();
            date.Text = DateTime.Now.ToString("dd/MM/yyyy");
            time.Text = DateTime.Now.ToString("HH:mm");
        }

        protected void ListCreateButton(object sender, EventArgs e)
        {
            Response.Redirect("Usuarios.aspx");
        }
    }
}