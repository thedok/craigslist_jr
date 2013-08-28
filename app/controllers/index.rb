get '/' do
  
  erb :index
end

get '/category/' do
  p params
  @category_names = Category.all
  p @category_names
  erb :category
end

get '/create/' do
  erb :create
end

post '/create/' do
  p params
  Post.create(title: params[:title], content: params[:content])
  erb :create
end


