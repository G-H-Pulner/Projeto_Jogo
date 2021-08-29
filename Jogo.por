programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t

	// posições x e y
	inteiro bolinha_x = 390, bolinha_y = 290
	// imagens
     inteiro imagem_de_fundo = g.carregar_imagem("img/plano-de-fundo.jpeg")
     inteiro icone = g.carregar_imagem("img/icon.png")
     //contador
     inteiro cont=0
	
	funcao controle(){
		se(t.tecla_pressionada(t.TECLA_A) e bolinha_x>0){
			bolinha_x--
		}
		se(t.tecla_pressionada(t.TECLA_D) e bolinha_x<1004){
			bolinha_x++
		}
		se(t.tecla_pressionada(t.TECLA_W) e bolinha_y>0){
			bolinha_y--
		}
		se(t.tecla_pressionada(t.TECLA_S) e bolinha_y<556){
			bolinha_y++
		}
	}
	funcao desenhar(){
		g.desenhar_imagem(0, 0, imagem_de_fundo)
		g.definir_cor(g.COR_PRETO)
		g.desenhar_texto(10, 10, "Movimente a bolinha com A W S D, para sair clique Esc.")
		g.desenhar_elipse(bolinha_x, bolinha_y, 20, 20, verdadeiro)
		g.renderizar()
	}
	
	funcao inicio(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(1024, 576)
		g.definir_titulo_janela("JOGO")
		g.definir_icone_janela(icone)
		enquanto(nao t.tecla_pressionada(t.TECLA_ESC)){
			controle()
			desenhar()
		}
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 629; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */