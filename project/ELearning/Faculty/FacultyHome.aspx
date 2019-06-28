﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" AutoEventWireup="true" CodeBehind="FacultyHome.aspx.cs" Inherits="ELearning.Faculty.FacultyHome" %>
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
                <div class="mr-5"><asp:Label ID="lbltotalquery" runat="server"></asp:Label> Queries where posted</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="ViewQuery.aspx">
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
            <a class="card-footer text-white clearfix small z-1" href="Total_Qstn.aspx">
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
                <div class="mr-5">You have Uploaded <asp:Label ID="lbltotaldocuments" runat="server"> </asp:Label> Documents</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="Documents_View.aspx">
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
