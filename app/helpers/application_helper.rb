module ApplicationHelper
  def is_free? row_index, number_index
    row_index == 3 && number_index == 3
  end
end
