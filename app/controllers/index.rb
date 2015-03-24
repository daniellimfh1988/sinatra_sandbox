get '/naughty' do
  # @reply = params[:user_input]
  # puts @reply
  # Look in app/views/index.erb
  erb :index
end

post '/naughty' do
  @reply = ""
  speech = params[:user_input]

  if speech == speech.upcase
    reply = "NO, WE CAN'T DO THAT!"
  elsif speech == speech.downcase
    reply = "HUH?! SPEAK UP, SANDRA!"
  end
  speech
  erb :index
  redirect to("/aunty/?leng_lui=#{reply}")
end

get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

post '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :post_cool_url
end