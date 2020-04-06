<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Candidatelist.aspx.cs" Inherits="OilGasCompany.Interview.Admin.Candidatelist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="col-md-12">
        <div class="card">
            <%--Button For select panel--%>
            <div class="btn-group bg-danger">
                <asp:Button ID="btn_panelresult" runat="server" Text="All Candidates" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" />
            </div>
            <div class="card text-center mb-3">
                <div class="card-body">
                    <div class="table-responsive">
                        <asp:GridView ID="gridAllCandidates" runat="server" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered" PageSize="8" OnPageIndexChanging="gridAllCandidates_PageIndexChanging">
                            <Columns>
                                <asp:BoundField DataField="Candidate_fname" HeaderText="First name" />
                                <asp:BoundField DataField="Candidate_lname" HeaderText="Last name" />
                                <asp:BoundField DataField="Candidate_email" HeaderText="Email" />
                                <asp:TemplateField HeaderText="Result">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="btn_viewquestion" runat="server" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" NavigateUrl='<%# "~/Admin/Result.aspx?uid=" + Eval("candidate_email") %>'>
                                            <i class="fa fa-info-circle" aria-hidden="true"></i> View Result
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <asp:Panel ID="panel_CandidateListShow_Warning" runat="server" Visible="false">
                    <div class="card-footer">
                        <br />
                        <div class="alert alert-danger text-center">
                            <asp:Label ID="lbl_CandidateListShowWarning" runat="server" />
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
