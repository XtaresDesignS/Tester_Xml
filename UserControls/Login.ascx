<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="Testing_XML.UserControls.Login" %>
<style>
    /*Form Login*/
    .tete{
        border:1px solid;
    }
    .form-container {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        margin: auto;
        width: 450px;
        background: var(--LinGrad-One);
        border: 6px solid transparent;
        padding: 32px 24px;
        font-size: 14px;
        font-family: inherit;
        color: var(--color-one);
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-content: center;
        align-items: center;
        gap: 20px;
        box-sizing: border-box;
        border-radius: 16px;
        background-size: 200% 100%;
        animation: gradient 5s ease infinite;
    }

        .form-container button:active {
            scale: 0.95;
        }

        .form-container .form {
            display: flex;
            flex-direction: column;
            flex-wrap: wrap;
            gap: 20px;
        }

        .form-container .form-group {
            display: flex;
            flex-direction: column;
            width: 90%;
            gap: 2px;
        }

        .form-container .form-title {
            width: 100%;
            padding: 12px 16px;
            text-align: center;
            letter-spacing: 3px;
            color: var(--color-one);
            font-family: inherit;
            background-color: transparent;
            border-bottom: 2px solid var(--brdr-pur);
        }

        .form-container .form-group label {
            display: block;
            margin-bottom: 5px;
            color: var(--bg-one-transp);
            font-weight: 600;
            font-size: 12px;
        }

        .form-container .form-group input {
            width: 100%;
            padding: 12px 16px;
            border-radius: 8px;
            color: var(--color-one);
            font-family: inherit;
            background-color: transparent;
            border: 1px solid var(--bg-one-transp);
        }

            .form-container .form-group input::placeholder {
                opacity: 0.5;
            }

            .form-container .form-group input:focus {
                outline: none;
                border-color: var(--brdr-pink);
            }

    .form-group-btn {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: space-around;
        align-content: space-around;
        width: 100%;
    }

    .form-container .form-submit-btn {
        display: flex;
        justify-content: center;
        font-family: inherit;
        color: var(--bg-one-transp);
        font-weight: 700;
        width: 40%;
        background: transparent;
        background-size: 200% 100%;
       border: 1px solid var(--bg-one-transp);
        padding: 12px 16px;
        font-size: inherit;
        margin: 8px;
        cursor: pointer;
        border-radius: 6px;
        transition: all 0.5s Linear;
    }

        .form-container .form-submit-btn:hover {
           
            background: var(--LinGrad-Two);
            background-size: 200% 100%;
            color: var(--color-One);
            font-weight:900;
            border: 1px solid var(--brdr-blue);
            background-image: var(--LinGrad-Two);
            background-origin: border-box;
            background-clip: padding-box , border-box;
            transition: all 0.5s Linear;
            box-shadow:0px 0px 2px var(--brdr-blue),
                0px 0px 5px var(--brdr-pur), 
                0px 0px 8px var(--brdr-pink),
                inset 0px 0px 1px var(--brdr-blue),
                inset 0px 0px 5px var(--brdr-pur), 
                inset 0px 0px 8px var(--brdr-pink);
        }

    /*animações*/
    @keyframes gradient {
        0% {
            background-position: 0% 50%;
        }

        50% {
            background-position: 100% 50%;
        }

        100% {
            background-position: 0% 50%;
        }
    }

    @keyframes gradient2 {
        0% {
            background-position: 100% 50%;
        }

        100% {
            background-position: 0% 50%;
        }
    }

    @keyframes gradient3 {
        0% {
            background-position: 0% 50%;
        }

        100% {
            background-position: 100% 50%;
        }
    }
</style>

<div class="form-container" id="Login_form" runat="server">
    <div class="form">
        <h1 class="form-title">Login</h1>
        <div class="form-group">
            <label for="Nome">Nome</label>
            <input name="Nome" id="tb_Nome" type="text" runat="server" />
        </div>
        <div class="form-group">
            <label for="Password">Password</label>
            <input name="Password" id="tb_Password" type="password" runat="server" />
        </div>
        <div class="form-group-btn">
            <asp:Button ID="btn_submit" class="form-submit-btn" runat="server" Text="Submit" OnClick="btn_submit_Click" />
            <asp:Button ID="btn_Regist" class="form-submit-btn" runat="server" Text="inscrever" OnClick="btn_Regist_Click" />
        </div>
        <asp:Label ID="lb_Erro" runat="server" Text=""></asp:Label>
    </div>
</div>


<div class="form-container" id="Regist_form" runat="server">
    <div class="form">
        <h1 class="form-title">Registar</h1>
        <div class="form-group">
            <label for="Nome">Nome</label>
            <input name="Nome" id="Text1" type="text" runat="server" />
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input name="email" id="email" type="email" runat="server" />
        </div>
        <div class="form-group">
            <label for="Password">Password</label>
            <input name="Password" id="Password1" type="password" runat="server" />
        </div>
        <div class="form-group">
            <label for="Password">Confirm Password</label>
            <input name="Password" id="Password2" type="password" runat="server" />
        </div>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="as passwords devem ser iguais" ControlToCompare="Password1" ControlToValidate="Password2"></asp:CompareValidator>
        <div class="form-group-btn">
            <asp:Button ID="btn_submit_Regist" class="form-submit-btn" runat="server" Text="validar Registo" OnClick="btn_submit_Regist_Click" />
            <asp:Button ID="btn_submit_Login" class="form-submit-btn" runat="server" Text=" fazer Login" OnClick="btn_submit_Login_Click" />
        </div>
        <asp:Label ID="lb_Erro_2" runat="server" Text=""></asp:Label>
    </div>
</div>



