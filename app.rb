require_relative 'config/environment'


class App < Sinatra::Base

  get '/reversename/:name' do

   @name = params[:name].reverse
   "#{@name}"
   end

   get '/square/:number' do
  (params[:number].to_i ** 2).to_s
   end

   get '/say/:number/:phrase' do

     new_string = ''
      @phrase = params[:phrase]
     params[:number].to_i.times do
       new_string += "#{@phrase}"
   end
   new_string
 end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif
      params[:operation] == 'subtract'
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif
      params[:operation] == 'multiply'
      (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == 'divide'
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end


end
