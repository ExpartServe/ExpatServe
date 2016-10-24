angular.module('myApp',['ngTouch']).controller('namesCtrl', function($scope,$compile) {
    $scope.productNames = productDetails;
   
    $('[data-toggle="popover"]').popover({
        placement : 'auto',
        trigger : 'click hover',
        delay: {show: 100, hide: 800},
        html:true
        
        	
    }).click(function(ev) {
        $compile($('.popover.in').contents())($scope);
   });
    
    $scope.openModal = function(productId,productName,productDesc) {
    	$("#modalText").text(productDesc);
		$("#modalHeader").text(productName);
		$("#myModal").modal("show");
    	
    }
    $scope.addToCompareNtfcn=function(product){

    	var notify = $.notify({
    		icon: 'resources/images/'+product.productImageName,
    		title: product.productName,
    		allow_dismiss: false,
    		message: 'added to compare list'
    	},{
    		type: 'minimalist',
    		delay: 5000,
    		icon_type: 'image',
    		template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-{0} notify-div" role="alert">' +
    			'<img  data-notify="icon" class="img-circle pull-left notify-img">' +
    			'<div class="notify-content"><span data-notify="title">{1}  </span>' +
    			'<span data-notify="message">{2}</span></div>' +
    		'</div>'
    	});
    	
    }
});

//$(document).ready(function(){
////	$compile(content)(scope);
//    $('[data-toggle="popover"]').popover({
//        placement : 'auto',
//        trigger : 'click hover',
//        delay: {show: 100, hide: 800},
//        html:true,
//        
//        	
//    });
//});

