@photogur.controller("PictureController", ($scope, $routeParams, Picture) ->
	console.log("the id is", $routeParams.id)

	# $scope.picture = Picture.get($routeParams)  or
	$scope.picture = Picture.get({id: $routeParams.id}, $.noop, (data) ->
		alert("Could not retreive the picture")
	)
)