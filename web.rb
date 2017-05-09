require 'sinatra'
require 'json'

get '/' do
    responseObject = {
        "color"=> "#fff000",
        "head_url"=> "url/to/your/img/file"
    }

    return responseObject.to_json
end

post '/start' do
    requestBody = request.body.read
    requestJson = requestBody ? JSON.parse(requestBody) : {}

    # Get ready to start a game with the request data

    # Dummy response
    responseObject = {
        "color" => "#FF0000",
        "head_url" => "http://placecage.com/c/100/100",
        "name" => "ZeldaSnake",
        "taunt" => "OH GOD NOT THE BEES",
        "head_type" => "pixel",
        "tail_type" => "pixel"
    }

    return responseObject.to_json
end

post '/move' do
    requestBody = request.body.read
    requestJson = requestBody ? JSON.parse(requestBody) : {}

    # Calculate a move with the request data

    # Dummy response
    responseObject = {
        "move" => "north", # One of either "north", "east", "south", or "west".
        "taunt" => "going north!",
    }

    return responseObject.to_json
end

post '/end' do
    requestBody = request.body.read
    requestJson = requestBody ? JSON.parse(requestBody) : {}

    # No response required
    responseObject = {}

    return responseObject.to_json
end
