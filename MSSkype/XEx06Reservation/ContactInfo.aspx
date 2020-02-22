<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactInfo.aspx.cs" Inherits="XEx06Reservation.Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Buy Office 365 Home - Microsoft</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
</head>
<body>
    <div class="container bg-info">
        <header class="jumbotron d-flex align-items-center" style="background-color: #ffffff">            
            <img src="Images/Microsoft.png" alt="Microsoft Logo"/>
        </header>

        <main>
            <form id="form1" runat="server" class="form-horizontal">
                <h1>Office 365 Home for PC, Mac, tablets and phone</h1>

           

                <h3>Order Information</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirstName" runat="server" ToolTip="Name" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                            ControlToValidate="txtFirstName" ErrorMessage="First name is required" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                            ControlToValidate="txtLastName" ErrorMessage="Last name is required" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                       

                        <!-- Required -->
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Please enter e-mail address" CssClass="text-danger">
                        </asp:RequiredFieldValidator>

                        <!-- Expression -->
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                               ControlToValidate="txtEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                               ErrorMessage="Please enter valid e-mail" CssClass="text-danger">
                        </asp:RegularExpressionValidator>                       
                   
                    </div>
                </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Telephone number</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                   
                         
                        <!-- Expression -->
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                            ControlToValidate="txtPhone" ErrorMessage="Please enter phone number" CssClass="text-danger">
                        </asp:RequiredFieldValidator>

                        <!-- Expression -->
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                               ControlToValidate="txtPhone" ValidationExpression="^[01]?[-.]?(\([2-9]\d{2}\)|[2-9]\d{2})[-.]?\d{3}[-.]?\d{4}$"
                               ErrorMessage="Please enter valid 10 digit phone number" CssClass="text-danger">
                        </asp:RegularExpressionValidator>                                         
    
                     </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-3 control-label">Purchase Options</label>
                    <div class="col-sm-4">
                        <!-- drop-down -->
                        <asp:DropDownList ID="ddlOption" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Choose an Option" Value="" />
                         <asp:ListItem Text="Buy and download" Value="Buy and download"/>
                         <asp:ListItem Text="Buy now $9.99/monthly" Value="Buy now $9.99/monthly" />                       
                        </asp:DropDownList>  
                        <asp:RequiredFieldValidator ID="rfvOption" runat="server" 
                            ControlToValidate="ddlOption" ErrorMessage="Please choose a purchase option" CssClass="text-danger">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

            

                <div class="form-group">
                    <label class="col-sm-3 control-label">Version</label>
                    <div class="col-sm-9 bedtype">
                        <!-- radio buttons -->
                        <asp:RadioButtonList ID="rbtnList" runat="server" RepeatDirection="Horizontal" CssClass="bedtype" >
                            <asp:ListItem Value="Home" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="Business" ></asp:ListItem>
                            <asp:ListItem Value="Enterprise"></asp:ListItem>
                        </asp:RadioButtonList>
                      
                    </div>
                </div>
                         

                <%-- Submit and Clear buttons --%>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                             CssClass="btn btn-success" OnClick="btnSubmit_Click" PostBackUrl="~\PayConfirm.aspx"  />
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                             CssClass="btn btn-warning" OnClick="btnClear_Click"  />
                    </div>
                </div> 

                <div class="form-horizontal">
                    <h2> Premium Office apps and services included </h2>
                </div>
            
                <section>
                  <div class="card-group">

                    <div class="row">

                      <%--  <div class="col-md-3">--%>
                            <div class="col-md-3"> 
                            <img src="Images/Access.png" class="img-responsive img-thumbnail"/> 
                                <div class="card-body">
                                 <p class="card-text"> Access </p>
                        </div>
                    </div>

                       <%-- <div class="col-md-3">--%> 
                            <div class="col-md-3"> 
                            <img src="Images/OneDrive.png" class="img-responsive img-thumbnail" />
                                 <div class="card-body">
                                 <p class="card-text"> OneDrive </p>
                        </div>
                    </div>

                       <%-- <div class="col-md-3">--%>
                            <div class="col-md-3"> 
                            <img src="Images/Pub.jpeg" class="img-responsive img-thumbnail" /> 
                                 <div class="card-body">
                                 <p class="card-text"> Publisher </p>
                        </div>
                    </div>

                        <%--<div class="col-md-3">--%> 
                            <div class="col-md-3"> 
                            <img src="Images/Skype.png" class="img-responsive img-thumbnail" /> 
                                  <div class="card-body">
                                 <p class="card-text"> Skype </p>
                        </div>
                    </div>

                </div>
                       <%-- </div>    
                        </div>
                        </div>--%>

                    </div>

                </section>

            </form>
        </main>

        <footer>
            <p>&copy; <asp:Label ID="lblYear" runat="server"></asp:Label> 
                Microsoft 365 Home</p>
        </footer>
    </div>
    
</body>
</html>