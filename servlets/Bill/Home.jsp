<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.4.1/milligram.css">
</head>
<body>
<h1>Hello <%
         Cookie cookie = null;
         Cookie[] cookies = null;
         cookies = request.getCookies();
         if( cookies != null ) {
              for (int i = 0; i < cookies.length; i++) {
                   cookie = cookies[i];
                   String name = cookie.getName();
                    if (name.equals("username")) {
                        String username = cookie.getValue();
                        out.println(username);
                        break;
                    }
              }
          }
          else 
          {
                  out.println("NULL");
          }
      %> please select the operations listed below </h1>
<h1> Add the Sales Bill here :</h1>
<form action="SalesInsert.html">
  <input type="submit" id="salesinsert" value="Insert Sales Bills" />
</form>
<br>
<h1> Add the Purchase bills here</h1>
<form action="PurchaseInsert.html">
  <input type="submit" id="purchaseinsert" value="Insert Purchase Bills" />
</form>
<br>
<h1> Enter the Bill no to Search  :</h1>
<form action="SearchBillno.html">
    <input type="submit" id="searchbillno" value="Search Bill no" />
</form>
<br>
<h1> Enter the Date to be searched  :</h1>
<form action="SearchViaDate.html">
    <input type="submit" id="searchviadate" value="Search Date" />
</form>
<br>
<h2>To logout click the button below</h2>
      <br>
      <form action="../Login">
          <input type="submit" value="Logout" />
      </form>
</body>
</html>