<!DOCTYPE html>
<html>
 <head>
 <title>angularjs fact n square</title>
 <script 
src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
 </head>
 <body ng-app="myapp">
 <div ng-controller="mycontroller">
 <h2>To do list</h2>
 <ul>
 <li ng-repeat="task in tasks">{{task.name}}
 <button ng-click="edittask(task)">edit task</button>
 <button ng-click="deletetask(task)">delete task</button>
 </li>
 </ul>
 <div>
 <label>New tasks:</label>
 <input type="text" ng-model="newtaskname" >
 <button ng-click="addtask()">Add Task</button>
 </div>
 <div ng-show="editing task">
 <label> edit Task:</label>
 <input type="text" ng-model="editedtaskname">
 <button ng-click="savetask()">save</button>
 <button ng-click="canceledit()">cancel</button>
 </div>
 </div>
 <script src="script.js"></script>
 </body>
</html>
 
JAVASCRIPT
var app = angular.module('myapp', []);
app.controller('mycontroller', function($scope) {
 $scope.tasks = [
 { name: 'attend classes' },
 { name: 'complete assignment' },
 { name: 'study for CIE' }
 ];
 $scope.newtaskname = '';
 $scope.editingtask = null;
 $scope.editedtaskname = '';
 $scope.addtask = function() {
 if ($scope.newtaskname) {
 $scope.tasks.push({ name: $scope.newtaskname });
 $scope.newtaskname = '';
 }
 };
 $scope.edittask = function(task) {
 $scope.editingtask = task;
 $scope.editedtaskname = task.name;
 };
 $scope.savetask = function() {
 if ($scope.editingtask) {
 $scope.editingtask.name = $scope.editedtaskname;
 $scope.canceledit();
 }
 };
 $scope.canceledit = function() {
 $scope.editingtask = null;
 $scope.editedtaskname = '';
 };
 $scope.deletetask = function(task) {
 var index = $scope.tasks.indexOf(task);
 if (index !== -1) {
 $scope.tasks.splice(index, 1);
 }
 };
});
