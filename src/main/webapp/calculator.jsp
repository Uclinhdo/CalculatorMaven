<%-- 
    Document   : calculator
    Created on : Feb 6, 2017, 9:35:33 PM
    Author     : linhdo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculator Service</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="main.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div id="exTab1" class="container col-sm-8 col-sm-offset-3 col-xs-12">	
                <ul  class="nav nav-pills">
                    <li class="active"><a  href="#1a" data-toggle="tab">Home</a></li>
                    <li><a href="#2a" data-toggle="tab">Circle</a></li>
                    <li><a href="#3a" data-toggle="tab"> Triangle</a></li>
                    <li><a href="#4a" data-toggle="tab">Rectangle</a></li>
		</ul>

            <div class="tab-content clearfix">
                <div class="tab-pane active" id="1a">
                    <h3 class="title"> Calculator App</h3>
                    <div class="row">
                        <div class="col-sm-10">
                            <p><strong>Calculator Lab #1</strong> – You should have completed this by start of class today.
                                This lab should send the results to a separate output page, different from the
                                input page. We’ll discuss your solutions and the instructor solution, as well as
                                why you might or might not want to use a separate output page. We’re also
                                going to switch to using Maven, so we’ll need to create a new project for your
                                web calculators. We’ll call this one “CalculatorsMaven”. Then we’ll copy all
                                of our existing code into that project and continue using that project from now
                                on.
                            </p>
                            <p><strong>Calculator Lab #2</strong> – Create a version of Lab #1 that uses the input form for
                                both input and as a place to output the results. There is no separate result page
                                in this lab. How will you do this? Remember, the output comes from the
                                controller and you won’t have any output the first time you go to your form.
                                The solution is to check your request attributes for null and assign blanks or
                                default values if they are null. We’ll discuss why you might or might now want
                                to send output back to the same page as input.</p>
                            <p><strong>Calculator Lab #3</strong> – Add calculators for calculating the area of a circle, and
                                another for calculating the hypotenuse side of a triangle when the other 2 sides are known. This is a 
                                classic Math problem using the Pythagorean Theorem which states that a2 + b2 = c2
                            </p>
                        </div>
                        
                    </div>
                       
                </div>
		<div class="tab-pane" id="2a">
                    <h3>Circle Calculator</h3>
                        <div class="row">
                         <div class="col-sm-10">
                             <p><img src="img/circle.png" alt=""></p>
                         </div>
                     </div>
                        <div class="row">
                            <div class="col-sm-10">
                            <form id="circle" name="circle" method="POST" action="calculator?CalcType=circle">
                                <div class="form-group row">
                                    <div><label>Enter Radius:</label></div>
                                    <div class="col-md-4"><input type="text" name="radius" value="" placeholder="Please Enter Radius" class="form-control"/></div>

                                </div>

                                <button type="submit" class="btn btn-primary">Get Area!</button>
                            </form>
                            </div>
                        </div>
                        <div class="row text">
                            <div class="col-sm-10">
                                 <h1>The circle area is: ${resMsg}</h1>
                            </div>
                        </div>
		</div>
                <div class="tab-pane" id="3a">
                    <h3>Unknown Side of Right Triangle Calculator</h3>
                        <div class="row">
                         <div class="col-sm-10">
                             <p><img src="img/triangle.png" alt=""></p>
                         </div>
                     </div>
                        <div class="row">
                            <div class="col-sm-10">
                            <form id="triangle" name="triangle" method="POST" action="calculator?CalcType=triangle">
                                <div class="form-group row">
                                    <div><label>Enter side A:</label></div>
                                    <div class="col-md-4"><input type="text" name="sideA" value="" placeholder="Please Enter Side A" class="form-control"/></div>
                                </div>
                                 <div class="form-group row">
                                    <div><label>Enter side B:</label></div>
                                    <div class="col-md-4"><input type="text" name="sideB" value="" placeholder="Please Enter Side B" class="form-control"/></div>
                                </div>
                                <button type="submit" class="btn btn-primary">Get Area!</button>
                            </form>
                            </div>
                        </div>
                        <div class="row text">
                            <div class="col-sm-10">
                                 <h1>The triangle area is: ${resMsg}</h1>
                            </div>
                        </div>
                        
		</div>
                <div class="tab-pane" id="4a">
                     <h3 class="title">Rectangle Calculator</h3>
                     <div class="row">
                         <div class="col-sm-10">
                             <p><img src="img/rectangle.png" alt=""></p>
                         </div>
                     </div>
                          <div class="row">
                            <div class="col-sm-10">
                            <form id="rectangle" name="rectangle" method="POST" action="calculator?CalcType=rectangle">
                                <div class="form-group row">
                                    <div><label>Enter length:</label></div>
                                    <div class="col-md-4"><input type="text" name="length" value="" placeholder="Please Enter Length" class="form-control"/></div>

                                </div>
                                 <div class="form-group row">
                                    <div><label>Enter width:</label></div>
                                    <div class="col-md-4"><input type="text" name="width" value="" placeholder="Please Enter Width" class="form-control"/></div>

                                </div>

                                <button type="submit" class="btn btn-primary">Get Area!</button>
                            </form>
                            </div>
                        </div>
                         <div class="row text">
                            <div class="col-sm-10">
                                 <h1>The rectangle area is: ${resMsg}</h1>
                            </div>
                        </div>
                </div>
            </div>
           </div>
            <!--<h1 class="title"> Rectangle Calculator </h1>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-3 col-xs-12">
                    <form id="myForm" name="calForm" method="POST" action="calculator">
                        <div class="form-group row">
                            <div><label>Enter length:</label></div>
                            <div class="col-md-4"><input type="number" name="length" value="" placeholder="Please Enter Length" class="form-control"/></div>

                        </div>
                         <div class="form-group row">
                            <div><label>Enter width:</label></div>
                            <div class="col-md-4"><input type="number" name="width" value="" placeholder="Please Enter Width" class="form-control"/></div>

                        </div>

                        <button type="submit" class="btn btn-primary">Get Area!</button>
                    </form>
                </div>
            </div>
            <div class="row text">
                <div class="col-sm-8 col-sm-offset-3 col-xs-12">
                     <h1>The rectangle area is: ${resMsg}</h1>
                </div>
               
            </div>-->
        </div>
    </body>
</html>
