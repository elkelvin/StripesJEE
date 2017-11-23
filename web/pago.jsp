<%-- 
    Document   : index
    Created on : 3/09/2017, 12:19:38 PM
    Author     : Kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">                
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-6 text-center">
                    <h1>Pedidos</h1>
                </div>
            </div>            
            <div class="row justify-content-center">
                <div class="col-6 text-center">
                    <form action="srvPedido" method="POST">
                        <table class="table table-striped">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>Clave</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>                             
                                </tr>
                            </thead>                        
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Calculadora</td>
                                    <td class="text-right">$50.00</td>
                                    <td><input type="number" name="nCalculadora" placeholder="Cantidad"></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Computadora</td>
                                    <td class="text-right">$5000.00</td>
                                    <td><input type="number" name="nComputadora" placeholder="Cantidad"></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Monitor</td>
                                    <td class="text-right">$2000.00</td>
                                    <td><input type="number" name="nMonitor" placeholder="Cantidad"></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Teclado</td>
                                    <td class="text-right">$70.00</td>
                                    <td><input type="number" name="nTeclado" placeholder="Cantidad"></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Mouse</td>
                                    <td class="text-right">$70.00</td>                                
                                    <td><input type="number" name="nMouse" placeholder="Cantidad"></td>
                                </tr>
                            </tbody>

                            <tfoot>
                                <tr>
                                    <td colspan="4">                                    
                                        <button type="submit" class="btn btn-success btn-sm btn-block">Procesar</button>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>         
                    </form>
                </div>
            </div>            
        </div>
    </body>
</html>
