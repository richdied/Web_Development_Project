<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, inital-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/custom1.css">
  <title>JSP Ajax 실시간 회원제 채팅 서비스</title>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
</head>
<body>
          <%
                String userID = null;
                if (session.getAttribute("userID") != null) {
                	userID = (String) session.getAttribute("userID");
                }
          %>
            <nav class="navbar navbar-default">
             <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed"
                   data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                   aria-expanded="false">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>      
                   </button>
                   <a class="narbar-brand" href="index.jsp">실시간 회원제 채팅 서비스</a>
                 </div>
                  <div class="collaspe navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class ="nav navbar-nav">
                  <li class="active"><a href="index.jsp">메인</a></li>
                  </ul>
                  <%
                       if(userID == null){
                   %>
                   <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                           <a href="#" class="dropdown-toggle"
                             data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">접속하기<span class="caret"></span> </a>
                               <ul class="dropdown-menu">
                              <li><a href="logoutAction.jsp">로그인</a></li>
                               <li><a href="logoutAction.jsp">회원가입</a></li>
                             </ul>
      
                   </ul>
                  <%
                         } else {
                  %> 	 
                                <ul class="nav navbar-nav navbar-right">
                       <li class="dropdown">
                       <a href="#" class="dropdown-toggle"
                            data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false">회원관리<span class="caret"></span></a>
                            </li>
                  </ul>
                  <%
                         }
                  %>
                  </div>
               </nav>    
               <div class="container">
                 <form method="post" action="./userRegister">
                   <table class="table table-bordered table-hover" style="text-align: center: border: 1px solid #dddddd">
                     <thead>
                       <tr>
                         <th colspan="3"><h4>회원 등록 양식</h4></th>
                       </tr>
                     </thead>
                     <tbody>
                       <tr>
                         <td style="width: 110px;"><h5>아이디</h5>
                         <td><input class="form-control" type="text" id="userID" name="userID" maxlength="20" placeholder="아이디를 입력하시오."></td>
                         <td style="width: 110px;"><button class="btn btn-primary" onclick="registerCheckFunction();" type="button">중복체크</button></td>
                       </tr>
                       <tr>
                         <td style="width: 110px;"><h5>비밀번호</h5>
                         <td colspan="2"><input onkeyup="passwordCheckFunction();" class="form-control" id="userPassword1" type="password" name="userPassword1" maxlength="20" placeholder="비밀번호를 입력하시오."></td>
                       </tr>
                       <tr>
                         <td style="width: 110px;"><h5>비밀번호 확인</h5>
                         <td colspan="2"><input onkeyup="passwordCheckFunction();" class="form-control" id="userPassword2" type="password" name="userPassword2" maxlength="20" placeholder="비밀번호 확인을 입력하시오."></td>
                       </tr>
                       <tr>
                         <td style="width: 110px;"><h5>이름</h5>
                         <td colspan="2"><input class="form-control" id="userName" type="text" name="userName" maxlength="20" placeholder="이름을 입력하시오."></td>
                       </tr>
                       <tr>
                         <td style="width: 110px;"><h5>나이</h5>
                         <td colspan="2"><input class="form-control" id="userAge" type="number" name="userAge" maxlength="20" placeholder="나이를 입력하시오."></td>
                       </tr>
                       <tr>
                         <td style="width: 110px;"><h5>성별</h5>
                         <td colspan="2">
                             <div class="form-group"style="text-align: center; margin: 0 auto:">
                                <div class="btn-group" data-toggle="buttons">
                                     <label class="btn btn-primary active">
                                         <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
                                     </label>
                                          <label class="btn btn-primary ">
                                             <input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
                                         </label>
                                </div>
                                </div>
                         </td>
                       </tr>
                        <tr>
                         <td style="width: 110px;"><h5>이메일</h5>
                         <td colspan="2"><input class="form-control" id="userEmail" type="email" name="userEmail" maxlength="20" placeholder="이메일을 입력하시오."></td>
                       </tr>
                     </tbody>
                   </table>
               </form>
               </div>
</body>
</html>