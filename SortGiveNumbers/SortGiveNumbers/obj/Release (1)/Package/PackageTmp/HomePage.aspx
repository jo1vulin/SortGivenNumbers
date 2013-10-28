<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SortGiveNumbers.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simpe web page</title>
    <style type="text/css">
        body {
            background-color: antiquewhite;
            margin: 4px 7px 20px 40px;
        }

        header, footer {
            text-align: center;
            font-style: italic oblique;
            color: black;
        }


        nav {
            text-align: left;
        }

        a {
            display: block;
        }

        #header {
            font-size: 25px;
        }

        .footer {
            position: absolute;
            bottom: 0;
            width: inherit;
            height: 60px; /* Height of the footer */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="wrapper">
            <div class="page">
                <header id="header">This is the header of the web page</header>
                <p>
                </p>
                <nav>
                    <a href="SortingPage.aspx">Go to sorting page =></a>
                    <a>Page 3</a>
                    <a>Page 4</a>
                    <a>Page 5</a>
                    <a>Page 6</a>
                </nav>

            </div>
            <div class="footer" id="footer">
                <footer>This is the footer of the web page. All rights reserver 2013</footer>
            </div>
        </div>
    </form>
</body>
</html>
