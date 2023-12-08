using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testing_XML.UserControls
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Login_form.Visible = true;
            Regist_form.Visible = false;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string user = "xtares";
            string pass = "123456";


            bool v = tb_Nome.Value.ToLower() == user && tb_Password.Value == pass ? true : false; 
        
           
                if (v)
                {

                    Session["Logado"] = "yup";
                    Response.Redirect("/Pages/LandingPage.aspx");
                }
                else
                {
                    Session["Logado"] = string.Empty;
                    lb_Erro.Text = "Utilizador ou password errados";
                }
         

        }

        protected void btn_submit_Regist_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Regist_Click(object sender, EventArgs e)
        {
            Login_form.Visible = false;
            Regist_form.Visible = true;
        }

        protected void btn_submit_Login_Click(object sender, EventArgs e)
        {
            Login_form.Visible = true;
            Regist_form.Visible = false;
        }

      
    }
}