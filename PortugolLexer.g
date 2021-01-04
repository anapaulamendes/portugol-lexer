lexer grammar PortugolLexer;

program
   : programHeading block
   ;


programHeading
   : ALGORITMO string
   ;


identifier
   : IDENT
   ;


block
   : (constantDefinitionPart | variableDeclarationPart)* compoundStatement
   ;


compoundStatement
   : INICIO (procedureAndFunctionDeclarationPart | IMPLEMENTATION)* FIMALGORITMO
   ;


constantDefinitionPart
   : CONST (identifier)*
   ;


bool
   : VERDADEIRO
   | FALSO
   ;


typeIdentifier
   : identifier
   | (INTEIRO | REAL | CARACTERE | LOGICO)
   ;


variableDeclarationPart
   : VAR (variableDeclaration)*
   ;


variableDeclaration
   : identifierList COLON type
   ;


procedureAndFunctionDeclarationPart
   : procedureOrFunctionDeclaration
   ;


procedureOrFunctionDeclaration
   : procedureDeclaration
   | functionDeclaration
   ;


procedureDeclaration
   : FUNCAO identifier (formalParameterList)? block
   ;


formalParameterList
   : LPAREN (formalParameterSection)* RPAREN
   ;


formalParameterSection
   : parameterGroup
   ;


parameterGroup
   : identifierList COLON typeIdentifier
   ;


identifierList
   : identifier (COMMA identifier)*
   ;


constList
   : constant (COMMA constant)*
   ;


functionDeclaration
   : FUNCTION identifier (formalParameterList)? COLON resultType SEMI block
   ;


resultType
   : typeIdentifier
   ;


statements
   : statement *
   ;


conditionalStatement
   : ifStatement
   ;


ifStatement
   : SE expression ENTAO statement (: SENAO statement)? FIMSE
   ;


repetetiveStatement
   : whileStatement
   ;


whileStatement
   : ENQUANTO expression FACA statement FIMENQUANTO
   ;


statement
   : simpleStatement
   ;


simpleStatement
   : assignmentStatement
   | procedureStatement
   ;


procedureStatement
   : identifier (LPAREN parameterList RPAREN)?
   ;


parameterList
   : actualParameter (COMMA actualParameter)*
   ;


actualParameter
   : expression parameterwidth*
   ;


parameterwidth
   : ':' expression
   ;


assignmentStatement
   : variable ASSIGN expression
   ;


variable
   : (AT identifier | identifier) (LBRACK expression (COMMA expression)* RBRACK | LBRACK2 expression (COMMA expression)* RBRACK2 | DOT identifier | POINTER)*
   ;


expression
   : simpleExpression (relationaloperator expression)?
   ;

relationaloperator
   : EQUAL
   | NOT_EQUAL
   | LT
   | LE
   | GE
   | GT
   ;

simpleExpression
   : term (additiveoperator simpleExpression)?
   ;


additiveoperator
   : PLUS
   | MINUS
   ;


term
   : signedFactor (multiplicativeoperator term)?
   ;


multiplicativeoperator
   : STAR
   | SLASH
   ;


signedFactor
   : (PLUS | MINUS)? factor
   ;


factor
   : variable
   | LPAREN expression RPAREN
   | unsignedConstant
   | NOT factor
   | bool
   ;


unsignedConstant
   : unsignedNumber
   | string
   ;


unsignedNumber
   : unsignedInteger
   | unsignedReal
   ;


unsignedInteger
   : NUM_INT
   ;


unsignedReal
   : NUM_REAL
   ;


string
   : STRING_LITERAL
   ;


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
   : '""'
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


NAO
   : N A O
   ;


OU
   : O U
   ;


E
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


INICIO
   : I N I C I O
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
