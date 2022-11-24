<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Designation.aspx.cs" Inherits="AssignmentSix.Designation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 align="center">Employee Registration</h2>
            <table align="center">
                <tr>
                    <td>
                        Designation :
                    </td>
                    <td> <asp:TextBox ID="textdesg" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td>Department :
                </td>
            <td><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList> </td>
          </tr>  
                <tr>
                    <td colspan="2" align="center"><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/></td>
                </tr>
            </table>
        </div>
        <table align="center">
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                            <Columns>
                                <asp:BoundField DataField="DeptId" HeaderText="Department ID" />
                                <asp:BoundField DataField="Id" HeaderText="Designation ID" />
                                <asp:BoundField DataField="Name" HeaderText="Designation" />
                                <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="view.aspx?ID={0}" HeaderText="HyperLink" Text="GO" />
                            </Columns>
                        </asp:GridView>
                        </td>
                    </tr>
            </table>
    </form>
</body>
</html>
