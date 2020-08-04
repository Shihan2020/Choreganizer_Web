<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Choreganizer_Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Choreganizer</h1>
        <p class="lead">This app helps you create and assign chores for your family.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Demo</h2>
            <p>Use the following pre-set data to learn the app:</p>
            <table>
                <tr>
                    <td>
                        User:
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_Users" DataTextField="name" DataValueField="id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_Users" runat="server" ConnectionString="<%$ ConnectionStrings:choreganizer_ARConnectionString %>" SelectCommand="SELECT [id], [name] FROM [users]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        Chore:
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource_Chores" DataTextField="name" DataValueField="id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_Chores" runat="server" ConnectionString="<%$ ConnectionStrings:choreganizer_ARConnectionString %>" SelectCommand="SELECT [id], [name] FROM [chores]"></asp:SqlDataSource>
<!-- TO DO:  have description of chore display to the right of this control -->
                    </td>
                </tr>
                <tr>
                    <td>
                        Date:

                    </td>
                    <td>
                <input
                    id="chore_date"
                    class="datepicker"
                    name="choredate"
                    type="text"
                    value=""
                    data-value="">

                    </td>
                </tr>
            </table>
        </div>
    </div>

    <!-- jQuery -->
    <script src="/datepicker/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <!-- Core -->
    <script src="/datepicker/lib/picker.js"></script>
    <!-- Date Picker -->
    <script src="/datepicker/lib/picker.date.js"></script>
    <!-- Time Picker -->
    <script src="/datepicker/lib/picker.time.js"></script>
    <!-- Language -->
    <!-- script src="/datepicker/lib/translations/fr_FR.js"></script -->
    <!-- Required For Legacy Browsers (IE 8-) -->
    <script src="/datepicker/lib/legacy.js"></script>
    <script type="text/javascript">
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();
        if (dd < 10) {
            dd = '0' + dd;
        }
        if (mm < 10) {
            mm = '0' + mm;
        }
        today = mm + '/' + dd + '/' + yyyy;

        var $input = $('.datepicker').pickadate({
            formatSubmit: 'yyyy/mm/dd',
            // editable: true,
            closeOnSelect: false,
            closeOnClear: false,
        })

        var picker = $input.pickadate('picker')
        // picker.set('select', '14 October, 2014')
        // picker.open()

        // $('button').on('click', function() {
        //     picker.set('disable', true);
        // });

        var $input2 = $('.timepicker').pickatime({
        })
        var picker2 = $input2.pickatime('picker2')
        picker2.open()

    </script>


</asp:Content>
