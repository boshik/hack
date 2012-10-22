<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hack.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Find The Trip</title>

  <link rel="stylesheet" href="css/default/jquery.mobile.css"/> 

  <!--   
  
   <link rel="stylesheet" href="css/metro/jquery.mobile.metro.theme.css"/> 
  
  
  -->

    <link href="css/jquery.mobile.fixedToolbar.polyfill.css" rel="stylesheet" type="text/css" />

    <link href="css/progress-bar.css" rel="stylesheet" type="text/css" />
    <link href="css/app-bar.css" rel="stylesheet" type="text/css" />
    <link href="css/toggle-button.css" rel="stylesheet" type="text/css" />
    <link href="css/mobiscroll-1.5.3.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        /* custom icons for toggle button*/
        .ui-icon-demo-help,
        .ui-icon-demo-set {
            background-repeat: no-repeat;
            background-position: 50% 50% ;
            background-size: 30px 30px;
        }

        .ui-toggle-checked .ui-icon-demo-help{
            background-image: url(images/help.light.png);
        }

        .ui-toggle-unchecked .ui-icon-demo-help{
            background-image: url(images/help.dark.png);
        }

        .ui-toggle-checked .ui-icon-demo-set{
            background-image: url(images/set.light.png);
        }

        .ui-toggle-unchecked .ui-icon-demo-set{
            background-image: url(images/set.dark.png);
        }

        .ui-icon-demo-help,
        .ui-icon-demo-set {
            background-repeat: no-repeat;
            background-position: 50% 50% ;
            background-size: 30px 30px;
        }

        .ui-btn-up-a .ui-icon-demo-help,
        .ui-btn-hover-a .ui-icon-demo-help,
        .ui-btn-down-b .ui-icon-demo-help{
            background-image: url(images/help.dark.png);
        }

        .ui-btn-up-b .ui-icon-demo-help,
        .ui-btn-hover-b .ui-icon-demo-help,
        .ui-btn-down-a .ui-icon-demo-help{
            background-image: url(images/help.light.png);
        }

        .ui-btn-up-a .ui-icon-demo-set,
        .ui-btn-hover-a .ui-icon-demo-set,
        .ui-btn-down-b .ui-icon-demo-set{
            background-image: url(images/set.dark.png);
        }

        .ui-btn-up-b .ui-icon-demo-set,
        .ui-btn-hover-b .ui-icon-demo-set,
        .ui-btn-down-a .ui-icon-demo-set{
            background-image: url(images/set.light.png);
        }


    input.ui-slider-input {
        display : none !important;
    }

</style>
    </style>

    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="css/metro/jquery.mobile.metro.theme.init.js" type="text/javascript"></script>
    <script src="js/jquery.mobile.js" type="text/javascript"></script>
    <script src="js/jquery.globalstylesheet.js" type="text/javascript"></script>
    <script src="js/jquery.mobile.themeswitcher.js" type="text/javascript"></script>
    <script src="js/jquery.mobile.fixedToolbar.polyfill.js" type="text/javascript"></script>


    <script src="js/progress-bar.js" type="text/javascript"></script>
    <script src="js/toggle-button.js" type="text/javascript"></script>
    <script src="js/app-bar.js" type="text/javascript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/mobiscroll-1.5.3.js" type="text/javascript"></script>


    <script type="text/javascript">
        $.themesDir = 'css/';

        $().ready(function () {
            if (!$.browser.msie) {
                $("#noteIeRequired").show();
            }

            // special title when run in Cordova environment
            if (typeof window.external.Notify !== "undefined") {
                document.getElementById("appTitle").innerHTML = "Theme overview";
            }
        });

        // allows to use the page in NON cordova environment
        if (typeof window.external.Notify !== "undefined") {

            var head = document.getElementsByTagName("head")[0];

            var sc1 = document.createElement("script");
            sc1.src = "js/cordova-1.5.0.js";
            (head || document.body).appendChild(sc1);


            var sc2 = document.createElement("script");
            sc2.src = "js/phoneTheme.js";
            (head || document.body).appendChild(sc2);

            var sc3 = document.createElement("script");
            sc3.src = "js/jquery.cordova.metro.themeswitcher.js";
            (head || document.body).appendChild(sc3);

            var sc4 = document.createElement("script");
            sc4.src = "js/backButtonHandler.js";
            (head || document.body).appendChild(sc4);

            var sc5 = document.createElement("script");
            sc5.src = "js/dateTimePicker.js";
            (head || document.body).appendChild(sc5);
        }

    </script>
</head>
<body>
    <div data-role="page" class="type-interior" data-theme="a">
        <div data-role="header" data-id="foo2" data-position="fixed" >
                        <div class="ui-grid-c">
                            <div class="ui-block-a" style="width: 70px">
                                <img src="http://cdn1.iconfinder.com/data/icons/musthave/48/Globe.png" border="0"
                                    style="padding-left: 10px; padding-top: 10px; padding-bottom: 0px;" />
                            </div>
                            <div class="ui-block-b" style="width: 250px; padding-top: 12px; padding-bottom: 14px;">
<label>Budget: 200$</label>
<input type="range" name="slider-mini" id="slider-mini" value="200" min="100" max="3000" step="100" data-highlight="true" data-mini="true" />
                            </div>
                            <div class="ui-block-c" style="width: 30px; padding-top: 6px; padding-bottom: 14px;">
                            </div>
                            <div class="ui-block-d" style="width: 30px; padding-top: 6px; padding-bottom: 14px;">
                            </div>
                        </div>
                                                  <a href="Settings.aspx" data-role="button" data-icon="gear" data-iconpos="notext"
                                    data-theme="a" data-inline="false" data-rel="popup" data-position-to="window" class="ui-btn-right">Search
                                    Settings</a>
            </div>
           

            <!-- /header -->
            <div data-role="content" style="height:150%">
                <ul data-role="listview" data-theme="d" data-divider-theme="d">
                    <li data-role="list-divider">Oct 26-Oct 28 / 2 Adults / 1000$<span class="ui-li-count">2</span></li>
                    <li><a href="Details.aspx" data-rel="popup" data-position-to="window">
                        <h3>
                            Minsk - Hotel Europe 5+ - Flight (5AM/4PM)</h3>
                        <p>
                            <strong>You've been invited to a meeting at Filament Group in Boston, MA</strong></p>
                        <p>
                            Hey Stephen, if you're available at 10am tomorrow, we've got a meeting with the
                            jQuery team.</p>
                        <p class="ui-li-aside">
                            <strong>1000$</strong></p>
                    </a></li>
                    <li><a href="Details.aspx" data-rel="popup" data-position-to="window">
                        <h3>
                            Current Location - Do nothing - walking</h3>
                        <p>
                            <strong>You've been invited to a meeting at Filament Group in Boston, MA</strong></p>
                        <p>
                            Hey Stephen, if you're available at 10am tomorrow, we've got a meeting with the
                            jQuery team.</p>
                        <p class="ui-li-aside">
                            <strong>0$</strong></p>
                    </a></li>
                </ul>
            </div>
            <!-- /content -->
            <div data-role="footer"  data-id="foo1" data-position="fixed" data-tap-toggle="false">
                <div data-role="navbar" data-iconpos="bottom">
                    <ul>
                        <li><a href="#" data-icon="grid" class="ui-btn-active">List</a></li>
                        <li><a href="#" data-icon="search">Map</a></li>
                        <li><a href="#" data-icon="star">Featured</a></li>
                        <li><a href="#" data-icon="info">About</a></li>
                    </ul>
                </div>
                <!-- /navbar -->
            </div>
        <!-- /page -->



        </div>
</body>
</html>
​