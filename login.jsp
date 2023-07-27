<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Login Page</title>
</head>
<body>
  <div style="display: flex; justify-content: center; align-items: center; height: 100vh; margin-top: -50px;">
    <div>
      <form action="LoginServlet" method="post">
        <table align="center" cellpadding="5" border="1">
          <tr>
            <td colspan="2" style="text-align: center;">
              <h2 style="color: lightblue;">Employee Log in</h2>
            </td>
          </tr>
          <tr>
            <td>Email:</td>
            <td><input type="text" name="email" required></td>
          </tr>
          <tr>
            <td>Password:</td>
            <td><input type="password" name="password" required></td>
          </tr>
          <tr>
            <td colspan="2" style="text-align: center;">
              <button type="submit">Log In</button>
              <button type="reset">Reset</button>
            </td>
          </tr>
          <tr>
            <td colspan="2" style="text-align: center;">
              <p>Don't have an account? <a href="Registration.jsp">Create Account</a></p>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</body>
</html>

