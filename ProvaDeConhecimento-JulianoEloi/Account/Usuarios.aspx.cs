using ProvaDeConhecimento_JulianoEloi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProvaDeConhecimento_JulianoEloi.Account
{
    public partial class Usuário : System.Web.UI.Page
    {
        List<UserModel> users = new List<UserModel>();
        protected void Page_Load(object sender, EventArgs e)
        {
            users = Session["users-list"] as List<UserModel>;
            //users.Add(new UserModel()
            //{
            //    Name = "Vitor",
            //    BirthDay = DateTime.Now,
            //    Cpf = "1234"
            //});
            //users.Add(new UserModel()
            //{
            //    Name = "Noeli",
            //    BirthDay = DateTime.Now,
            //    Cpf = "4321"
            //});
            if (users != null)
            {
                if (!IsPostBack)
                {
                    repUsers.DataSource = users;
                    repUsers.DataBind();
                }
            }
            else
            {
                usersTableIndex.Visible = false;
                message.Text = "Nenhum usuário cadastrado.";
            }
        }

        protected void addUserButton(object sender, EventArgs e)
        {
            Response.Redirect("NovoUsuario.aspx");
        }
    }
}