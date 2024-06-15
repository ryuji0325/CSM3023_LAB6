<%-- 
    Document   : insertAuthor
    Created on : 29 May 2024, 11:19:45 am
    Author     : amirf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 2</title>
        <style>
            label{
                width:200px;
                display:inline-block;
            }
        </style>
    </head>
    <body>
        <h1>Lab 6 - Task 2 - Perform creating and retrieving records via JSP page</h1>

        <form action="processAuthor.jsp" method="post">
            <fieldset>
                <legend>Author Registration</legend>
                <table>
                    <tr>
                        <td><label>Author No</label></td>
                        <td><input type="text" name="authno" placeholder="E.g:UKXXXXX"></td>
                    </tr>

                    <tr>
                        <td><label>Name</label></td>
                        <td><input type="text" name="name" placeholder="Enter your name"></td>
                    </tr>
                    <tr>
                        <td><label>Address</label></td>
                        <td><input type="text" name="add" placeholder="Enter your address" ></td>
                    </tr>
                    <tr>
                        <td><label>City</label></td>
                        <td><input type="text" name="city" placeholder="Enter your city" ></td>
                    </tr>
                    <tr>
                        <td><label>State</label></td>
                        <td><input type="text" name="state" placeholder="Enter your state" ></td>
                    </tr>
                    <tr>
                        <td><label>Zip</label></td>
                        <td><input type="text" name="zip" placeholder="Enter your zip" ></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="submit" name="submit">
                            <input type="reset" name="reset">
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>


        <p>&copy; 2018-Dr.Faizah Binti Aplop</p>


    </body>
</html>
