lexer grammar PortugolLexer;

fragment A
   : ('a' | 'A')
   ;

fragment B
   : ('b' | 'B')
   ;

fragment C
   : ('c' | 'C')
   ;

fragment D
   : ('d' | 'D')
   ;

fragment E
   : ('e' | 'E')
   ;

fragment F
   : ('f' | 'F')
   ;

fragment G
   : ('g' | 'G')
   ;

fragment H
   : ('h' | 'H')
   ;

fragment I
   : ('i' | 'I')
   ;

fragment J
   : ('j' | 'J')
   ;

fragment K
   : ('k' | 'K')
   ;

fragment L
   : ('l' | 'L')
   ;

fragment M
   : ('m' | 'M')
   ;

fragment N
   : ('n' | 'N')
   ;

fragment O
   : ('o' | 'O')
   ;

fragment P
   : ('p' | 'P')
   ;

fragment Q
   : ('q' | 'Q')
   ;

fragment R
   : ('r' | 'R')
   ;

fragment S
   : ('s' | 'S')
   ;

fragment T
   : ('t' | 'T')
   ;

fragment U
   : ('u' | 'U')
   ;

fragment V
   : ('v' | 'V')
   ;

fragment W
   : ('w' | 'W')
   ;

fragment X
   : ('x' | 'X')
   ;

fragment Y
   : ('y' | 'Y')
   ;

fragment Z
   : ('z' | 'Z')
   ;

ALGORITMO
   : A L G O R I T M O
   ;

INICIO
   : I N I C I O
   ;

FIMALGORITMO
   : F I M A L G O R I T M O
   ;

INTEIRO
   : I N T E I R O
   ;

REAL
   : R E A L
   ;

CARACTERE
   : C A R A C T E R E
   ;

LOGICO
   : L O G I C O
   ;

VERDADEIRO
   : V E R D A D E I R O
   ;

FALSO
   : F A L S O
   ;

CONST
   : C O N S T
   ;

VAR
   : V A R
   ;

DOUBLEASPAS
   : '"'
   ;

PLUS
   : '+'
   ;

MINUS
   : '-'
   ;

STAR
   : '*'
   ;

SLASH
   : '/'
   ;

ASSIGN
   : '<-'
   ;

COMMA
   : ','
   ;

SEMI
   : ';'
   ;

COLON
   : ':'
   ;

EQUAL
   : '='
   ;

NOT_EQUAL
   : '<>'
   ;

LT
   : '<'
   ;

LE
   : '<='
   ;

GE
   : '>='
   ;

GT
   : '>'
   ;

LPAREN
   : '('
   ;

RPAREN
   : ')'
   ;

POINTER
   : '^'
   ;

DOT
   : '.'
   ;

MOD_1
   : '%'
   ;

MOD_2
   : M O D
   ;

NOT
   : N A O
   ;

OR
   : O U
   ;

AND
   : E
   ;

PRINT
   : E S C R E V A
   ;

INPUT
   : L E I A
   ;

SE
   : S E
   ;

ENTAO
   : E N T A O
   ;

SENAO
   : S E N A O
   ;

FIMSE
   : F I M S E
   ;

ENQUANTO
   : E N Q U A N T O
   ;

FACA
   : F A C A
   ;

FIMENQUANTO
   : F I M E N Q U A N T O
   ;

FUNCTION
   : F U N C A O
   ;

FIMFUNCAO
   : F I M F U N C A O
   ;

WS
   : [ \t\r\n] -> skip
   ;

COMMENT
   : '//' ~[\r\n]*
     -> skip
   ;

IDENT
   : ('a' .. 'z' | 'A' .. 'Z') ('a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_')*
   ;

STRING_LITERAL
   : '\'' ('\'\'' | ~ ('\''))* '\''
   ;

NUM_INT
   : ('0' .. '9') +
   ;

NUM_REAL
   : ('0' .. '9') + (('.' ('0' .. '9') + (EXPONENT)?)? | EXPONENT)
   ;

fragment EXPONENT
   : ('0' .. '9') ('^') ('+' | '-')? ('0' .. '9') +
   ;
