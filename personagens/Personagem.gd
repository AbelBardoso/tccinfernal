extends KinematicBody2D

export var aceleracao = 1000
export var desaceleracao = 1000

var direcao_entrada = Vector2()
var direcao_ultimo_movimento = Vector2(1, 0)

var velocidade_maxima_atual = 0.0
var velocidade_alvo = 0.0

var velocidade_atual = Vector2()
	

func _physics_process(delta):
	
	if direcao_entrada:
		direcao_ultimo_movimento = direcao_entrada
		
		if velocidade_alvo != velocidade_maxima_atual:
			velocidade_alvo = velocidade_maxima_atual
		
	else:
		velocidade_alvo = 0
	
	var variacao = desaceleracao * delta
	if direcao_entrada :
		variacao = aceleracao * delta
	
	velocidade_atual.x = aproximar(velocidade_atual.x, velocidade_alvo * direcao_entrada.x, variacao)
	
	move_and_slide(velocidade_atual)
	
	pass

func aproximar(valor_atual, valor_alvo, variacao):
	var diferenca = valor_alvo - valor_atual
	
	if diferenca > variacao:
		return valor_atual + variacao
	
	elif diferenca < -variacao:
		return valor_atual - variacao
	
	return valor_alvo
	pass
























