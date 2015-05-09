class FortunesController < ApplicationController
  def random_range
    @minimum = params[:min].to_i
    @maximum = params[:max].to_i
    @random = rand(@minimum..@maximum)
    @color = params[:color]
  end

  def lucky
    @first_number = rand(100)
    @second_number = rand(100)
    @third_number = rand(100)
    @fourth_number = rand(100)
    @fifth_number = rand(100)
  end

  def unlucky
    @numbers = [rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000)]
  end
end
