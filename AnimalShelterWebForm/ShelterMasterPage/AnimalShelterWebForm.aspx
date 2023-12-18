<%@ Page Title="" Language="C#" MasterPageFile="~/ShelterMasterWebForm.Master" AutoEventWireup="true" CodeBehind="AnimalShelterWebForm.aspx.cs" Inherits="AnimalShelterWebForm.ShelterMasterPage.AnimalShelterWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 180px;
        }

        .auto-style3 {
            width: 180px;
            height: 23px;
        }

        .auto-style4 {
            height: 23px;
        }

        .auto-style5 {
            width: 180px;
            height: 28px;
        }

        .auto-style6 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 400px;margin-top:75px">
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #800000;">Animal Shelter Management System</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Animal Name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Animal Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                        <asp:ListItem>Animal</asp:ListItem>
                        <asp:ListItem Value="Bird">Bird</asp:ListItem>
                        <asp:ListItem>Fish</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Trade"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Buy</asp:ListItem>
                        <asp:ListItem>Sell</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Changed At"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="22px" ImageUrl="~/Assets/icons8-calendar-48.png" OnClick="ImageButton1_Click" Width="21px" />
                    &nbsp;&nbsp;
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Notes"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="75px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#3399FF" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Submit" Width="100px" />
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" BackColor="#3399FF" Font-Size="Medium" ForeColor="White" OnClick="Button4_Click" Text="Clear" Width="100px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <div style="margin-left:-150px">
                        <asp:GridView ID="GridView1" runat="server" ForeColor="#669999" Width="806px" AutoGenerateColumns="False" DataKeyNames="AnimalId" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:TemplateField HeaderText="AnimalId" InsertVisible="False" SortExpression="AnimalId">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("AnimalId") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("AnimalId") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="AnimalName" SortExpression="AnimalName">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AnimalName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("AnimalName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="AnimalType" SortExpression="AnimalType">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("AnimalType") %>'>
                                            <asp:ListItem>Seletct Type</asp:ListItem>
                                            <asp:ListItem>Animal</asp:ListItem>
                                            <asp:ListItem>Fish</asp:ListItem>
                                            <asp:ListItem>Bird</asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("AnimalType") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="AnimalTrade" SortExpression="AnimalTrade">
                                    <EditItemTemplate>
                                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("AnimalTrade") %>'>
                                            <asp:ListItem>Buy</asp:ListItem>
                                            <asp:ListItem>Sell</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("AnimalTrade") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CreatedAt" SortExpression="CreatedAt">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CreatedAt") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("CreatedAt") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ChangedAt" SortExpression="ChangedAt">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ChangedAt") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("ChangedAt") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Notes" SortExpression="Notes">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Notes") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Notes") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" />
                            </Columns>
                            <HeaderStyle BackColor="#993333" ForeColor="#CCCCCC" />
                            <RowStyle BackColor="#0099FF" BorderColor="#000066" ForeColor="#CCFFFF" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AnimalShelterDBConnectionString %>" DeleteCommand="DELETE FROM [Animals] WHERE [AnimalId] = @AnimalId" InsertCommand="INSERT INTO [Animals] ([AnimalName], [AnimalType], [AnimalTrade], [CreatedAt], [ChangedAt]) VALUES (@AnimalName, @AnimalType, @AnimalTrade, @CreatedAt, @ChangedAt)" ProviderName="<%$ ConnectionStrings:AnimalShelterDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Animals]" UpdateCommand="UPDATE [Animals] SET [AnimalName] = @AnimalName, [AnimalType] = @AnimalType, [AnimalTrade] = @AnimalTrade, [CreatedAt] = @CreatedAt, [ChangedAt] = @ChangedAt, [Notes] = @Notes WHERE [AnimalId] = @AnimalId">
                        <DeleteParameters>
                            <asp:Parameter Name="AnimalId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="AnimalName" Type="String" />
                            <asp:Parameter Name="AnimalType" Type="String" />
                            <asp:Parameter Name="AnimalTrade" Type="String" />
                            <asp:Parameter DbType="Date" Name="CreatedAt" />
                            <asp:Parameter Name="ChangedAt" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="AnimalName" Type="String" />
                            <asp:Parameter Name="AnimalType" Type="String" />
                            <asp:Parameter Name="AnimalTrade" Type="String" />
                            <asp:Parameter DbType="Date" Name="CreatedAt" />
                            <asp:Parameter Name="ChangedAt" Type="DateTime" />
                            <asp:Parameter Name="AnimalId" Type="Int32" />
                            <asp:Parameter Name="Notes" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
