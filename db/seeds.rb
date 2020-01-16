10.times do
  numbers = (1..75).to_a.sample(20).map do |number|
    "%02d" % number
  end.join(";")

  Bingo.create numbers: numbers
end
