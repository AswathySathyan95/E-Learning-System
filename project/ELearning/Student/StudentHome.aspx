<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="ELearning.Student.StudentHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headplaceholder" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
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
                <div class="mr-5">You have completed <asp:Label ID="lbltotalquiz" runat="server"></asp:Label> Quiz</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="AllQuiz.aspx">
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
                <div class="mr-5">We have total <asp:Label ID="lblreply" runat="server"></asp:Label> replies for your Query</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="View_Reply.aspx">
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
                <div class="mr-5"><asp:Label ID="lbltotalstudents" runat="server"></asp:Label></div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="studentList.aspx">
                <span class="float-left"></span>
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
