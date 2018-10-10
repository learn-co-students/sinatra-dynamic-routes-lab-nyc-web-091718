require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end


  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    square.to_s
  end


  get '/say/:number/:phrase' do
    @number = params[:number]
    integer = @number.to_i
    @phrase = params[:phrase]
    final_phrase = ""
    integer.times do
      final_phrase << " #{@phrase}"
    end
    final_phrase
    #binding.pry
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end


  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
       result = @number1 + @number2
    elsif params[:operation] == "subtract"
        result = @number1 - @number2
    elsif params[:operation] == "multiply"
      result = @number1 * @number2
    else
      result = @number1 / @number2
    end
    result.to_s
    # if params[:operation] == "add"
    #   @operation = +
    # elsif params[:operation] == "subtract"
    #   @operation = -
    # elsif params[:operation] == "multiply"
    #   @operation = *
    # else
    #   @operation = /
    # end
    # @number1 @operation @number2
  end


end
