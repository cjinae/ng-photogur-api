@photogur.controller("PicturesController", ($scope, Picture) ->
 	$scope.name = "Homer Simpson"
 	
  # console.log "picture controller is live!"
  # scope.log $scope
 	# $scope.$watch('name', -> 
 	# 	console.log "Name change to #{$scope.name}"
 	# )

  $scope.isHomer = -> 
    return $scope.name == 'homer'

 	$scope.pictures = Picture.query(
 		(data) ->
 			console.log("success!!")
 		,
 		(data) ->
 			alert("Could not get Picture data.")

 		)
 	window.Picture = Picture
)