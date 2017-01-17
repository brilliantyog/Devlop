<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <h1>ContactUs Page</h1>
<table border="1" style="border-spacing; height: 353px; width: 700px;" >
       
      <tr>
        <td>
        <asp:Label ID="Label1" runat="server" Text="CompanyName"></asp:Label>
            <td> <asp:Label ID="Label5" runat="server" Text="La Net Team pvt Software Solution"></asp:Label></td>
        </td>
          </tr>  
       
           
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
             <td> <asp:Label ID="Label6" runat="server" Text="hr@lanetteam.com"></asp:Label></td>
        </td>
   </tr>

        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="Phoneno"></asp:Label>
            <td> <asp:Label ID="Label7" runat="server" Text="9999900000"></asp:Label></td>
        </td>
            </tr>
     
         
        <tr>
        <td><asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
        <td> <asp:Label ID="Label8" runat="server" Text="304/305 Bussiness Hub, Dumas Road,Near VrMAll,Surat"></asp:Label></td>
        </td>
        </tr>
    </table>
</asp:Content>

