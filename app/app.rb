require_relative './models/link.rb'
require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @all_links = Link.all
    erb(:links)
  end
end
