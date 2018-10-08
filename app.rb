require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    sqr_num = @number * @number
    "#{sqr_num.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
      "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == 'multiply'
      @total = @number1 * @number2
    elsif @operation == 'divide'
      @total = @number1 / @number2
    elsif @operation == 'subtract'
      @total = @number1 - @number2
    elsif @operation == 'add'
      @total = @number1 + @number2
    end
    "#{@total}"
  end

end 
