require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i ** 2
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    @sentence = ""
     params[:number].to_i.times do
      @sentence += params[:phrase] + "\n"
    end
    "#{@sentence}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ") + "."
    "#{@phrase}"
  end

  get '/add/:num1/:num2' do
    @sum = params[:num1].to_i + params[:num2].to_i
    "#{@sum}"
  end

  get '/subtract/:num1/:num2' do
    @minus = params[:num1].to_i - params[:num2].to_i
    "#{@minus}"
  end

  get '/multiply/:num1/:num2' do
    @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end

  get '/divides/:num1/:num2' do
    @division = params[:num1].to_i / params[:num2].to_i
    "#{@division}"
  end

end
