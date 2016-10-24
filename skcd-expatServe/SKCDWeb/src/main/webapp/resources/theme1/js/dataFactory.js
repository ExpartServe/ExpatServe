(function(angular) {
	angular
        .module('widget.dataFactory', [])
        .factory('dataFactory', dataFactory);

    dataFactory.$inject = ['$http', '$q'];

    function dataFactory($http, $q) {
        var promise;
       // var url = 'http://skcd-skcd.rhcloud.com/getAllPost';
       var url = './json/housingDetails.json';
        return {
            getHousingData: getHousingData
        };

        function getHousingData() {
            var deferred = $q.defer();
            var requestParams = {
                'url': url,
                'method': 'GET'
            };
            promise = $http(requestParams)
                .then(function(response) {
                    deferred.resolve(response.data);
                }, function(response) {
                    deferred.reject('');
                });

            return deferred.promise;
        }

        
    }
    
})(window.angular);