require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = ""
    params.each do |key, value|
      words += "#{value} "
    end
    words = words.strip + "."
    "#{words}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case params[:operation]
    when "add"
      return "#{@number1 + @number2}"
    when "subtract"
      return "#{@number1 - @number2}"
    when "multiply"
      return "#{@number1 * @number2}"
    when "divide"
      return "#{@number1 / @number2}"
    else
      # Error
    end
  end

end
