<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayConfirm.aspx.cs" Inherits="XEx06Reservation.PayConfirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Credit Card Validation Demo</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/styles.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/demo.css"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="assets/js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="assets/js/script.js"></script>

</head>
<body>
    <div class="container bg-info">
        <header class="jumbotron d-flex align-items-center" style="background-color: #ffffff">            
            <img src="Images/Microsoft.png" alt="Microsoft Logo"/>
        </header>

        <div class="creditCardForm">
            <div class="heading">
                <h1>Confirm Purchase</h1>
            </div>

            <div class="payment">
                <form>
                    <div class="form-group owner">
                        <label for="owner">Owner</label>
                        <input type="text" class="form-control" id="owner"/>
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv"/>
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Card Number</label>
                        <input type="text" class="form-control" id="cardNumber"/>
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Expiration Date</label>
                        <select>
                            <option value="01">January</option>
                            <option value="02">February </option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">August</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                        <select>
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                            <option value="22"> 2022</option>
                            <option value="23"> 2023</option>
                            <option value="24"> 2024</option>
                        </select>
                    </div>
                    <div class="form-group" id="credit_cards">
                        <img src="assets/images/visa.jpg" id="visa"/>
                        <img src="assets/images/mastercard.jpg" id="mastercard"/>
                        <img src="assets/images/amex.jpg" id="amex"/>
                    </div>

                    <div class="form-group" id="pay-now">
                        <button type="submit" class="btn btn-default" id="confirm-purchase">Confirm</button>
                    </div>
                </form>
            </div>
        </div>

                        <%--     
                             Card Number	Security Code
                            Visa	4716108999716531	257
                            Master Card	5281037048916168	043
                            American Express	342498818630298	3156
                                                                   --%>

        <footer>
            <p>&copy; <asp:Label ID="lblYear" runat="server"></asp:Label> 
                Microsoft 365 Home</p>
        </footer>
    </div>
</body>
</html>
