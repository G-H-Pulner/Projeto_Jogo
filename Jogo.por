programa
{
	inclua biblioteca Mouse --> m
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t

	// posições x e y
	inteiro bolinha_x = 390, bolinha_y = 290
	// imagens
     inteiro imagem_de_fundo = g.carregar_imagem("img/plano-de-fundo.jpeg")
     //contador
     inteiro cont=0
	
	funcao controle(){
		bolinha_x=m.posicao_x()
		bolinha_y=m.posicao_y()
		se(m.algum_botao_pressionado()==verdadeiro){
			se(m.ler_botao()==2){
					se(cont==0){
						g.entrar_modo_tela_cheia()
						imagem_de_fundo = g.carregar_imagem("img/plano-de-fundo-full.jpeg")
						cont=1
					}senao se(cont==1){
						g.sair_modo_tela_cheia()
						imagem_de_fundo = g.carregar_imagem("img/plano-de-fundo.jpeg")
						cont=0	
					}
			}
		}	
	}
	
	funcao desenhar(){
		g.desenhar_imagem(0, 0, imagem_de_fundo)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_texto(20, 50, "Movimente a bolinha com o mouse.")
		g.desenhar_texto(20, 70, "O botão do meio muda a resolução.")
		g.definir_cor(g.COR_PRETO)
		g.desenhar_elipse(bolinha_x, bolinha_y, 20, 20, verdadeiro)
		g.renderizar()
	}
	
	funcao inicio(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(800, 600)
		m.ocultar_cursor()
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
 * @POSICAO-CURSOR = 920; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */