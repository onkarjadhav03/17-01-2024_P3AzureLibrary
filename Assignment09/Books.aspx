<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Assignment09.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>Books Available</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Bid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Bid" HeaderText="Bid" ReadOnly="True" SortExpression="Bid" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryConnectionString %>" DeleteCommand="DELETE FROM [Library] WHERE [Bid] = @original_Bid AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [Library] ([Bid], [Title], [Price]) VALUES (@Bid, @Title, @Price)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:LibraryConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Library]" UpdateCommand="UPDATE [Library] SET [Title] = @Title, [Price] = @Price WHERE [Bid] = @original_Bid AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Bid" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Double" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Bid" Type="Int32" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                        <asp:Parameter Name="original_Bid" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Double" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
