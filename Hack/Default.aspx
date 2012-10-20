<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hack.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html> 
<head> 
    <title>My Page</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
    <script src="http://www.egrappler.com/contents/jQuery-compact-social-media-share-plugin/demo/jsShare.js"></script>
<link href="http://www.egrappler.com/contents/jQuery-compact-social-media-share-plugin/demo/jsShare.css" rel="stylesheet" type="text/css" />
    
    </head> 
<body> 
    
<div data-role="page">

    <div data-role="header" data-position="fixed" style="height:68px;">
    <div>
     
        
        <div class="ui-grid-a">
    <div class="ui-block-a" style="width:99%; padding-top:0px; padding-bottom:0px;">


                <div class="ui-grid-c">
    <div class="ui-block-a" style="width:70px">
                            <img src="http://cdn1.iconfinder.com/data/icons/musthave/48/Globe.png" border="0" style="padding-left:10px; padding-top:10px; padding-bottom:0px;"/>

                    </div>
    <div class="ui-block-b" style="width:250px;padding-top:12px; padding-bottom:0px;">
                <input type="search" name="search" id="search-basic" value="" placeholder="Type the amount you have" style="vertical-align:middle;" data-mini="true" />

                    </div>
    <div class="ui-block-c" style="width:30px;padding-top:6px; padding-bottom:0px;">
        <a href="index.html" data-role="button" data-icon="search" data-iconpos="notext" data-theme="a" data-inline="true">Searchn</a>
                    </div>
            <div class="ui-block-d" style="width:30px;padding-top:6px; padding-bottom:0px;">
        <a href="#popupDialog" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="a" data-inline="false" data-rel="popup" data-position-to="window">Search Settings</a>
                    </div>
        </div>
        </div>
    <div class="ui-block-b" style="width:1%"></div>       
    </div>
    </div><!-- /header -->


        <div data-role="popup" id="popupDialog2" data-overlay-theme="a" data-theme="c" style="max-width:800px;" class="ui-corner-all">
            <div data-role="header" data-theme="a" class="ui-corner-top">
                <h1>Trip Details</h1>
            </div>
            <div data-role="content" data-theme="d" class="ui-corner-bottom ui-content">
                
                <ul data-role="listview" data-inset="true">
            <li><a href="index.html">
                <h3>Flight Details</h3>
                <p><strong>Oct 26 Departure: 5AM Arrival:7AM MINSK 1</strong></p>
                <p><strong>Oct 28 Departure: 5AM Arrival:7AM MAN TERM1</strong></p>
                <p class="ui-li-aside"><strong>400$</strong>PM</p>
            </a></li>
       <li><a href="index.html">
                <h3>Hotels Details</h3>
                <p><strong>Oct 26 Departure: 5AM Arrival:7AM MINSK 1</strong></p>
                <p><strong>Oct 28 Departure: 5AM Arrival:7AM MAN TERM1</strong></p>
                <p class="ui-li-aside"><strong>400$</strong>PM</p>
            </a></li>                    
       <li><a href="index.html">
                <h3>Events</h3>
                <p><strong>Oct 26 Departure: 5AM Arrival:7AM MINSK 1</strong></p>
                <p><strong>Oct 28 Departure: 5AM Arrival:7AM MAN TERM1</strong></p>
                <p class="ui-li-aside"><strong>400$</strong>PM</p>
            </a></li>                    
        </ul>
                
                <a href="#" data-role="button" data-inline="true" data-rel="back" data-theme="c">Close</a>    
                <a href="#" data-role="button" data-inline="true" data-rel="back" data-transition="flow" data-theme="b" style="float:right">Buy</a>  
                
            </div>
        </div>

        
<div data-role="popup" id="popupDialog" data-overlay-theme="a" data-theme="c" style="max-width:800px;" class="ui-corner-all">
            <div data-role="header" data-theme="a" class="ui-corner-top">
                <h1>Search Settings</h1>
            </div>
            <div data-role="content" data-theme="d" class="ui-corner-bottom ui-content">
                
                <fieldset data-role="controlgroup" data-type="horizontal">
        <legend>From:</legend>
        
        <label for="select-choice-month">Month</label>
        <select name="select-choice-month" id="select-choice-month">
            <option value="jan">Jan</option>
            <option value="dec">Dec</option>
            <option value="feb">Feb</option>
            <option value="mar">Mar</option>
            <option value="apr">Apr</option>
            <option value="may">May</option>
            <option value="jun">Jun</option>
            <option value="jul">Jul</option>
            <option value="aug">Aug</option>
            <option value="sep">Sep</option>
            <option value="oct">Oct</option>
            <option value="nov">Nov</option>
            <option value="dec">Dec</option>
        </select>

        <label for="select-choice-day">Day</label>
        <select name="select-choice-day" id="select-choice-day">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">13</option>
            <option value="13">14</option>
            <option value="15">15</option>
        </select>

        <label for="select-choice-year">Year</label>
        <select name="select-choice-year" id="select-choice-year">
            <option value="2011">2012</option>
            <option value="2011">2011</option>
            <option value="2010">2010</option>
            <option value="2009">2009</option>
            <option value="2008">2008</option>
            <option value="2007">2007</option>
            <option value="2006">2006</option>
            <option value="2005">2005</option>
            <option value="2004">2004</option>
        </select>
    </fieldset>
                
                <fieldset data-role="controlgroup" data-type="horizontal">
        <legend>To:</legend>
        
        <label for="select-choice-month">Month</label>
        <select name="select-choice-month" id="select-choice-month">
            <option value="jan">Jan</option>
            <option value="dec">Dec</option>
            <option value="feb">Feb</option>
            <option value="mar">Mar</option>
            <option value="apr">Apr</option>
            <option value="may">May</option>
            <option value="jun">Jun</option>
            <option value="jul">Jul</option>
            <option value="aug">Aug</option>
            <option value="sep">Sep</option>
            <option value="oct">Oct</option>
            <option value="nov">Nov</option>
            <option value="dec">Dec</option>
        </select>

        <label for="select-choice-day">Day</label>
        <select name="select-choice-day" id="select-choice-day">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">13</option>
            <option value="13">14</option>
            <option value="15">15</option>
        </select>

        <label for="select-choice-year">Year</label>
        <select name="select-choice-year" id="select-choice-year">
            <option value="2011">2012</option>
            <option value="2011">2011</option>
            <option value="2010">2010</option>
            <option value="2009">2009</option>
            <option value="2008">2008</option>
            <option value="2007">2007</option>
            <option value="2006">2006</option>
            <option value="2005">2005</option>
            <option value="2004">2004</option>
        </select>
    </fieldset>


                <div class="ui-grid-b">
    <div class="ui-block-a">
         <fieldset data-role="controlgroup" data-type="horizontal">
        <legend>Adults:</legend>
        
        <label for="select-choice-month">Adults</label>
        <select name="select-choice-month" id="select-choice-month">
            <option value="jan">1</option>
            <option value="dec">2</option>
            <option value="feb">3</option>
            <option value="mar">4</option>
        </select>
                </fieldset> 
                    </div>
    <div class="ui-block-b"> <fieldset data-role="controlgroup" data-type="horizontal">
        <legend>Childrens:</legend>
        
        <label for="select-choice-month">Childrens</label>
        <select name="select-choice-month" id="select-choice-month">
            <option value="jan">1</option>
            <option value="dec">2</option>
            <option value="feb">3</option>
            <option value="mar">4</option>
        </select>
                </fieldset>  </div>
    <div class="ui-block-c"> <fieldset data-role="controlgroup" data-type="horizontal">
        <legend>Transport:</legend>
        
        <label for="select-choice-month">Transport</label>
        <select name="select-choice-month" id="select-choice-month">
            <option value="jan">Flight</option>
        </select>
                </fieldset>  </div>
</div>

           
          

                
                <a href="#" data-role="button" data-inline="true" data-rel="back" data-theme="c">Close</a>    
                <a href="#" data-role="button" data-inline="true" data-rel="back" data-transition="flow" data-theme="b" style="float:right">Apply</a>  
            </div>




        </div>
        
        
        
    <div data-role="content">

<ul data-role="listview" data-theme="d" data-divider-theme="d">
    <li data-role="list-divider">Oct 26-Oct 28 / 2 Adults / 1000$<span class="ui-li-count">2</span></li>
            <li><a href="#popupDialog2" data-rel="popup">
                
                <h3>Minsk - Hotel Europe 5+ - Flight (5AM/4PM)</h3>
                    <p><strong>You've been invited to a meeting at Filament Group in Boston, MA</strong></p>
                    <p>Hey Stephen, if you're available at 10am tomorrow, we've got a meeting with the jQuery team.</p>
                    <p class="ui-li-aside"><strong>1000$</strong></p>
                
            </a></li>
            <li><a href="#popupDialog2" data-rel="popup">
                
                <h3>Current Location - Do nothing - walking</h3>
                    <p><strong>You've been invited to a meeting at Filament Group in Boston, MA</strong></p>
                    <p>Hey Stephen, if you're available at 10am tomorrow, we've got a meeting with the jQuery team.</p>
                
                    <p class="ui-li-aside"><strong>0$</strong></p>
                
            </a></li>
        </ul>
        
    </div><!-- /content -->

    
    <div data-role="footer" data-position="fixed">
<div data-role="navbar" data-iconpos="bottom">
            <ul>
                <li><a href="#" data-icon="search" class="ui-btn-active">Trips Found</a></li>
                <li><a href="#" data-icon="star" >Featured</a></li>
                <li><a href="#" data-icon="info">About</a></li>
            </ul>
        </div><!-- /navbar --></div>
    
</div><!-- /page -->

</body>
</html>​