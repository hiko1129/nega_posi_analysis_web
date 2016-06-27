require 'sinatra'
require 'sinatra/reloader'
require_relative 'nega_posi_analysis'
require_relative 'table_setter'


get '/' do
  haml :index
end

post '/' do
  haml :index
  text = params['input_text']
  p_o_s_table = set_table()
  analyzed_data = text_analyze(text)
  @value = calculate_value(p_o_s_table, analyzed_data)
  haml :result
end
