using ProvaDeConhecimento_JulianoEloi.Models;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProvaDeConhecimento_JulianoEloi.Account
{
    public partial class NovoUsuário : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            welcomeBtn.Visible = false;
            usersBtn.Visible = false;
        }

        protected void SaveButton(object sender, EventArgs e)
        {
            var userCpf = cpf.Text;
            var userName = name.Text;
            DateTime userBirthday;
            if (!string.IsNullOrEmpty(userCpf) && !string.IsNullOrEmpty(userName) && DateTime.TryParseExact(birthday.Text, "d/M/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out userBirthday))
            {
                var user = new UserModel() {
                    Cpf = userCpf,
                    Name = userName,
                    BirthDay = userBirthday
                };
                var userList = Session["users-list"] as List<UserModel>;
                if (userList == null)
                {
                    userList = new List<UserModel>();
                }
                userList.Add(user);
                Session["users-list"] = userList;

                welcomeBtn.Visible = true;
                usersBtn.Visible = true;
            }
            else
            {
                message.Text = "Campos obrigatórios não preenchidos";
            }
            return;
        }

        protected void WelcomeButton(object sender, EventArgs e)
        {
            Response.Redirect("BemVindo.aspx");
        }

        protected void UsersButton(object sender, EventArgs e)
        {
            Response.Redirect("Usuarios.aspx");
        }
    }
}