require 'sinatra'
require 'googlebooks'
@trial = [1,2]
get "/" do
  books = GoogleBooks.search("#{params[:createria]}", {:count => 10})
  @titles, @authors, @images, @links, @description = [], [], [], [], []
  for item in books
    @titles << item.title
    @authors << item.authors
    @images << item.image_link
    @links << item.info_link
    @description << item.description
  end
  erb :home
end
