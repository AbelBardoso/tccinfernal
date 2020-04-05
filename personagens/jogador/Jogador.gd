extends "res://Personagens/Personagem.gd"

signal direcao_alterada

const VELOCIDADE_MAXIMA_PADRAO = 500

func _ready():
	velocidade_maxima_atual = VELOCIDADE_MAXIMA_PADRAO
	pass 

func _physics_process(delta):
	direcao_entrada = Vector2()
	
	direcao_entrada.x = float(Input.is_action_pressed("direita")) - float(Input.is_action_pressed("esquerda"))
	
	if direcao_entrada and direcao_entrada != direcao_ultimo_movimento:
		emit_signal("direcao_alterada", direcao_entrada)
	
	pass
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
