﻿#language: pt
#encoding: utf-8

Dado('que eu faca um GET no endpoint de consulta no portal VR') do
  Http.headers 'cookie' => $COOKIES
  @get_clientes = Http.get '/api-web/comum/enumerations/VRPAT'
end

Quando('seleciono um estabelecimento aleatoriamente') do
  dataObject = JSON.parse(@get_clientes.body, object_class: OpenStruct)
  p @establishment = dataObject.typeOfEstablishment.sample.to_h.to_json
end

Entao('valido o json do tipo do estabelecimento') do
  expect(@get_clientes.code).to eq 200
  expect(@establishment).to match_json_schema('establishment')
end
