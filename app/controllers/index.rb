get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/color' do

  if request.xhr?
    content_type :json
    cell= rand(1..9)
    color= "#" + "%06x" % (rand * 0xffffff)
    {cell: cell, color: color}.to_json
  else
    erb :index
  end

end
