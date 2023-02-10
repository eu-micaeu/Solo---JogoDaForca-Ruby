def jogar_forca
  # Define a palavra secreta
  palavra_secreta = "ruby"
  
  # Define o número de erros inicial como 0
  erros = 0
  
  # Armazena as letras acertadas pelo jogador
  letras_acertadas = []
  
  # Enquanto o número de erros for menor que 5, o jogo continua
  while erros < 5
    # Define a variável acertou como falso antes de começar a tentativa
    acertou = false
    
    # Mostra a palavra secreta com as letras acertadas
    puts "Palavra secreta: " + palavra_acertada(palavra_secreta, letras_acertadas).join(" ")
    puts "Erros: #{erros}"
    
    # Recebe o chute do jogador
    chute = gets.strip.downcase
    
    # Verifica se o chute está na palavra secreta
    if palavra_secreta.include?(chute)
      # Adiciona o chute à lista de letras acertadas
      letras_acertadas << chute
      # Define acertou como verdadeiro
      acertou = true
    else
      # Se o chute não está na palavra secreta, adiciona 1 ao número de erros
      erros += 1
    end
    
    # Verifica se a palavra acertada é igual à palavra secreta
    break if palavra_acertada(palavra_secreta, letras_acertadas).join("") == palavra_secreta
  end
  
  # Verifica se o jogador acertou a palavra secreta
  if acertou
    # Se sim, exibe a mensagem de parabéns
    puts "Parabéns, você ganhou!"
  else
    # Se não, exibe a mensagem de perda
    puts "Você perdeu."
  end
end

# Função que retorna a palavra acertada pelo jogador
def palavra_acertada(palavra_secreta, letras_acertadas)
  # Divide a palavra secreta em letras
  palavra_secreta.split("").map do |letra|
    # Verifica se a letra foi acertada pelo jogador
    if letras_acertadas.include?(letra)
      # Se sim, retorna a letra
      letra
    else
      # Se não, retorna um "_"
      "_"
    end
  end
end

# Inicia o jogo
jogar_forca
