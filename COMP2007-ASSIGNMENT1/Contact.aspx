<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="COMP2007_ASSIGNMENT1.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Contact</h2>
    <!-- Start here-->
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="well well-sm">
                    <form class="form-horizontal" method="post">

                        <legend class="text-center header">Contact us</legend>

                        <div class="col-md-10 col-md-offset-1">

                            <label class="control-label" for="form-group-input">First Name</label>
                            <asp:textbox runat="server" type="text" cssclass="form-control" id="fname" placeholder="First Name" required="true"></asp:textbox>


                        </div>
                </div>
                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">
                        <label class="control-label" for="LastNameTextBox">Last Name</label>
                        <asp:textbox runat="server" type="text" cssclass="form-control" id="lname" placeholder="Last Name" required="true"></asp:textbox>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">
                        <label class="control-label" for="email">Email</label>
                        <asp:textbox runat="server" textmode="Email" cssclass="form-control" id="email" placeholder="Email" required="true"></asp:textbox>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">

                        <label class="control-label" for="phone">Contact Number</label>
                        <asp:textbox runat="server" textmode="Phone" cssclass="form-control" id="phone" placeholder="Contact Number" required="true"></asp:textbox>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-10 col-md-offset-1">

                        <label class="control-label" for="message">Your Message</label>
                        <asp:textbox runat="server" textmode="Multiline" cssclass="form-control" id="message" placeholder="Your Message Goes Here!" required="true"></asp:textbox>

                    </div>
                </div>
                <br />

                <div class="form-group">
                    <div class="col-md-12 text-center">
                        <asp:button id="btnsubmit" runat="server" text="Submit" onclick="btnsubmit_Click" />

                    </div>



                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <div class="panel panel-default">
                        <div class="text-center header">My Work Place</div>
                        <div class="panel-body text-center">
                            <h4>Address</h4>
                            <div>
                                15 Kensignton Road
                                <br />
                                Brampton ON<br />
                                #(703) 1234 1234<br />
                                new_workers@company.com<br />
                            </div>
                            <hr />
                            <div id="map"></div>
                            <script>
                                function initMap() {
                                    var mapDiv = document.getElementById('map');
                                    var map = new google.maps.Map(mapDiv, {
                                        center: { lat: 44.540, lng: -78.546 },
                                        zoom: 8
                                    });
                                }
                            </script>
                            <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
                                async defer></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <style>
        .map {
            min-width: 300px;
            min-height: 300px;
            width: 100%;
            height: 100%;
        }

        .header {
            background-color: #F5F5F5;
            color: #36A0FF;
            height: 70px;
            font-size: 27px;
            padding: 10px;
        }
    </style>


</asp:Content>
