using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name 

namespace ProvaDeConhecimento_JulianoEloi.Account
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            message.Text = "";
        }

        protected void ButtonConfirm(object sender, EventArgs e)
        {
            try
            {
                string uid = user.Text;
                string pass = password.Text;
                if (uid == "" || pass == "")
                {
                    message.Text = "Campos obrigatórios não preenchidos";
                    return;
                }
                Session["user"] = uid;
                con.Open();
                string qry = "select * from Ulogin where UserId='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Redirect("BemVindo.aspx");
                }
                else
                {
                    Response.Redirect("Sair.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void ButtonCancel(object sender, EventArgs e)
        {
            Response.Redirect("Sair.aspx");
        }
    }
}