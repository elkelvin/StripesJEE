<%-- 
    Document   : index
    Created on : 22/11/2017, 11:16:54 PM
    Author     : Kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">                
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>                
        <script src="js/jquery.growl.js" type="text/javascript"></script>
        <link href="css/jquery.growl.css" rel="stylesheet" type="text/css" />
    </head>
    <body>

        <div class="card">
            <h3 class="card-header">Registro de Pago</h3>
            <div class="card-block">
                <h4 class="card-title">Tarjeta de crédito o debito</h4>                                 
                <form action="/charge" method="post" id="payment-form">
                    <div class="form-row col-md-12">                        
                        <div id="card-element" class="col-md-8">
                            <!-- a Stripe Element will be inserted here. -->
                        </div>
                        <!-- Used to display Element errors -->
                        <div id="card-errors" role="alert"></div>                                                
                        <div class="col-md-4">
                            <button class="btn btn-primary btn-sm col-md-4" type="submit">Continuar</button>
                        </div>
                        
                    </div>                    
                </form>                
            </div>
        </div>        
        
        
        
<!--                <div class="card">
            <h3 class="card-header">Registro de Pago</h3>
            <div class="card-block">
                <h4 class="card-title">Tarjeta de crédito o debito</h4>                                 
                <form action="/charge" method="post" id="payment-form">
                    <div class="form-row col-md-12">                        
                        <div id="card-element" class="col-md-8">                        
                        </div>                        
                        <div id="card-errors" role="alert"></div>                                                
                        <div class="col-md-4">
                            <button class="btn btn-primary btn-sm col-md-4" type="submit">Continuar</button>
                        </div>
                        
                    </div>                    
                </form>                
            </div>
        </div>-->
        <script src="https://js.stripe.com/v3/"></script>        
        <script src="js/stripe.js"></script>
    </body>    
</html>
