require 'sinatra'
require_relative './config/environment.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    'reload please!!!'
  end

  get '/times/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    product = num1 * num2

    {result: product}.to_json
  end
  
end

run ApplicationController
