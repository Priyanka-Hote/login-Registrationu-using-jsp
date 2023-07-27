<!DOCTYPE html>
<html>
<head>
  <title>Registration Page</title>
</head>
<body>
  <div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
    <div>
      <form  action="RegistrationServlet" method="post">
        <table align="center" cellpadding="5" border="1">
        <tr>
            <td colspan="2" style="text-align: center;">
              <h2 style="color: lightblue;">Employee Registration</h2>
            </td>
          </tr>
          <tr>
            <td>Name:</td>
            <td><input type="text" name="name" required></td>
          </tr>
          <tr>
            <td>Date of Birth:</td>
            <td><input type="date" name="dob" required></td>
          </tr>
          <tr>
            <td>Gender:</td>
            <td>
              <input type="radio" name="gender" value="male" required> Male
              <input type="radio" name="gender" value="female" required> Female
              
            </td>
          </tr>
          <tr>
            <td>Address:</td>
            <td><input type="text" name="address" required></td>
          </tr>
          <tr>
            <td>City:</td>
            <td><input type="text" name="city" required></td>
          </tr>
          <tr>
            <td>State:</td>
            <td><input type="text" name="state" required></td>
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
              <button type="submit">Submit</button>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</body>
</html>
