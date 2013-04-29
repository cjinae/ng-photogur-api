# /app/assets/javascripts/photogur/initialize.js.coffee

@photogur = angular.module('photogur', [])
@photogur.config(($routeProvider, $locationProvider) ->

	 # Enable HTML5 history support. For browsers that support HTML5 history this means
	 # You can use a url like this
	 #    http://localhost:3000/pictures/new
	 # Instead of this
	 #    http://localhost:3000/#/pictures/new
	 # 
	 # Here's a detailed explanation of how HTML5 history works: 
	 # http://diveintohtml5.info/history.html
	 $locationProvider.html5Mode(true)

	 # Set up the application routes. This is similar to Rails' /config/routes.rb
	 $routeProvider
	 .when("/",                  {templateUrl: "pictures/index", controller: "PicturesController"})
	 .when('/pictures',          {templateUrl: "pictures/index", controller: "PicturesController"})
	 .when('/pictures/new',      {templateUrl: "pictures/new",   controller: "PicturesController"})
	 .when('/pictures/:id',      {templateUrl: "pictures/show",  controller: "PictureController"})
	 .when('/pictures/:id/edit', {templateUrl: "pictures/edit",  controller: "PictureController"})
	 .otherwise({template: "Page not found by Angular."})
)

@photogur.run(['$window', '$templateCache', ($window, $templateCache) ->
	$templateCache.put(name, templateFunction) for name, templateFunction of $window.JST
])