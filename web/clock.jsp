<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<body>



<div ng-app="myApp">
  <div ng-controller='TimeCtrl'>
    <p>{{ clock | date:'HH:mm:ss'}}</p>
  </div>
</div>


<script>
var module = angular.module('myApp', []);

module.controller('TimeCtrl', function($scope, $interval) {
  var tick = function() {
    $scope.clock = Date.now();
  }
  tick();
  $interval(tick, 1000);
});
</script>

</body>
</html>