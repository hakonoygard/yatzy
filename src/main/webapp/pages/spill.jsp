<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initia-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <title>Spill</title>
    <style>
        table {
            font-family: Roboto Condensed;
            color: #ffffff;
            border-collapse: collapse;
            width: 30%;
            float: right;
            margin-right: 10%;
        }

        td, th {
            border: 1px solid #FFFFFF;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #0E819B;
        }
        tr:nth-child(odd) {
            background-color: #51AFC5;
        }
    </style>
</head>
<body>
<div id="logo">
    <a href="startside">
        <img src="pictures/logo.png" alt="logo" style='max-width:450px;'>
    </a>
</div>
<div id="overskriftspill">Du er med i dette spillet: ${spill.navn}<br>Det er din tur!</div>

<div id="runde">
    <div id="spillboks">
        <form action=spill method="post">

            <!-- Bare for spillere som det er sin tur -->

            <div id="vanligtekst">Antallkast: ${spilldeltagelse.kast}<br>${rundenavn}<br>Resultat av kast:<br></div>
                <div id="terningresultattekst">
                    <input type="checkbox" id="terning1" name="terninger" value="0">
                    <label for="terning1"> ${spill.kopp.terning1}</label><br>
                    <input type="checkbox" id="terning2" name="terninger" value="1">
                    <label for="terning2"> ${spill.kopp.terning2}</label><br>
                    <input type="checkbox" id="terning3" name="terninger" value="2">
                    <label for="terning3"> ${spill.kopp.terning3}</label><br>
                    <input type="checkbox" id="terning4" name="terninger" value="3">
                    <label for="terning4"> ${spill.kopp.terning4}</label><br>
                    <input type="checkbox" id="terning5" name="terninger" value="4">
                    <label for="terning5"> ${spill.kopp.terning5}</label><br>
                </div>
            <input type="hidden" id="spill" name="spill" value="${spill.id}">
            <input type="submit" value="Trill terninger">
        </form>
    </div>
</div>

<div id="poeng">
    <TABLE ID="spillbrett">
        <TR>
            <TH>Deltakere</TH>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TH>${s.bruker.brukernavn}</TH> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Enere</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.enere}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Toere</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.toere}</TD>
            </c:forEach>
        </TR>
        <TR>
            <TD>Treere</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.treere}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Firere</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.firere}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Femmere</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.femere}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Seksere</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.seksere}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Sum</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.sumbonus}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Bonus</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.bonus}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Ett par</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.par}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>To par</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.topar}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Tre like</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.trelike}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Fire like</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.firelike}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Liten straight</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.litenstraight}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Stor straight</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.storstraight}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Hus</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.hus}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Sjanse</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.sjanse}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Yatzy</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.yatzy}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
        <TR>
            <TD>Total</TD>
            <c:forEach items="${spilldeltagelser}" var="s">
                <TD>${s.totalsum}</TD> <!-- Spillere -->
            </c:forEach>
        </TR>
    </TABLE>
</div>

<form action="LoggUtServlet" method="get">
    <div id="loggutknapp">
        <input type="submit" value="Logg ut" />
    </div>
</form>


</body>
</html>