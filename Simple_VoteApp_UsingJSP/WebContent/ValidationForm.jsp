<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
 <style>
 /*{margin: 0; padding: 0;}
a{text-decoration: none;}
.clearfix{overflow: auto}*/
/*div{
    margin: 0 auto;
    width: 800px;
    {margin: 0; padding: 0;}
    .clearfix{overflow: auto}
    
}*/
input[type=text], select ,input[type=number]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
   /*background-color: #EDF265;#6CF4D5 #F4F06C*/
   background-color:#F4F06C;
}

input[type=submit] {
  width: 100%;
 background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 10px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=number]:hover {
  background-color: #F4ACF2;
}
input[type=text]:hover {
  background-color: #F4ACF2;
}
div{
  border-radius: 20px;
  /*background-color: #f2f2f2;*/
  padding: 30px;
  position :absolute;
  top:50%;
  left:50%;
  transform :translate(-50%,-50%);
  width:500px;
  height :665px;
  box-sizing:border-box;
  background:rgba(0,0,0,.7);
  
}
body{

background-image: url("vote2.jpg");

  /*min-height: 380px;*/
  color :#EAF3F4;
margin :0;
padding:0;
  /* Center and scale the image nicely */
 /*background-position: center;*/
  background-repeat: no-repeat;
  background-size: cover;
  /*position: relative;*/
}
label {
font-size:150%;
font-weight: bold;
}
</style>

</head>
<body>
<div>


<h2><center><h1><b>Vote Validation Form</b></h1></center></h2>
<br><br>
  <form action="ServerConfig" method="POST" role="form" data-toggle="validator">
    <label for="fname"> First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name.." required>

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name.." required>
    
    <label for="age">Age</label>
    <input type="number" id="age" name="age" placeholder="Your age.." required>

    <label for="country">Country</label>
    <select  name="country">
    <option value="Sri Lanka">Sri Lanka</option>
      <option value="Australia">Australia</option>
      <option value="Canada">Canada</option>
      <option value="USA">USA</option>
      <option value="United Kingdom">United Kingdom</option>
    </select>
    <br>
    <input type="checkbox" name="citizen" /> <label>I have a Multiple Citizenships</label><br>
  
    <input type="submit" value="Submit">
  </form>
  
</div>
</div>
</body>
</html>