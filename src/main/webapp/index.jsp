<%@ page import="aze.coders.javee.Customers" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title> Customers information</title>
</head>
<body>
<%--<h2>Hello World!</h2>--%>
<%--sdfvdfgvd--%>
<%--fgfb--%>
<%--knlkl--%>
<%--sdfvdfgvd fgfb knlkl--%>
<%--prob&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspel--%>
<%--<pre>--%>
<%--sdfvdfgvd--%>
<%--fgfb--%>
<%--            knlkl--%>
<%--</pre>--%>
<%--<b>Qalin</b>--%>
<%--<i>Italic</i>--%>
<%--<p style="font-size: 30px;font-style: italic ;">P teqi arasinda yazilanlar</p><br/>--%>
<%--<label name="searchLbl">Axtarish parametrleri:</label>--%>
<%--<input type="text" name="searchText" placeholder="Search mail" required/>--%>
<%--<ul>--%>
<%--    <li>List 1 element</li>--%>
<%--    <li>List 2 element</li>--%>
<%--</ul>--%>
<%--<ol>--%>
<%--    <li>List 1 element</li>--%>
<%--    <li>List 2 element</li>--%>
<%--</ol>--%>
<%--<ol type="A">--%>
<%--    <li>List 1 element</li>--%>
<%--    <li>List 2 element</li>--%>
<%--</ol>--%>
<%--<ol type="I">--%>
<%--    <li>List 1 element</li>--%>
<%--    <li>List 2 element</li>--%>
<%--</ol>--%>
<%--<ol type="i">--%>
<%--    <li>List 1 element</li>--%>
<%--    <li>List 2 element</li>--%>
<%--</ol>--%>
<%--<table style=" border: 1px solid blue;--%>
<%--  border-collapse: collapse;">--%>
<%--    <thead>--%>
<%--    <tr style=" border: 1px solid blue;">--%>
<%--        <th style=" border: 1px solid blue;">Name</th>--%>
<%--        <th style=" border: 1px solid blue;">Surname</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <tr style=" border: 1px solid blue;">--%>
<%--        <td>Esma</td>--%>
<%--        <td>Shamilova</td>--%>
<%--    </tr>--%>
<%--    <tr style=" border: 1px solid blue;">--%>
<%--        <td>Eyvaz</td>--%>
<%--        <td>Mehemmedelili</td>--%>
<%--    </tr>--%>
<%--    </tbody>--%>
<%--    <tfoot>--%>
<%--    <tr>--%>
<%--        <td>sum name</td>--%>
<%--        <td>sum surname</td>--%>
<%--    </tr>--%>
<%--    </tfoot>--%>
<%--</table>--%>
<%--<a href="https://stackoverflow.com/questions/19671368/how-to-change-table-borders-style-size-color-in-html"--%>
<%--   target="_self">Stack overflow self</a><br/>--%>
<%--<a href="https://stackoverflow.com/questions/19671368/how-to-change-table-borders-style-size-color-in-html"--%>
<%--   target="_blank">Stack overflow blank</a><br/>--%>
<%--<a href="https://stackoverflow.com/questions/19671368/how-to-change-table-borders-style-size-color-in-html">Stack--%>
<%--    overflow default</a><br/>--%>
<%--<img src="image/mvc.jpg"/>--%>
<%--<br/><br/><br/>--%>
<%--url--%>
<%--<img src="https://techaffinity.com/blog/wp-content/uploads/2019/07/MVC-Architecture-TechAffinity-1024x576.png"/>--%>
<%--<br/><br/><br/>--%>
<%--path local--%>
<%--<img src="C:\Users\Asus\Desktop\download.png" width="500px" height="600"/>--%>

<%--<br/><br/><br/>--%>
<%--path browser--%>
<%--<img src="file:///C://Users//Asus//Desktop//download.png" width="500px" height="600"/>--%>
<%--<br/><br/><br/>--%>
<%--<iframe src="http://localhost:8080/JavaEE/html.html" style="width: 400px">Ifrane</iframe>--%>
<%--<textarea name="area" style="height: 319px; width: 651px;">text</textarea>--%>
<%
    java.util.List<Customers> customers = new ArrayList<>();
    for (int i = 1; i <= 10; i++)
        customers.add(new Customers(i, "name " + i, "address " + i));
%>

<form action="http://localhost:8080/JavaEE/html.html" target="_top" method="post">
    <label name="searchLbl">Axtarish parametrleri:</label>
    <input type="text" name="searchText" placeholder="Search customers" required/>
    <input type="submit" name="searchBtn" value="Search customer"/>
</form>
<table style=" border: 1px solid blue;
  border-collapse: collapse;">
    <thead>
    <tr style=" border: 1px solid blue;">
        <th style=" border: 1px solid blue;">Id</th>
        <th style=" border: 1px solid blue;">Name</th>
        <th style=" border: 1px solid blue;">Surname</th>
        <th style=" border: 1px solid blue;">Edit</th>
        <th style=" border: 1px solid blue;">Delete</th>
    </tr>
    </thead>
    <tbody>
    <%for (Customers customer : customers) {%>
    <tr>
        <td><%=customer.getId()%></td>
        <td><%=customer.getName()%></td>
        <td><%=customer.getAddress()%></td>
        <td><input type="submit" value="Edit"></td>
        <td><input type="submit" value="Delete"></td>
    </tr>
    <%}%>
    </tbody>
</table>
</body>
</head>