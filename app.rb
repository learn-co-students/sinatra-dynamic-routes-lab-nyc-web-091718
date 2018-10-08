require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].to_s
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_f
    @square = @num * @num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    @output = []
    @num.times {@output << "#{@phrase}"}
    @respond = @output.join("\n")
    "#{@respond}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1].to_s
    @w2 = params[:word2].to_s
    @w3 = params[:word3].to_s
    @w4 = params[:word4].to_s
    @w5 = params[:word5].to_s

    @answer = @w1.concat(" #{@w2}").concat(" #{@w3}")
.concat(" #{@w4}").concat(" #{@w5}.")

    "#{@answer}"
  end

  get '/:operation/:number1/:number2' do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if params[:operation] == "divide"
      @total = @n1 / @n2
    elsif params[:operation] == "add"
      @total = @n1 + @n2
    elsif params[:operation] == "subtract"
      @total = @n1 - @n2
    elsif params[:operation] == "multiply"
      @total = @n1 * @n2
    end
    "#{@total}"
  end


end
