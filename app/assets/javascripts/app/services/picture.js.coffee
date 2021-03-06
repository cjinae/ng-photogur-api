@photogur.factory('Picture', ($resource) ->
	return $resource('/api/v1/pictures/:id', {id: '@id'})
)

# return [
# 	{
# 		title : "The old church on the coast of White sea",
# 		artist: "Sergey Ershov",
# 		url   : "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
# 	},
# 	{
# 		title : "Sea Power",
# 		artist: "Stephen Scullion",
# 		url   : "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
# 	},
# 	{
# 		title : "Into the Poppies",
# 		artist: "John Wilhelm",
# 		url   : "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
# 	}
# ]	