# Compiladores-GA: Analisador Léxico para FOOL (Fake Object-Oriented Language)

Este projeto implementa um analisador léxico para a linguagem de programação fictícia orientada a objetos FOOL (Fake Object-Oriented Language) utilizando a ferramenta **JFlex**. O analisador reconhece e classifica tokens da linguagem, que servem como entrada para um futuro analisador sintático.

## Estrutura de Arquivos

A pasta `compiladores-ga` contém os seguintes arquivos:

### Arquivos Fonte

- **FOOLLexersimple.flex**: Arquivo de definição JFlex contendo as regras de reconhecimento de tokens da linguagem FOOL. Este arquivo define palavras-chave, operadores, identificadores, números, comentários e espaços em branco.
  
- **FOOLLexersimple.java**: Arquivo Java gerado a partir do arquivo `.flex`. Contém o código do analisador léxico.
  
- **Lexersimpletest.java**: Arquivo Java que contém o código de teste para o analisador léxico. Ele lê um arquivo de entrada e usa o analisador léxico para gerar e imprimir os tokens reconhecidos.

- **Yytoken.java**: Define a estrutura de um token. Cada token tem dois componentes: o tipo do token (como `ID`, `NUMBER`, `IF`) e o valor correspondente, se aplicável.

### Arquivos Compilados

- **FOOLLexersimple.class**: Arquivo bytecode do analisador léxico, gerado a partir de `FOOLLexersimple.java`.
  
- **Lexersimpletest.class**: Arquivo bytecode do código de teste, gerado a partir de `Lexersimpletest.java`.

- **Yytoken.class**: Arquivo bytecode que define a classe `Yytoken`, usado para armazenar os tokens reconhecidos.

### Arquivos de Teste

- **simpletest.txt**: Arquivo de entrada com código FOOL para testar o analisador léxico. Contém um pequeno trecho de código com exemplos de identificadores, números, operadores e palavras-chave.

- **resultado-do-teste.txt**: Saída gerada pelo analisador léxico quando executado com o arquivo `simpletest.txt` como entrada. Mostra os tokens reconhecidos e classificados.

## Como Funciona o Projeto

1. O arquivo **FOOLLexersimple.flex** contém a definição das expressões regulares que identificam os diferentes tokens da linguagem FOOL.
2. O **JFlex** usa o arquivo `.flex` para gerar o arquivo **FOOLLexersimple.java**, que implementa o analisador léxico.
3. O arquivo **Lexersimpletest.java** contém um teste simples para validar o funcionamento do analisador léxico. Ele lê o arquivo **simpletest.txt**, processa-o com o analisador léxico e gera a saída com os tokens correspondentes.
4. Os resultados dos testes foram armazenados manualmente em **resultado-do-teste.txt**, onde os tokens são exibidos com seu tipo e valor.

## Como Executar o Projeto

### Pré-requisitos

- **Java Development Kit (JDK)** instalado.
- **JFlex** instalado e configurado para gerar o analisador léxico a partir do arquivo `.flex`.

### Passos para execução

1. **Gerar o analisador léxico:**
   Execute o comando jflex e selecione o arquivo FOOLLexersimple.flex
   Após execute o comando para compilar todos os arquivos: javac FOOLLexersimple.java Yytoken.java Lexersimpletest.java 
   Executar o programa: java -cp . Lexersimpletest
