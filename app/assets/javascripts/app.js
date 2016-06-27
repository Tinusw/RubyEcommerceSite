var app = angular.module('shop', []);

$(document).on('ready page:load', function() {
  angular.bootstrap(document.body, ['shop'])
});

// Model
app.factory('models', function(){
  var x = {
    order: []
  };
  return x;
});

// OrdersController Code
app.controller('OrdersCtrl', ['$scope', 'models', function($scope, models){
  // set orders = models.orders
  $scope.orders = models.orders;
  
  // add an order
  $scope.addOrder = function(){
    // if empty do not add to $scope.orders
    if(!$scope.newOrder.product_id || $scope.newOrder.total === '') {return}
    $scope.orders.push($scope.newOrder);
  }

  // delete an order
  $scope.deleteOrder = function(order){
    $scope.orders.splice($scope.orders.indexOf(order), 1);
  }
}]);