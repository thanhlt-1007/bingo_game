class BingosController < ApplicationController
  def index
  end

  def show
    @bingo = Bingo.find_by id: params[:id]
    @number_arrays = @bingo.numbers.split(";").each_slice(5).to_a
    @rows = [
      [],
      [],
      [],
      [],
      []
    ]
    @number_arrays.each_with_index do |number_array|
      number_array.each_with_index do |number, number_index|
        @rows[number_index] << number
      end
    end

    @title = ["B", "I", "N", "G", "O"]
  end
end
