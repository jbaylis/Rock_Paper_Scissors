require 'sinatra' 

#0=rock
#1=paper
#2=scissor

wins=0
losses=0

get '/rock' do 
	cp=rand(3)
	if cp==0
		"I shoot rock DRAW    Wins- #{wins}    Losses- #{losses}"
	elsif cp==1
		losses+=1
		"I shoot paper YOU LOSE    Wins- #{wins}    Losses- #{losses}"
	elsif cp==2
		wins+=1
		"I shoot scissors YOU WIN    Wins- #{wins}    Losses- #{losses}"
	end
end

get '/paper' do
	cp=rand(3)
	if cp==0
		wins+=1
		"I shoot rock YOU WIN    Wins- #{wins}    Losses- #{losses}"
	elsif cp==1
		"I shoot paper DRAW    Wins- #{wins}    Losses- #{losses}"
	elsif cp==2
		losses+=1
		"I shoot scissors YOU LOSE    Wins- #{wins}    Losses- #{losses}"
	end
end

get '/scissors' do
	cp=rand(3)
	if cp==0
		losses+=1
		"I shoot rock YOU LOSE    Wins- #{wins}    Losses- #{losses}"
	elsif cp==1
		wins+=1
		"I shoot paper YOU WIN    Wins- #{wins}    Losses- #{losses}"
	elsif cp==2
		"I shoot scissors DRAW    Wins- #{wins}    Losses- #{losses}"
	end
end