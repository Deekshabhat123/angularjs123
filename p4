<!doctype html>
<html>
 <head>
 <title>angularjs Factorial and square calculator</title>
 <script 
src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
 </head>
 <body>
 <div ng-app="myapp" ng-controller="myctrl">
 <h1>Factorial and square calculator app</h1>
 <input type="number" ng-model="number" placeholder="enter a number">
 <button ng-click="calculatefactorial()">calculate factorial</button>
 <button ng-click="calculatesquare()">calculate square</button>
 <p>factorial:{{factorial}}</p>
 <p>square:{{square}}</p>
 <script>
 var app = angular.module("myapp", []);
 app.controller("myctrl", function($scope) {
 $scope.number=0;
 $scope.factorial=0;
 $scope.square=0;
 $scope.calculatefactorial=function(){
 var factorial=1;
 for(var i=$scope.number;i>1;i--){
 factorial*=i;
 }
 $scope.factorial=factorial; 
 };
 $scope.calculatesquare=function(){
 $scope.square=$scope.number*$scope.number;
 };
 });
 </script>
 
</html>
