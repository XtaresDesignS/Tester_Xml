using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
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
            if (!IsPostBack)
            {
                ViewState["RegistVisible"] = false;
                ViewState["LoginVisible"] =  true ;
            }
         
            Login_form.Visible = (bool)ViewState["LoginVisible"];
            Regist_form.Visible = (bool)ViewState["RegistVisible"];
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
            bool v = tb_Nome_Regist.Value != string.Empty ? true : false;
            bool y = email.Value != string.Empty ? true : false;
            bool z = Password_Regist.Value != string.Empty && Password_Regist.Value == Password_Regist_Confirm.Value ? true : false;
            lb_Erro_2.Text = v == true && y == true && z == true ? "Registo criado com sucesso!!" : " os campos devem ser preenchidos ";          
           


        }

        protected void btn_Regist_Click(object sender, EventArgs e)
        {
            Login_form.Visible = false;
            Regist_form.Visible = true;

            //para manter a página no formulário aberto no caso do formulário não ser submito 
            ViewState["LoginVisible"] = false;
            ViewState["RegistVisible"] = true;
           
        }

        protected void btn_submit_Login_Click(object sender, EventArgs e)
        {
            Login_form.Visible = true;
            Regist_form.Visible = false;

            //para manter a página no formulário aberto no caso do formulário não ser submito 
            ViewState["LoginVisible"] = true;
            ViewState["RegistVisible"] = false;
           
        }


    }
}