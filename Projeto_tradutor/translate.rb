require 'net/http'
require 'google/cloud/translate'

project_id = 'projecttranslete'
credentials = 'AIzaSyCJ8f5ekxlrFTBu4I-Y48s5o9whUJn9TkU'

translate = Google::Cloud::Translate.new project: project_id, credentials: credentials

puts '----Tradutor----'
puts 'Digite o que deseja traduzir: '
text = gets.chomp

puts 'Digite o idioma de origem: (ex: en) '
source_language = gets.chomp

puts 'Digite o idioma para qual deve ser traduzido: (ex: pt) '
translate_language = gets.chomp

translation = translate.translate text, to: translate_language, from: source_language

puts "Traduzido #{"Traduzido: #{translation}"}"