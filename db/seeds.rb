require "csv"

(1..10).each do |index|
  file_name = "db/#{"%02d" % index}.csv"
  file_array = CSV.read Rails.root.join file_name
  numbers_array = file_array[0] +
    file_array[1] +
    file_array[2] +
    file_array[3] +
    file_array[4]

  numbers_string = numbers_array.map do |number|
    "%02d" % number.to_i
  end.join(";")

  Bingo.create numbers: numbers_string
end

20.times do
  numbers_array = (1..15).to_a.sample(5) +
    (16..30).to_a.sample(5) +
    (31..45).to_a.sample(5) +
    (46..60).to_a.sample(5) +
    (61..75).to_a.sample(5)

  numbers_string = numbers_array.map do |number|
    "%02d" % number
  end.join(";")

  Bingo.create numbers: numbers_string
end
