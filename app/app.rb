ENV["RACK_ENV"] ||= "development"
require_relative './models/link.rb'
require_relative './models/tag.rb'
require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base
  get '/' do
    redirect '/links'
  end

  get '/links' do
    @all_links = Link.all
    erb(:links)
  end

  get '/links/new' do
    erb(:new_link)
  end

  post '/links' do
    link = Link.new(url: params[:url], title: params[:title])
    tag  = Tag.first_or_create(name: params[:tags])
    link.tags << tag
     link.save
     redirect to('/links')
  end

end
