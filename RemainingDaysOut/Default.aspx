<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RemainingDaysOut.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="font-size: x-large">Remaining Days Out Calculator</h1>
        <p class="lead" style="font-size: small">Select a date from the top calandar and the days out will be calculated from today, also select a date from the bottom calendar and a future RDO will be calculated. This gives you an idea from your current projected RDO to the next RDO cycle.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <p>
                &nbsp;Select the date you want to start calculating from ;</p>
            <p>
                Current/Starting Date Calandar</p>
            <p>
                <asp:Calendar ID="Calendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                </p>
            <p>
                Select the date you want to be home on :</p>
            <p>
                Future Date Calandar</p>
            <asp:Calendar ID="Calendar_Projected" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" ToolTip="This Calandar is for " Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="Button_Calc" runat="server" Text="Calculate" OnClick="Button_Calc_Click" />
&nbsp;
            </p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;<span style="font-size: medium">Based on the selected dates, your RDO is</span>&nbsp; :&nbsp;&nbsp;&nbsp; <asp:Label ID="Label_RDO" runat="server" Text="0 days" Font-Size="Medium"></asp:Label>
            </p>
        </div>
    </div>

</asp:Content>
