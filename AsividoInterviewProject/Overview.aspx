<%@ Page Title="Occupational Overview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Overview.aspx.cs" Inherits="AsividoInterviewProject.OverviewEngine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2><Strong>Occupation Overview</Strong></h2>
        <h4><%: _Overview.occupation.title + " in " + _Overview.region.title%></h4>
    </div>
    <br />
    <h4><strong> Summary for <%: _Overview.occupation.title %></strong></h4>
    <hr />
    <div class="row" align="center" style="margin:0 auto">
        <div class="col-md-4" style="border-right: solid 1px #dbdbdb">
            <h2><%: _Overview.summary.jobs.regional.ToString("N0") %></h2>
            <p><strong>Jobs(<%: _Overview.summary.jobs.year %>)</strong></p>
            <p>
                <%: (int)(((double)_Overview.summary.jobs.regional / _Overview.summary.jobs.national_avg)*100)%>%
                <%=ColorText((int)(((double)_Overview.summary.jobs.regional / _Overview.summary.jobs.national_avg)*100)-100,"above","below") %> National Average
            </p>
        </div>
        <div class="col-md-4" style="border-right: solid 1px #dbdbdb">
            <h2><%= ColorText(_Overview.summary.jobs_growth.regional, "+" + _Overview.summary.jobs_growth.regional.ToString("#0.0") + "%") %></h2>
            <p><strong>% Change(<%: _Overview.summary.jobs_growth.start_year + "-" + _Overview.summary.jobs_growth.end_year %>)</strong></p>
            <p>Nation:<%= ColorText(_Overview.summary.jobs_growth.national_avg, "+" + _Overview.summary.jobs_growth.national_avg.ToString("#0.0") + "%") %></p>
        </div>
        <div class="col-md-4">
            <h2><%: _Overview.summary.earnings.regional.ToString("c2") %>/hr <%= ColorText(_Overview.summary.earnings.regional-_Overview.summary.earnings.national_avg, "<span class=\"glyphicon glyphicon-arrow-up\"></span>", "<span class=\"glyphicon glyphicon-arrow-down\"></span>") %></h2>
            <p><strong>Median Hourly Earnings</strong></p>
            <p>Nation: <%: _Overview.summary.earnings.national_avg.ToString("c2") %>/hr</p>
        </div>
    </div>
    <hr />
    <br />

    <h4><strong> Regional Trends</strong></h4>
    <hr />

    <table class="table table-hover table-striped">
        <thead>
            <tr>
                <th style="width: 700px">Region</th>
                <th><%: _Overview.trend_comparison.start_year %> Jobs</th>
                <th><%: _Overview.trend_comparison.end_year %> Jobs</th>
                <th>Change</th>
                <th>% Change</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="width: 700px">Region</td>
                <td><%: _Overview.trend_comparison.regional[0].ToString("N0") %></td>
                <td><%: _Overview.trend_comparison.regional[_Overview.trend_comparison.regional.Length-1].ToString("N0") %></td>
                <td><%: (_Overview.trend_comparison.regional[_Overview.trend_comparison.regional.Length-1] - _Overview.trend_comparison.regional[0]).ToString("N0") %></td>
                <td><%: (((double)(_Overview.trend_comparison.regional[_Overview.trend_comparison.regional.Length-1] - _Overview.trend_comparison.regional[0])/_Overview.trend_comparison.regional[0])*100).ToString("#0.0") %>%</td>
            </tr>
            <tr>
                <td style="width: 700px; height: 37px;">State</td>
                <td style="height: 37px"><%: _Overview.trend_comparison.state[0].ToString("N0") %></td>
                <td style="height: 37px"><%: _Overview.trend_comparison.state[_Overview.trend_comparison.state.Length-1].ToString("N0") %></td>
                <td style="height: 37px"><%: (_Overview.trend_comparison.state[_Overview.trend_comparison.state.Length-1] - _Overview.trend_comparison.state[0]).ToString("N0") %></td>
                <td style="height: 37px"><%: (((double)(_Overview.trend_comparison.state[_Overview.trend_comparison.state.Length-1] - _Overview.trend_comparison.state[0])/_Overview.trend_comparison.state[0])*100).ToString("#0.0") %>%</td>
            </tr>
            <tr>
                <td style="width: 700px">Nation</td>
                <td><%: _Overview.trend_comparison.nation[0].ToString("N0") %></td>
                <td><%: _Overview.trend_comparison.nation[_Overview.trend_comparison.nation.Length-1].ToString("N0") %></td>
                <td><%: (_Overview.trend_comparison.nation[_Overview.trend_comparison.nation.Length-1] - _Overview.trend_comparison.nation[0]).ToString("N0") %></td>
                <td><%: (((double)(_Overview.trend_comparison.nation[_Overview.trend_comparison.nation.Length-1] - _Overview.trend_comparison.nation[0])/_Overview.trend_comparison.nation[0])*100).ToString("#0.0") %>%</td>
            </tr>
        </tbody>
    </table>

    <br /><br />

    <div>
        <h4><strong>Industries Employing <%: _Overview.occupation.title %></strong></h4>
        <hr />

        <table class="table table-hover table-striped">
        <thead>
            <tr>
                <th style="width: 700px">Industry</th>
                <th>Occupation Jobs in Industry (<%: _Overview.employing_industries.year %>)</th>
                <th>% of Occupation in Industry (<%: _Overview.employing_industries.year %>)</th>
                <th>% of Total Jobs in Industry (<%: _Overview.employing_industries.year %>)</th>
            </tr>
        </thead>
        <tbody>
            <% foreach (var industry in _Overview.employing_industries.industries)
                { %>
                    <tr>
                        <td style="color:DodgerBlue;"><span class="glyphicon glyphicon-briefcase"></span> <%= industry.title %></td>
                        <td><%= industry.in_occupation_jobs %></td>
                        <td><%= (((double)industry.in_occupation_jobs/ _Overview.employing_industries.jobs)*100).ToString("#0.0") %>%</td>
                        <td><%= (((double)industry.in_occupation_jobs / industry.jobs)*100).ToString("#0.0") %>%</td>
                    </tr>
            <% } %>
        </tbody>
    </table>
    </div>


</asp:Content>