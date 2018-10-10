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
    @string = ""
    @number.times {|i| @string << @phrase}
    # binding.pry
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @string = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    "#{@string}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @newnum = 0

    if @operation == "add"
      @newnum = @number1 + @number2
    elsif @operation == "subtract"
        @newnum = @number1 - @number2
    elsif @operation == "multiply"
        @newnum = @number1 * @number2
    else
        @newnum = @number1/@number2
    end
    # binding.pry
    "#{@newnum}"
  end

end
