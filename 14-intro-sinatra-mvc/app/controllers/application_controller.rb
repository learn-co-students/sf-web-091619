class ApplicationController < Sinatra::Base
    set :views, 'app/views'

    get '/' do
        erb :home
    end

    # view all books
    get '/books/' do
        # how do we get all the books?
        @books = Book.all
        erb :index
    end

    # create a book form
    get '/books/new' do
        erb :new
    end

    # create book instance and view all books
    post '/books' do
        Book.create(params)
        @books = Book.all
        erb :index
    end
end