<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TimeOffRequest.aspx.cs" Inherits="OnlineForms.TimeOffRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <p>
    <asp:Label ID="Label1" runat="server" Text="Employee: "></asp:Label>
    <asp:TextBox ID="txtbxEmpName" runat="server" Width="206px"></asp:TextBox>
&nbsp;Employee email:
    <asp:TextBox ID="txtbxEmpEmail" runat="server" Width="215px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Manager :  "></asp:Label>
    <asp:TextBox ID="txtbxManagerName" runat="server" Width="215px"></asp:TextBox>
&nbsp;<asp:Label ID="Label3" runat="server" Text="Manager email: "></asp:Label>
    <asp:TextBox ID="txtbxManagerEmail" runat="server" Width="202px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label4" runat="server" Text="Employee Group: "></asp:Label>
    <asp:DropDownList ID="drpdnEmpGroup" runat="server">
        <asp:ListItem>Maintenance</asp:ListItem>
        <asp:ListItem>CFO Payroll</asp:ListItem>
        <asp:ListItem>All Other</asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    <asp:Label ID="Label5" runat="server" Text="Terminal/Department "></asp:Label>
    <asp:TextBox ID="txtbxDept" runat="server" Width="277px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label6" runat="server" Text="Employee ID: "></asp:Label>
    <asp:TextBox ID="txtbxEmpID" runat="server" TextMode="Number" MaxLength="6"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label7" runat="server" Text="Start DateTime:"></asp:Label>
&nbsp;<asp:Calendar ID="cldStartDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:TextBox ID="txtbxStartTime" runat="server" TextMode="Time">8:00</asp:TextBox>
&nbsp;</p>
<p>
    <asp:Label ID="Label8" runat="server" Text="End DateTime: "></asp:Label>
    <asp:Calendar ID="cldEndDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:TextBox ID="txtbxEndTime" runat="server" TextMode="Time">5:00</asp:TextBox>
</p>
<p>
    <asp:Label ID="Label9" runat="server" Text="Time Off Type: "></asp:Label>
    <asp:DropDownList ID="drpdnType" runat="server">
        <asp:ListItem>Vacation</asp:ListItem>
        <asp:ListItem>Flex Time</asp:ListItem>
        <asp:ListItem>Sick Time(CA)</asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    <asp:Label ID="Label10" runat="server" Text="Comments:"></asp:Label>
</p>
<p>
    <asp:TextBox ID="txtbxComment" runat="server" Height="94px" TextMode="MultiLine" Width="594px"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="OnSubmit" />
    &nbsp;<asp:Label ID="lbErrMsg" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
    <br />
</p>
</asp:Content>
