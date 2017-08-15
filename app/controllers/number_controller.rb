class NumberController < ApplicationController
  def index
  end

  def show
  	@math = HTTParty.get("http://numbersapi.com/#{params[:id]}/math?json").parsed_response
  	@trivia = HTTParty.get("http://numbersapi.com/#{params[:id]}/trivia?json").parsed_response
  	@date = HTTParty.get("http://numbersapi.com/#{params[:id]}/date?json").parsed_response
  end

  def search
	@student = Student.find_by_name params[:search_name]
	render action: 'show'
  end


  private


end

