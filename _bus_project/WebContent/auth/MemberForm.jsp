<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="spms.controls.ManagerUpdateController" %>
<%@ page import="spms.controls.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("UTF-8"); %>	
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
<script>
    function selfClose(){
        self.close();
    }
    function joinOK(){
        alert("회원가입을 축하드립니다.")
        $("#form").submit()
        self.close();
    }
</script>
<style>
@import url(http://weloveiconfonts.com/api/?family=fontawesome);
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);
[class*="fontawesome-"]:before {font-family: 'FontAwesome', sans-serif;}

* {box-sizing: border-box;}

html {height: 100%;}

body {background-color: #eee;
  color: #606468;
  font: 400 0.875rem/1.5 "Open Sans", sans-serif;
  margin: 0;
  min-height: 100%;
}

a {
  color: #eee;
  outline: 0;
  text-decoration: none;
}
a:focus, a:hover {text-decoration: underline;}

input {
  border: 0;
  color: inherit;
  font: inherit;
  margin: 0;
  outline: 0;
  padding: 0;
  -webkit-transition: background-color .3s;
          transition: background-color .3s;
}

.site__container {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
      -ms-flex: 1;
          flex: 1;
  padding: 3rem 0;
}

.form input[type="password"], .form input[type="text"]{width: 100%;}
.form input[type="button"], .form input[type="reset"] {width: 50%;}

.form--login {color: #606468;}
.form--login label,
.form--login input[type="text"],
.form--login input[type="reset"],
.form--login input[type="password"],
.form--login input[type="button"] {
  border-radius: 0.25rem;
  padding: 1rem;
}
.form--login label {
  background-color: #363b41;
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
  padding-left: 1.25rem;
  padding-right: 1.25rem;
}
.form--login .fontawesome-lock {
  padding-left: 1.4rem;
  padding-right: 1.4rem;
}
.form--login .fontawesome-user {
  padding-left: 1.35rem;
  padding-right: 1.35rem;
}



.form--login input[type="text"], .form--login input[type="password"] {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.form--login input[type="button"] {
  background-color: #3f8ca6;
  color: #eee;
  font-weight: bold;
  text-transform: uppercase;
}
.form--login input[type="button"]:focus, .form--login input[type="button"]:hover {
  background-color: #3f8ca6;
}
.form--login input[type="reset"] {
  background-color: #3f8ca6;
  color: #eee;
  font-weight: bold;
  text-transform: uppercase;
}
.form--login input[type="reset"]:focus, .form--login input[type="reset"]:hover {
  background-color: #3f8ca6;
}
.form__field {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  margin-bottom: 1rem;
}
.form__field .first{
    margin-right: 20px;
}
.form__input {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
      -ms-flex: 1;
          flex: 1;
}

.align {
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
}

.hidden {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}

.text--center {text-align: center;}

.grid__container {margin: 0 auto; max-width: 20rem; width: 90%;}

.submit_cursor{cursor:pointer}

</style>
</head>
<body class="align">
  <div class="site__container">
    <div class="grid__container">
      <form action="add.do" method="post" class="form form--login" id="form">
        <div class="form__field">
          <label class="fontawesome-envelope-alt" for="login__email"><span class="hidden">E-mail</span></label>
          <input  type="text" placeholder="E-mail" name="email">
        </div>
        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><span class="hidden">Password</span></label>
          <input type="password" placeholder="Password" name="password">
        </div>  
        <div class="form__field">
            <label class="fontawesome-user" for="login__username"><span class="hidden">Username</span></label>
            <input type="text"  placeholder="Username" name="bname">
          </div>
        <div class="form__field">
          <input type="button" value="회원가입" class="submit_cursor first" onclick='joinOK()'>
          <input type="reset" value="취소" class="submit_cursor" onclick='selfClose()'>
        </div>
      </form>
    </div>
  </div>
</body>
</html>