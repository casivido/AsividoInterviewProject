<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AsividoInterviewProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Occupational Search</h1>
        <div class="col">
            <div class="form-horizontal">
                <label for="inputOccupation">Occupation:</label>
                <input type="search" class="form-control" id="inputOccupation" value="Computer Programmers" disabled>
            </div>
            <div class="form-horizontal">
                <label for="inputRegion">Region:</label>    
                <input type="search" class="form-control" id="inputRegion" value="Seattle-Tacoma-Bellevue, WA" disabled>
            </div>
            <p class="lead"></p>
            <p><a runat="server" href="~/Overview" class="btn btn-success btn-lg">Go &raquo;</a></p>
        </div>
    </div>

    <hr />
    <div class="row">
        <div class="col-md-6" >
            <h3>About the project</h3>
            <p>
                Building a website and creating graphical displays is something that I had never done before.
                Choosing what resources and technologies to use and implement has been challenging, informative,
                and fun.  I'd love to explain the process.
            </p>
            <p>
                <a class="btn btn-default" runat="server" href="~/Summary">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
