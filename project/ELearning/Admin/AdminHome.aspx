<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="ELearning.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
     <div class="col-12">
    <h1>Dashboard</h1>
    <hr />
    </div>
    <div class="col-xl-4 col-sm-6 mb-4">
        <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
                <div class="card-body-icon">
                    <i class="fa fa-fw fa-comments"></i>
                </div>
                <div class="mr-5">We have <asp:Label ID="lbltotalquiz" runat="server"> </asp:Label> Students attended the online quiz</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="Quiz_Report.aspx">
                <span class="float-left">View Details</span>
                <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                </span>
            </a>
        </div>
    </div>
    <div class="col-xl-4 col-sm-6 mb-4">
        <div class="card text-white bg-warning o-hidden h-100">
            <div class="card-body">
                <div class="card-body-icon">
                    <i class="fa fa-fw fa-comments"></i>
                </div>
                <div class="mr-5">We have total <asp:Label ID="lbltotalquestion" runat="server"></asp:Label> questions</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="Total_Questions.aspx">
                <span class="float-left">View Details</span>
                <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                </span>
            </a>
        </div>
    </div>
    <div class="col-xl-4 col-sm-6 mb-4">
        <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
                <div class="card-body-icon">
                    <i class="fa fa-fw fa-comments"></i>
                </div>
                <div class="mr-5">We have total <asp:Label ID="lbltotalstudents" runat="server"></asp:Label> students</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="Student_Details.aspx">
                <span class="float-left">View Details</span>
                <span class="float-right">
                    <i class="fa fa-angle-right"></i>
                </span>
            </a>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
            </div>
        </div>
    </div>
</asp:Content>
