require_relative 'config/environment'

class App < Sinatra::Base

get '/reversename/:name' do
  params[:name].reverse

end #reversename

get '/square/:number' do
  num = params[:number].to_i * params[:number].to_i
  num.to_s
end #square

get '/say/:word1/:word2/:word3/:word4/:word5' do
  w1 = params[:word1]
  w2 = params[:word2]
  w3 = params[:word3]
  w4 = params[:word4]
  w5 = params[:word5]
  "#{w1} #{w2} #{w3} #{w4} #{w5}."
end #phrase


get '/:operation/:number1/:number2' do

  if params[:operation] == "add"
    answer = params[:number1].to_i + params[:number2].to_i
  elsif params[:operation] == "subtract"
      answer = params[:number1].to_i - params[:number2].to_i
    elsif  params[:operation] == "multiply"
        answer = params[:number1].to_i * params[:number2].to_i
      else  params[:operation] =="divide"
         answer =   params[:number1].to_i / params[:number2].to_i
        end
        answer.to_s
  end #operation

  # get '/say/:number/:phrase' do
  #     final_string = ""
  #     (params[:number].to_i).times do
  #       final_string += "#{params[:phrase]}\n"
  #     end
  #     final_string
  #   end #phrase


  get '/say/:number/:phrase' do

      num = params[:number].to_i
      phrase = params[:phrase]
      arr = []
      num.times do
        p1  = "#{phrase}"
          arr << p1  end
        output =  arr[0] + " " + arr[1] + " " + arr[2] + " " + arr[3] + " " + arr[4]
        output.to_s
      end #end of say

end #end of class
