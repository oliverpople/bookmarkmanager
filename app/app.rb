ENV["RACK_ENV"] ||= "development"
require_relative './models/link.rb'
require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @all_links = Link.all
    erb(:links)
  end

  get '/links/new' do
    erb(:new_link)
  end

  post '/links' do
    Link.create(url: params[:URL], title: params[:title])
    redirect '/links'
  end

end
