
# Portugol Lexer/Parser

A lexer/parser to portugol programming language.

## []()Getting Started

### []()Prerequisites

 - Java
 - Antlr4

### []()Generating tokens

Run the command:

```console
make generate
```

### []()Running the lexer

Run the command:

```console
make lexer
```

## []()Clear

Run the command:

```console
make clean
```

# [PT-BR] Especificações - Portugol

### Saída do lexer:

  - lista de tokens
 - tipo - valor (atributo)
 - um comando por linha
 - rotinas apenas para entrada e saída
 - não distingue maiúsculas de minúsculas

### Tipos de dados

 - inteiro
 - real
 - caractere
 - logico (VERDADEIRO/FALSO)

### Nome de variáveis e sua declaração

 - deve começar por letra e depois pode ter letras, números ou underline
 - não pode haver duas variáveis com o mesmo nome
 - a seção de variáveis começa com a palavra-chave: var

Exemplo:

```
var a: inteiro
	valor1, valor2: real
	nome_do_aluno: caractere
	sinalizador: logico
```

### Constantes e comandos de atribuição

 - numericos
 - caracteres
 - logico

### Atribuição

    <variavel> <- <valor>

Exemplo:

```
a <- 3
valor1 <- 1.5
valor2 <- valor1 + a
nome_do_aluno <- "Ana Paula"
sinalizador <- VERDADEIRO
```

### Operadores Aritméticos

 - +, - : operador unário (-3, +x)
 - \ : divisão inteira
 - +, -, *, / : (operadores aritméticos)
 - MOD, % : resto
 - ^ : potenciação com associatividade à direita

### Operadores de Caracteres

  - \+ : concatenação de strings

### Operadores Relacionais

 - =, <, >, <=, >=: igual, menor que, maior que, menor ou igual que, maior ou igual que
 - <> : diferente

> sem diferença: "ABC" = "abc" VERDADEIRO

> lógicos obedecem a ordem: FALSO < VERDADEIRO

### Operadores Lógicos

 - nao : not
 - ou : or
 - e : and

### Comando de Saída de Dados

```
escreva(<lista-de-expressões>)
```

### Comando de Entrada de Dados

```
leia(<lista-de-expressões>)
```

### Comando de Desvio Condicional

```
se <expressão-lógica> entao
	<sequência-de-comandos-1>
senao
	<sequência-de-comandos-2>
fimse
```

### Comando de Repetição

```
enquanto <expressão-lógica> faca
	<sequência-de-comandos>
fimenquanto
```

### Funções

```
funcao <nome-da-função>[<sequência-de-parâmetros-separada-por-vírgula>]: <tipo-de-dado>
// Seção de declaração interna
inicio
// Seção de comandos
fimfuncao
```

> função sem retorno: void

> parâmetros de tipos diferentes separa-se por ponto e vírgula (;)

> espaços em branco são ignorados

> strings ocupam apenas uma linha
