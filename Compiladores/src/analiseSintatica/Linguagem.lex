package analiseSintatica;

%%
%cup

%class AnalisadorLexico
%type void
%cup

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
APOSTROFO = "`"

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

NEWLINE        = \n
UNICODE_CHAR   = [^\n]
UNICODE_CHAR_DASH   = [^"\""\n\\]
LINETERMINATOR = \r|\n|\r\n
INPUTCHAR = [^\r\n]
WHITESPACE = {LineTerminator} | [ \t\f]

BOOL = (true|false)
INTEIRO = [+-]?[1-9][0-9]*
FLOAT = [+-]?(0|[1-9]*[.])?[0-9]+
ID = [_|a-z|A-Z][a-z|A-Z|0-9|_]*

%%
{SOMA}                         {return symbol(sym.SOMA);}
{SUBTRACAO}                         {return symbol(sym.SUBTRACAO);}
{MULTIPLICACAO}                         {return symbol(sym.MULTIPLICACAO);}
{DIVISAO}                         {return symbol(sym.DIVISAO);}
{RESTO}                         {return symbol(sym.RESTO;}

{IDENTIFICADOR}                     {return symbol(sym.IDENTIFICADOR);}
{AND}                     {return symbol(sym.AND);}
{OR}                     {return symbol(sym.OR);}
{XOR}                     {return symbol(sym.XOR);}
{SHIFT_LEFT}                     {return symbol(sym.SHIFT_LEFT);}
{SHIFT_RIGHT}                     {return symbol(sym.SHIFT_RIGHT);}
{AND_NOT}                     {return symbol(sym.AND_NOT);}

{ATRIBUICAO_SOMA}                     {return symbol(sym.AND_NOT);}
{ATRIBUICAO_SUB}                     {return symbol(sym.AND_NOT);}
{ATRIBUICAO_MULT}                     {return symbol(sym.AND_NOT);}
{ATRIBUICAO_DIV}                     {return symbol(sym.AND_NOT);}
{ATRIBUICAO_RESTO}                     {return symbol(sym.AND_NOT);}

{ATRIBUICAO_AND}                    {return symbol(sym.AND_NOT);}
{ATRIBUICAO_OR}                     {return symbol(sym.AND_NOT);}
{ATRIBUICAO_XOR}                    {return symbol(sym.AND_NOT);}
{ATRIBUICAO_SL}                     {return symbol(sym.AND_NOT);}
{ATRIBUICAO_SR}                     {return symbol(sym.AND_NOT);}
{ATRICUICAO_AND_NOT}                {return symbol(sym.AND_NOT);}

{LAND}                     {return symbol(sym.AND_NOT);}
{LOR}                    {return symbol(sym.AND_NOT);}
{ARROW}                    {return symbol(sym.AND_NOT);}
{INC}                     {return symbol(sym.AND_NOT);}
{DEC}                     {return symbol(sym.AND_NOT);}

{IGUAL}                     {return symbol(sym.AND_NOT);}
{MAIOR_QUE}                     {return symbol(sym.AND_NOT);}
{MENOR_QUE}                     {return symbol(sym.AND_NOT);}
{ATRIBUICAO}                     {return symbol(sym.AND_NOT);}
{NOT}                     {return symbol(sym.AND_NOT);}

{DIFERENTE}                     {return symbol(sym.AND_NOT);}
{MENOR_IGUAL}                    {return symbol(sym.AND_NOT);}
{MAIOR_IGUAL}                     {return symbol(sym.AND_NOT);}
{DEFINE}                    {return symbol(sym.AND_NOT);}
{ELLIPSIS}                    {return symbol(sym.AND_NOT);}

{PARENESQ}                    {return symbol(sym.AND_NOT);}
{PARENDIR}                     {return symbol(sym.AND_NOT);}
{CHAVEESQ}                    {return symbol(sym.AND_NOT);}
{CHAVEDIR}                     {return symbol(sym.AND_NOT);}
{COLCHESQ}                    {return symbol(sym.AND_NOT);}
{COLCHDIR}                     {return symbol(sym.AND_NOT);}
{VIRGULA}                     {return symbol(sym.AND_NOT);}
{PONTO}                     {return symbol(sym.AND_NOT);}
{DOISPONTOS}                     {return symbol(sym.AND_NOT);}
{PONTOVIRGULA}                     {return symbol(sym.AND_NOT);}
{APOSTROFO}                    {return symbol(sym.AND_NOT);}

{BREAK}                    {return symbol(sym.AND_NOT);}
{CASE}                    {return symbol(sym.AND_NOT);}
{CHAN}                    {return symbol(sym.AND_NOT);}
{CONST}                     {return symbol(sym.AND_NOT);}
{CONTINUE}                     {return symbol(sym.AND_NOT);}

{DEFAULT}                    {return symbol(sym.AND_NOT);}
{DEFER}                     {return symbol(sym.AND_NOT);}
{ELSE}                    {return symbol(sym.AND_NOT);}
{FALLTHROUGH}                   {return symbol(sym.AND_NOT);}
{FOR}                    {return symbol(sym.AND_NOT);}

{FUNC}                     {return symbol(sym.AND_NOT);}
{GO}                    {return symbol(sym.AND_NOT);}
{GOTO}                    {return symbol(sym.AND_NOT);}
{IF}                    {return symbol(sym.AND_NOT);}
{IMPORT}                     {return symbol(sym.AND_NOT);}

{INTERFACE}                     {return symbol(sym.AND_NOT);}
{MAP}                     {return symbol(sym.AND_NOT);}
{PACKAGE}                     {return symbol(sym.AND_NOT);}
{RANGE}                     {return symbol(sym.AND_NOT);}
{RETURN}                     {return symbol(sym.AND_NOT);}

{SELECT}                     {return symbol(sym.AND_NOT);}
{STRUCT}                     {return symbol(sym.AND_NOT);}
{SWITCH}                     {return symbol(sym.AND_NOT);}
{TYPE}                     {return symbol(sym.AND_NOT);}
{VAR}                     {return symbol(sym.AND_NOT);}

{TIPOBOOL} = "bool"                     { imprimir("Tipo de variável bool", yytext()); }
{TIPOINT} = "int"                     { imprimir("Tipo de variável int", yytext()); }
{TIPOINT8} = "int8"                     { imprimir("Tipo de variável int 8bits", yytext()); }
{TIPOINT16} = "int16"                     { imprimir("Tipo de variável int 16bits", yytext()); }
{TIPOINT32} = "int32"                     { imprimir("Tipo de variável int 32bits", yytext()); }
{TIPOINT64} = "int64"                     { imprimir("Tipo de variável int 64bits", yytext()); }
{TIPOUINT} = "uint"                     { imprimir("Tipo de variável int não-definido", yytext()); }
{TIPOUINT8} = "uint8"                     { imprimir("Tipo de variável int não-definido de 8bits", yytext()); }
{TIPOUINT16} = "uint16"                     { imprimir("Tipo de variável int não-definido de 16bits", yytext()); }
{TIPOUINT32} = "uint32"                     { imprimir("Tipo de variável int não-definido de 32bits", yytext()); }
{TIPOUINT64} = "uint64"                     { imprimir("Tipo de variável int não-definido de 64bits", yytext()); }
{TIPOUINTPTR} = "uintptr"                     { imprimir("Tipo de variável int ", yytext()); }
{TIPOFLOAT32} = "float32"                     { imprimir("Tipo de variável float 32bits", yytext()); }
{TIPOFLOAT64} = "float64"                     { imprimir("Tipo de variável float 64bits", yytext()); }
{TIPOCOMPLEX64} = "complex64"                     { imprimir("Tipo de variável numero complexo de 64bits", yytext()); }
{TIPOCOMPLEX128} = "complex128"                     { imprimir("Tipo de variável numero complexo de 128bits", yytext()); }
{TIPOSTRING} = "string"                     { imprimir("Tipo de variável string", yytext()); }
{POINTER} = "Pointer"                     { imprimir("Tipo de variável apontador", yytext()); }
{UNTYPEDBOOL} = "untyped bool"                     { imprimir("Tipo de variável untyped bool", yytext()); }
{UNTYPEDINT} = "untyped int"                     { imprimir("Tipo de variável untyped int", yytext()); }
{UNTYPEDRUNE} = "untyped rune"                     { imprimir("Tipo de variável untyped rune", yytext()); }
{UNTYPEDFLOAT} = "untyped float"                     { imprimir("Tipo de variável untyped float", yytext()); }
{UNTYPEDCOMPLEX} = "untyped complex"                     { imprimir("Tipo de variável untyped complex", yytext()); }
{UNTYPEDSTRING} = "untyped string"                     { imprimir("Tipo de variável untyped string", yytext()); }
{UNTYPEDNIL} = "untyped nil"                     { imprimir("Tipo de variável untyped nil", yytext()); }

{FORMATSTRING}  = "%s"                     { imprimir("Forrmato string", yytext()); }
{FORMATINTEGER} = "%d"                     { imprimir("Forrmato inteiro", yytext()); }
{FORMATFLOAT} = "%f"                     { imprimir("Forrmato float", yytext()); }
{FORMATBOOL} = "%t"                     { imprimir("Forrmato boolean", yytext()); }
{FORMATDEFAULT} = "%v"                     { imprimir("Forrmato default", yytext()); }
{FORMATVALOR} = "%#v"                     { imprimir("Forrmato valor", yytext()); }
{FORMATTYPE} = "%T"                     { imprimir("Forrmato tipo generico", yytext()); }
{FORMATPERCENT}  = "%%"                     { imprimir("Forrmato porcento", yytext()); }
{FORMATPOINTER} = "%p"                     { imprimir("Forrmato apontador", yytext()); }
{FORMATUNDEFINED} = "%x"                     { imprimir("Forrmato indefinido", yytext()); }

{INICIOCOMENT} = "/*"                     { imprimir("Inicio do comentario", yytext()); }
{FINALCOMENT} = "*/"                     { imprimir("Final do comentario", yytext()); }
{EOF} = "EOF"                     { imprimir("Palavra reservada EOF var", yytext()); }

{NEWLINE}        = \n
{UNICODE_CHAR}   = [^\n]
{UNICODE_CHAR_DASH}   = [^"\""\n\\]

{INTEIRO}                     { imprimir("Número Inteiro", yytext()); }
{FLOAT}                     { imprimir("Número Float", yytext()); }
{BOOL}                     { imprimir("Valor boolean", yytext()); }
{BRANCO}                     { imprimir("Espaço em branco", yytext()); }
{ID}                          { return symbol(sym.ID, yytext()); }

. { throw new RuntimeException("Caractere inválido " + yytext()); }