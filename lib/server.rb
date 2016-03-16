require "sinatra/base"
require "json"
require "pry"

require "httpunk/version"

module Httpunk
	class Api < Sinatra::Base

		get "/api/test" do
			content_type :json
			{ message: "Go go go!" }.to_json
		end
		#quary parameter

		get "/after" do
			version = params["v"] ? params["v"].to_i : 1
			puts " \nLOGGING: version is #{version} \n\n"
			spawn("afplay \"../samples/After#{version}.mp3\"")
			content_type :json
			{message: "Playing after"}.to_json
		end

		# patch "/repos/:org/:repo/issues/:number" do
		# 	state = params["state"]
		# 	@issue = Issue.find(number)
		# 	@issue.state = state

		get "/beat" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/beat.mp3\"")
			content_type :json
			{message: "Playing beat"}.to_json
		end
		
		get "/better" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/Better#{version}.mp3\"")
			content_type :json
			{message: "Playing better"}.to_json
		end
		
		get "/harder" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/Harder#{version}.mp3\"")
			content_type :json
			{message: "Playing harder"}.to_json
		end

		get "/doit" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/DoIt#{version}.mp3\"")
			content_type :json
			{message: "Playing doit"}.to_json
		end				

		get "/ever" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/Ever#{version}.mp3\"")
			content_type :json
			{message: "Playing workit"}.to_json
		end

		get "/faster" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/Faster#{version}.mp3\"")
			content_type :json
			{message: "Playing faster"}.to_json
		end

		get "/hour" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/Hour#{version}.mp3\"")
			content_type :json
			{message: "Playing hour"}.to_json
		end

		get "/makeit" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/MakeIt#{version}.mp3\"")
			content_type :json
			{message: "Playing makeit"}.to_json
		end

		get "/makesus" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/MakesUs#{version}.mp3\"")
			content_type :json
			{message: "Playing makesus"}.to_json
		end

		get "/morethan" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/MoreThan#{version}.mp3\"")
			content_type :json
			{message: "Playing morethan"}.to_json
		end

		get "/never" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/Never#{version}.mp3\"")
			content_type :json
			{message: "Playing never"}.to_json
		end

		get "/our" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/Our#{version}.mp3\"")
			content_type :json
			{message: "Playing our"}.to_json
		end

		get "/over" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/Over#{version}.mp3\"")
			content_type :json
			{message: "Playing over"}.to_json
		end

		get "/stronger" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/Stronger#{version}.mp3\"")
			content_type :json
			{message: "Playing stronger"}.to_json
		end

		get "/workis" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/WorkIs#{version}.mp3\"")
			content_type :json
			{message: "Playing workis"}.to_json
		end

		get "/workit" do
			version = params["v"] ? params["v"].to_i : 1
			spawn("afplay \"../samples/WorkIt#{version}.mp3\"")
			content_type :json
			{message: "Playing workit"}.to_json
		end

		get "/stop" do
			spawn("killall afplay")
			{message: "Killed the music"}.to_json
		end



		run! if app_file == $0
	end
end
