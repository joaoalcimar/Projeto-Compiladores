package analiseLexica;

%%

%{

private void imprimir(String descricao, String lexema) {
    System.out.println(lexema + " - " + descricao);
}

%}

%class AnalisadorLexico
%type void

SOMA = "+"
SUBTRACAO = "-"
MULTIPLICACAO = "*"
DIVISAO = "/"
RESTO = "%"

IDENTIFICADOR = "main"
AND = "&"
OR = "|"
XOR = "^"
SHIFT_LEFT = "<<"
SHIFT_RIGHT = ">>"
AND_NOT = "&^"

ATRIBUICAO_SOMA = "+="
ATRIBUICAO_SUB = "-="
ATRIBUICAO_MULT = "*="
ATRIBUICAO_DIV = "/="
ATRIBUICAO_RESTO = "%="

ATRIBUICAO_AND = "&="
ATRIBUICAO_OR = "|="
ATRIBUICAO_XOR = "^="
ATRIBUICAO_SL = "<<="
ATRIBUICAO_SR = ">>="
ATRICUICAO_AND_NOT = "&^="

LAND = "&&"
LOR = "||"
ARROW = "<-"
INC = "++"
DEC = "--"

IGUAL = "=="
MAIOR_QUE = ">"
MENOR_QUE = "<"
ATRIBUICAO = "="
NOT = "!"

DIFERENTE = "!="
MENOR_IGUAL = "<="
MAIOR_IGUAL = ">="
DEFINE = ":="
ELLIPSIS = "..."

PARENESQ = "("
PARENDIR = ")"
CHAVEESQ = "["
CHAVEDIR = "]"
COLCHESQ = "{"
COLCHDIR = "}"
VIRGULA = ","
PONTO = "."
DOISPONTOS = ":"
PONTOVIRGULA = ";"

BREAK = "break"
CASE = "case"
CHAN = "chan"
CONST = "const"
CONTINUE = "continue"

DEFAULT = "default"
DEFER = "defer"
ELSE = "else"
FALLTHROUGH = "fallthrough"
FOR = "for"

FUNC = "func"
GO = "go"
GOTO = "goto"
IF = "if"
IMPORT = "import"

INTERFACE = "interface"
MAP = "map"
PACKAGE = "package"
RANGE = "range"
RETURN = "return"

SELECT = "select"
STRUCT = "struct"
SWITCH = "switch"
TYPE = "type"
VAR = "var"

TIPOBOOL = "bool"
TIPOINT = "int"
TIPOINT8 = "int8"
TIPOINT16 = "int16"
TIPOINT32 = "int32"
TIPOINT64 = "int64"
TIPOUINT = "uint"
TIPOUINT8 = "uint8"
TIPOUINT16 = "uint16"
TIPOUINT32 = "uint32"
TIPOUINT64 = "uint64"
TIPOUINTPTR = "uintptr"
TIPOFLOAT32 = "float32"
TIPOFLOAT64 = "float64"
TIPOCOMPLEX64 = "complex64"
TIPOCOMPLEX128 = "complex128"
TIPOSTRING = "string"
POINTER = "Pointer"
UNTYPEDBOOL = "untyped bool"
UNTYPEDINT = "untyped int"
UNTYPEDRUNE = "untyped rune"
UNTYPEDFLOAT = "untyped float"
UNTYPEDCOMPLEX = "untyped complex"
UNTYPEDSTRING = "untyped string"
UNTYPEDNIL = "untyped nil"

FORMATSTRING  = "%s"
FORMATINTEGER = "%d"
FORMATFLOAT = "%f"
FORMATBOOL = "%t"
FORMATDEFAULT = "%v"
FORMATVALOR = "%#v"
FORMATTYPE = "%T"
FORMATPERCENT  = "%%"
FORMATPOINTER = "%p"
FORMATUNDEFINED = "%x"

INICIOCOMENT = "/*"
FINALCOMENT = "*/"
EOF = "EOF"

BRANCO = [\n| |\t|\r]
BOOL = (true|false)
COMPLEX = ([-+]?\d+\.?\d*|[-+]?\d*\.?\d+)\s*\+\s*([-+]?\d+\.?\d*|[-+]?\d*\.?\d+)i
INTEIRO = [+-]?[1-9][0-9]*
FLOAT = [+-]?(0|[1-9]*[.])?[0-9]+
ID = [_|a-z|A-Z][a-z|A-Z|0-9|_]*

%%
{SOMA}                         { imprimir("Operador de soma", yytext()); }
{SUBTRACAO}                         { imprimir("Operador de subtracao", yytext()); }
{MULTIPLICACAO}                         { imprimir("Operador de multiplicacao", yytext()); }
{DIVISAO}                         { imprimir("Operador de divisao", yytext()); }
{RESTO}                         { imprimir("Operador de resto", yytext()); }

{IDENTIFICADOR}                     { imprimir("Identificador de main", yytext()); }
{AND}                     { imprimir("Operador and", yytext()); }
{OR}                     { imprimir("Operador or", yytext()); }
{XOR}                     { imprimir("Operador xor", yytext()); }
{SHIFT_LEFT}                     { imprimir("Operador shift left", yytext()); }
{SHIFT_RIGHT}                     { imprimir("Operador shift right", yytext()); }
{AND_NOT}                     { imprimir("Operador and not", yytext()); }

{ATRIBUICAO_SOMA}                     { imprimir("Atribuicao de soma", yytext()); }
{ATRIBUICAO_SUB}                     { imprimir("Atribuicao de subtracao", yytext()); }
{ATRIBUICAO_MULT}                     { imprimir("Atribuicao de multiplicacao", yytext()); }
{ATRIBUICAO_DIV}                     { imprimir("Atribuicao de divisao", yytext()); }
{ATRIBUICAO_RESTO}                     { imprimir("Atribuicao de resto", yytext()); }

{ATRIBUICAO_AND}                     { imprimir("Atribuicao de and", yytext()); }
{ATRIBUICAO_OR}                     { imprimir("Atribuicao de or", yytext()); }
{ATRIBUICAO_XOR}                     { imprimir("Atribuicao de xor", yytext()); }
{ATRIBUICAO_SL}                     { imprimir("Atribuicao de sl", yytext()); }
{ATRIBUICAO_SR}                     { imprimir("Atribuicao de sr", yytext()); }
{ATRICUICAO_AND_NOT}                     { imprimir("Atribuicao de and not", yytext()); }

{LAND}                     { imprimir("Opeerador land", yytext()); }
{LOR}                     { imprimir("Operador lor", yytext()); }
{ARROW}                     { imprimir("Operador arrow", yytext()); }
{INC}                     { imprimir("Operador de incremento", yytext()); }
{DEC}                     { imprimir("Operador de decremento", yytext()); }

{IGUAL}                     { imprimir("Operador de igualdade", yytext()); }
{MAIOR_QUE}                     { imprimir("Operador de maior que", yytext()); }
{MENOR_QUE}                     { imprimir("Operador de menor que", yytext()); }
{ATRIBUICAO}                     { imprimir("Operador de atribuicao", yytext()); }
{NOT}                     { imprimir("Operador de negacao", yytext()); }

{DIFERENTE}                     { imprimir("Operador de diferente", yytext()); }
{MENOR_IGUAL}                     { imprimir("Operador de menor igual", yytext()); }
{MAIOR_IGUAL}                     { imprimir("Operador de maior igual", yytext()); }
{DEFINE}                     { imprimir("Operador de define", yytext()); }
{ELLIPSIS}                     { imprimir("Operador de elipse", yytext()); }

{PARENESQ}                     { imprimir("Caractere parentese esquerdo", yytext()); }
{PARENDIR}                     { imprimir("Caractere parentese direito", yytext()); }
{CHAVEESQ}                     { imprimir("Caractere chave esquerda", yytext()); }
{CHAVEDIR}                     { imprimir("Caractere chave direita", yytext()); }
{COLCHESQ}                     { imprimir("Caractere colchete esquerdo", yytext()); }
{COLCHDIR}                     { imprimir("Caractere colchete direito", yytext()); }
{VIRGULA}                     { imprimir("Caractere virgula", yytext()); }
{PONTO}                     { imprimir("Caractere ponto", yytext()); }
{DOISPONTOS}                     { imprimir("Caractere dois pontos", yytext()); }
{PONTOVIRGULA}                     { imprimir("Caractere ponto e virgula", yytext()); }

{BREAK}                     { imprimir("Palavra reservada break", yytext()); }
{CASE}                     { imprimir("Palavra reservada case", yytext()); }
{CHAN}                     { imprimir("Palavra reservada chan", yytext()); }
{CONST}                     { imprimir("Palavra reservada const", yytext()); }
{CONTINUE}                     { imprimir("Palavra reservada continue", yytext()); }

{DEFAULT}                     { imprimir("Palavra reservada default", yytext()); }
{DEFER}                     { imprimir("Palavra reservada defer", yytext()); }
{ELSE}                     { imprimir("Palavra reservada else", yytext()); }
{FALLTHROUGH}                     { imprimir("Palavra reservada fallthrough", yytext()); }
{FOR}                     { imprimir("Palavra reservada for", yytext()); }

{FUNC}                     { imprimir("Palavra reservada func", yytext()); }
{GO}                     { imprimir("Palavra reservada go", yytext()); }
{GOTO}                     { imprimir("Palavra reservada goto", yytext()); }
{IF}                     { imprimir("Palavra reservada if", yytext()); }
{IMPORT}                     { imprimir("Palavra reservada import", yytext()); }

{INTERFACE}                     { imprimir("Palavra reservada interface", yytext()); }
{MAP}                     { imprimir("Palavra reservada map", yytext()); }
{PACKAGE}                     { imprimir("Palavra reservada package", yytext()); }
{RANGE}                     { imprimir("Palavra reservada range", yytext()); }
{RETURN}                     { imprimir("Palavra reservada return", yytext()); }

{SELECT}                     { imprimir("Palavra reservada select", yytext()); }
{STRUCT}                     { imprimir("Palavra reservada struct", yytext()); }
{SWITCH}                     { imprimir("Palavra reservada switch", yytext()); }
{TYPE}                     { imprimir("Palavra reservada type", yytext()); }
{VAR}                     { imprimir("Palavra reservada var", yytext()); }

{TIPOBOOL} = "bool"
{TIPOINT} = "int"
{TIPOINT8} = "int8"
{TIPOINT16} = "int16"
{TIPOINT32} = "int32"
{TIPOINT64} = "int64"
{TIPOUINT} = "uint"
{TIPOUINT8} = "uint8"
{TIPOUINT16} = "uint16"
{TIPOUINT32} = "uint32"
{TIPOUINT64} = "uint64"
{TIPOUINTPTR} = "uintptr"
{TIPOFLOAT32} = "float32"
{TIPOFLOAT64} = "float64"
{TIPOCOMPLEX64} = "complex64"
{TIPOCOMPLEX128} = "complex128"
{TIPOSTRING} = "string"
{POINTER} = "Pointer"
{UNTYPEDBOOL} = "untyped bool"
{UNTYPEDINT} = "untyped int"
{UNTYPEDRUNE} = "untyped rune"
{UNTYPEDFLOAT} = "untyped float"
{UNTYPEDCOMPLEX} = "untyped complex"
{UNTYPEDSTRING} = "untyped string"
{UNTYPEDNIL} = "untyped nil"

{FORMATSTRING}  = "%s"
{FORMATINTEGER} = "%d"
{FORMATFLOAT} = "%f"
{FORMATBOOL} = "%t"
{FORMATDEFAULT} = "%v"
{FORMATVALOR} = "%#v"
{FORMATTYPE} = "%T"
{FORMATPERCENT}  = "%%"
{FORMATPOINTER} = "%p"
{FORMATUNDEFINED} = "%x"

{INICIOCOMENT} = "/*"
{FINALCOMENT} = "*/"
{EOF} = "EOF"

{COMPLEX}                     { imprimir("Número Complexo", yytext()); }
{INTEIRO}                     { imprimir("Número Inteiro", yytext()); }
{FLOAT}                     { imprimir("Número Float", yytext()); }
{BOOL}                     { imprimir("Valor boolean", yytext()); }
{BRANCO}                     { imprimir("Espaço em branco", yytext()); }
{ID}                         { imprimir("Identificador", yytext()); }

. { throw new RuntimeException("Caractere inválido " + yytext()); }