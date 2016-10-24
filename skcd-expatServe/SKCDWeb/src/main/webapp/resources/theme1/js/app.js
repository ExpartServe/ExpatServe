(function(angular) {
    'use strict';
    var myApp = angular.module('appname', ['widget.dataFactory']);

    myApp.controller('myCtrl', ['$scope','$http', 'dataFactory', function($scope,$http, dataFactory) {

        // $scope.viewType="detailview";
        $scope.viewType = "listview";
        $scope.tab1name = "Houses";
        $scope.tab2name = "Roommates";
        $scope.changeview = function(view) {
            console.log('view= ' + view);
            $scope.viewType = view;
        }
        
        $http({
        	  method: 'GET',
        	  url: 'getAllPost'
        	}).then(function successCallback(response) {
        	    // this callback will be called asynchronously
        	    // when the response is available
        		console.log(response.data);
        		$scope.itemList = response.data;
        	  }, function errorCallback(response) {
        	    // called asynchronously if an error occurs
        	    // or server returns response with an error status.
        	  });
        
       
        // $scope.list = dataFactory.getHousingData();
        // loadData();

        function loadData() {
            dataFactory.getHousingData()
                .then(function(response) {
                    $scope.filteredPortfolioId = response;
                });
        }

    }]);
})(window.angular);
