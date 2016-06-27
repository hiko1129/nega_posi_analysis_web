var app = angular.module('tryApp', []);

app.controller('tryAppController1', function($scope) {
  $scope.flag = false;
  $scope.onClick = function() {
    $scope.flag = true;
  };
});
