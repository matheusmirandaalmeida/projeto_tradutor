# require 'net/http'
# require 'google/cloud/translate'

# project_id = "projecttranslete"
# credentials = "AIzaSyDhnL0tCpRmi3YZVJwscskWe-3dPLy0QJo"

# translate = Google::Cloud::Translate.new project: project_id, credentials: credentials

# puts '-------Tradutor-------'
# puts 'DUgite o texto que deseja ser traduzido: '
# text = gets.chomp

# puts 'Digite o idioma de origem: (ex: en):'
# source_language = gets.chomp

# puts 'Digite o idioma que deseja traduzir: (ex: pt):'
# translate_language = gets.chomp

# translation = translate.translate text, to: translate_language, from: source_language

# puts "Tradução #{translation.text}"

credentials_file_path = "/path/to/credentials.json"
if File.exist?(credentials_file_path)
  # código para carregar o arquivo de credenciais
else
  puts "O arquivo de credenciais não foi encontrado no caminho #{credentials_file_path}."
end