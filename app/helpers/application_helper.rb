module ApplicationHelper
  include ActionView::Helpers::DateHelper

  def format_number_to_currency number
    number_to_currency(number, unit: '', delimiter: '.' , precision: 0)
  end
end
