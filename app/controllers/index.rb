get '/' do
  @category_names = Category.all 
  erb :index
end

get '/category/:category_name/:id' do
 @id = params[:id]
 @category = Category.find(params[:id])
 @posts = @category.posts
 erb :each_category
end

post '/category/:category_name/:id' do
	cat = Category.find(params[:id])
	cat.posts << Post.create(title: params[:title], content: params[:content])
	erb :index
end


