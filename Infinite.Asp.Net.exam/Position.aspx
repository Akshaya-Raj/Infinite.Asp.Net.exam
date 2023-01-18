<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Position.aspx.cs" Inherits="Infinite.Asp.Net.exam.Position" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
       
<head runat="server">
 
    <title> Position</title>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery.validate.js"></script>
  <style>
     #form-control{
         place-content:space-around;
         border-block-color:black;
         padding-right:200px;
         padding-top:0px;
         padding-left:200px;
        
     }
  </style>
</head>
<body>
  
    <form class="form-control" runat="server">
        
        <div>Create a Position </div>
        <div>
              Position Code<br /> <asp:TextBox ID="TxtPositioncode" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
            ForeColor="Red" ErrorMessage="Please enter Position Code"
            ID="RfvPositioncode" ControlToValidate="TxtPositioncode" runat="server" />
        </div>
        <div>
            Description<br /><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br />
            <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
            ForeColor="Red" ErrorMessage="Please enter Description"
            ID="RfvTextBox1" ControlToValidate="TextBox1" runat="server" />

        </div>
        <div>
            Year<br />
          
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br />
            <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
            ForeColor="Red" ErrorMessage="Please Select a Year"
            ID="RfvTextBox2" ControlToValidate="TextBox2" runat="server" />
            
         </div>
        <div>
           BudgetedStrength<br />
            
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
            ForeColor="Red" ErrorMessage="Please enter Budgeted Strength"
            ID="RfvTextBox3" ControlToValidate="TextBox3" runat="server" />
        </div>
        <div>
            CurrentStrength<br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
            ForeColor="Red" ErrorMessage="Please enter Current Strength"
            ID="RfvTextBox4" ControlToValidate="TextBox4" runat="server" />
            
        </div>
        <br />
        <div>
            <asp:Button ID="Button3" runat="server" Text="Add New &nbsp;&nbsp;&emsp;" OnClick="Button3_Click &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; " />
           
            <asp:Button ID="Button1" runat="server" Text="Reset" />
        </div>
        
    </form>
</body>
</html>
