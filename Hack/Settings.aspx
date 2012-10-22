<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Hack.Settings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
  <div data-role="page" class="type-interior" data-theme="a">
		                <div data-role="header" data-theme="a" class="ui-corner-top">
                    <h1>
                        Search Settings</h1>
                </div>
                <div data-role="content" data-theme="d" class="ui-corner-bottom ui-content">
                    <label for="search-basic">Location:</label>
<input type="search" name="search" id="search-basic" value="" />

                    <fieldset data-role="controlgroup" data-type="horizontal">
                        <legend>From:</legend>
                        <label for="select-choice-month">
                            Month</label>
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
                        <label for="select-choice-day">
                            Day</label>
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
                        <label for="select-choice-year">
                            Year</label>
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
                        <label for="select-choice-month">
                            Month</label>
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
                        <label for="select-choice-day">
                            Day</label>
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
                        <label for="select-choice-year">
                            Year</label>
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
                                <label for="select-choice-month">
                                    Adults</label>
                                <select name="select-choice-month" id="select-choice-month">
                                    <option value="jan">1</option>
                                    <option value="dec">2</option>
                                    <option value="feb">3</option>
                                    <option value="mar">4</option>
                                </select>
                            </fieldset>
                        </div>
                        <div class="ui-block-b">
                            <fieldset data-role="controlgroup" data-type="horizontal">
                                <legend>Childrens:</legend>
                                <label for="select-choice-month">
                                    Childrens</label>
                                <select name="select-choice-month" id="select-choice-month">
                                    <option value="jan">1</option>
                                    <option value="dec">2</option>
                                    <option value="feb">3</option>
                                    <option value="mar">4</option>
                                </select>
                            </fieldset>
                        </div>
                        <div class="ui-block-c">
                            <fieldset data-role="controlgroup" data-type="horizontal">
                                <legend>Transport:</legend>
                                <label for="select-choice-month">
                                    Transport</label>
                                <select name="select-choice-month" id="select-choice-month">
                                    <option value="jan">Flight</option>
                                </select>
                            </fieldset>
                        </div>
                    </div>
                    <a href="#" data-role="button" data-inline="true" data-rel="back" data-theme="c">Close</a>
                    <a href="#" data-role="button" data-inline="true" data-rel="back" data-transition="flow"
                        data-theme="b" style="float: right">Apply</a>
                </div>

    </div>
</div>
</body>
</html>
