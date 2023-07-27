<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Welcome Pages</title>
</head>
<body>
  <table align="center" cellpadding="10" border="1">
    <tr>
      <td colspan="2" style="text-align: center;">
        <h1>Welcome <%= session.getAttribute("userName") %></h1>
        <p>Hello, <%= session.getAttribute("userName") %>! Welcome to our company.</p>
      </td>
    </tr>
  </table>
</body>
</html>
