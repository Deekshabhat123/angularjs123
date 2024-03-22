<!DOCTYPE html>
<html>
 <head>
 <title> login form with validation</title>
 <script 
src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js">
 </script>
 </head>
 <body ng-app="myapp">
 <div ng-controller="logincontroller">
 <h2>login form</h2>
 <form name="loginform" novalidate >
 <label> username:</label>
 <input type="text" ng-model="user.username" name="username" 
required>
 <span ng-show="loginform.username.$error.required && 
loginform.username.$dirty">username is required</span>
 <br>
 <label> password: </label>
 <input type="password" ng-model="user.password" 
name="password" ng-pattern="/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/" 
required>
 <span ng-show="loginform.password.$error.required && 
loginform.password.$dirty">password is required</span>
 <span ng-show="loginform.password.$error.pattern && 
loginform.password.$dirty">password must be alphanumeric and atleast 8 
characters long </span>
 <br>
 <button ng-click="login()"
 ng-disabled="loginform.$invalid">login</button>
 </form>
 <div ng-show="isloggedin">
 <p>login successful! welcome,{{user.username}}!</p>
 </div>
 </div>
 <script src="PROGRAM8JS.js"></script>
 </body>
</html>
var app=angular.module('myapp',[]);
app.controller('logincontroller',function($scope){
 $scope.user={username : '',password:''};
 $scope.isloggedin=false;
  $scope.login=function()
 {
 $scope.isloggedin=true;
};
});
