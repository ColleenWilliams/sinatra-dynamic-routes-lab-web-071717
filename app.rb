require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    loop_number = params[:number].to_i
      result = ""
      loop_number.times do
       result += params[:phrase]
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = []
    params.each do |k,v|
      result << v
      end
    result.join(" ") + "."
    # binding.pry
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      answer =  num1 + num2
    elsif params[:operation] == "subtract"
      answer = num1 - num2
    elsif params[:operation] == "multiply"
        answer =  num1 * num2
    elsif params[:operation] == "divide"
      answer =  num1 / num2
        # binding.pry
    end
    answer.to_s
  end

end
