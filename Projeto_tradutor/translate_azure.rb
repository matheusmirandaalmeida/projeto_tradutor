require 'net/http'
require 'rest-client'
require 'json'

subscription_key = 'b27e27448be942a8be7f17d20d8ff6d8'
location  = 'brazilsouth'
# Definir o endpoint da API
endpoint = "https://api.cognitive.microsofttranslator.com/"

puts '----Tradutor----'
puts 'Digite o que deseja traduzir: '
text = gets.chomp

# puts 'Digite o idioma de origem: (ex: en) '
# source_language = gets.chomp

puts 'Digite o idioma para qual deve ser traduzido: (ex: pt) '
translate_language = gets.chomp

# definir o texto a ser traduzido:

product = [{
    'text' => text
}]

# Define os cabeçalhos da requisição

headers = {
    'Content-Type' => 'application/json',
    'Ocp-Apim-Subscription-Key' => subscription_key,
    'Ocp-Apim-Subscription-Region' => location
}

# Enviar a requisição para a API do translate da Microsoft: 

response = RestClient.post(endpoint, product.to_json, headers)

translate = JSON.parse(response.body)[0]['translations'][0]['text']

# translation = translate.translate text, to: translate_language, from: source_language

puts "Traduzido: #{translate}"