get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/color' do

  #Create and return a JSON object with the random cell and color given below.

  p cell = rand(1..9)
  p color = "#" + "%06x" % (rand * 0xffffff)

  {"color" => color, "cell" => cell}.to_json
end