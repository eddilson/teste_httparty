#language: pt
#encoding: utf-8

@get
Funcionalidade: Aprendendo o verbo GET

@executa_get
Cenario: consultas no portal VR

  Dado que eu faca um GET no endpoint de consulta no portal VR
  Quando seleciono um estabelecimento aleatoriamente
  Entao valido o json do tipo do estabelecimento
