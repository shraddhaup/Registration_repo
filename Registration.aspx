<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration_irealities.Registration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Registration Form</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>
  
<div class="container">
       
  <h2>Registration form</h2>
      <form id="form1" runat="server" >
           <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
       
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
        <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
            <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Email Id"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter Email Id"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Email Id" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format" ForeColor="Red"></asp:RegularExpressionValidator>

                </div>
            <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Phone no."></asp:Label>
        <asp:TextBox ID="txtphn" runat="server" class="form-control" placeholder="Enter Phone Number "></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Phone " ControlToValidate="txtphn" ForeColor="Red"></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="txtphn" ErrorMessage="Enter 10 digit No."  ForeColor="Red"
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </div>
            <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Experince Level"></asp:Label>
                    <asp:DropDownList ID="ddlexperincelevel" class="form-control" runat="server">
                        <asp:ListItem Value="0">Select Experience</asp:ListItem>
                        <asp:ListItem>Fresher</asp:ListItem>
                        <asp:ListItem>Junior</asp:ListItem>
                        <asp:ListItem>Experinced</asp:ListItem>
                    </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" InitialValue="0" ErrorMessage="Please Select Experience " ControlToValidate="ddlexperincelevel" ForeColor="Red"></asp:RequiredFieldValidator>
  
      
    </div>
            <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
        <asp:TextBox ID="txtage" runat="server" class="form-control" placeholder="Enter age"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Age " ControlToValidate="txtage" ForeColor="Red"></asp:RequiredFieldValidator>
   <asp:RangeValidator ID="RangeValidator1" runat="server"
            ControlToValidate="txtage"
            ErrorMessage="Invalid Age. Please enter the age between 18 to 60." ForeColor="Red"
            MaximumValue="60" MinimumValue="18" Type="Integer"></asp:RangeValidator>


                </div>
            <div class="form-group">
    
        <asp:Label ID="Label6" runat="server" Text="Application Date"></asp:Label>
        <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txtdate" PopupButtonID ="txtdate"/>
                <asp:TextBox ID="txtdate" runat="server" class="form-control" placeholder="Enter Date"></asp:TextBox>
                  <%--  <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/calender.png" Height="35px" Width="35px"/>--%>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Date " ControlToValidate="txtdate" ForeColor="Red"></asp:RequiredFieldValidator>
   
                </div>
          
   
            <asp:Button ID="btnsubmit" runat="server" class="btn btn-primary" Text="Submit" OnClick="btnsubmit_Click" />
     <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Goto Admin" OnClick="Button2_Click"  CausesValidation="false"/>
    
          <div>
         <asp:Label ID="lblmsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                 </div>
  </form>
</div>


        
</body>
</html>
