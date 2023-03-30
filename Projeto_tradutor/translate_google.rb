# require 'net/http'
# require 'google/cloud/translate'

# project_id = 'projectTranslete'
# credenciais = 'AIzaSyCJ8f5ekxlrFTBu4I-Y48s5o9whUJn9TkU'

# # Define a variável de ambiente GOOGLE_APPLICATION_CREDENTIALS
# ENV['GOOGLE_APPLICATION_CREDENTIALS'] = 'path/to/credentials.json'

# # Cria o objeto de cliente do serviço de tradução
# translate = Google::Cloud::Translate.translation_service version: :v3

# puts "----Tradutor----"
# puts "Digite o que deseja traduzir: "
# text = gets.chomp

# puts "Qual é o idioma: (ex: pt)"
# native_language = gets.chomp

# puts "Para qual idioma deseja traduzir: (ex: en)" 
# to_language = gets.chomp

# response = translate.translate_text(
#     parent: translate.location_path(project: project_id, location: "global"),
#     contents: [text],
#     source_language_code: native_language,
#     target_language_code: to_language
#   )
  

#   puts "Traduzido: #{response.translations[0].translated_text}"

