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

{ATRIBUICAO_SOMA}                     {return symbol(sym.ATRIBUICAO_SOMA);}
{ATRIBUICAO_SUB}                     {return symbol(sym.ATRIBUICAO_SUB);}
{ATRIBUICAO_MULT}                     {return symbol(sym.ATRIBUICAO_MULT);}
{ATRIBUICAO_DIV}                     {return symbol(sym.ATRIBUICAO_DIV);}
{ATRIBUICAO_RESTO}                     {return symbol(sym.ATRIBUICAO_RESTO);}

{ATRIBUICAO_AND}                    {return symbol(sym.ATRIBUICAO_AND);}
{ATRIBUICAO_OR}                     {return symbol(sym.ATRIBUICAO_OR);}
{ATRIBUICAO_XOR}                    {return symbol(sym.AND_NOT);}
{ATRIBUICAO_SL}                     {return symbol(sym.ATRIBUICAO_XOR);}
{ATRIBUICAO_SR}                     {return symbol(sym.ATRIBUICAO_SR);}
{ATRICUICAO_AND_NOT}                {return symbol(sym.ATRICUICAO_AND_NOT);}

{LAND}                     {return symbol(sym.LAND);}
{LOR}                    {return symbol(sym.LOR);}
{ARROW}                    {return symbol(sym.ARROW);}
{INC}                     {return symbol(sym.INC);}
{DEC}                     {return symbol(sym.DEC);}

{IGUAL}                     {return symbol(sym.IGUAL);}
{MAIOR_QUE}                     {return symbol(sym.MAIOR_QUE);}
{MENOR_QUE}                     {return symbol(sym.MENOR_QUE);}
{ATRIBUICAO}                     {return symbol(sym.ATRIBUICAO);}
{NOT}                     {return symbol(sym.NOT);}

{DIFERENTE}                     {return symbol(sym.DIFERENTE);}
{MENOR_IGUAL}                    {return symbol(sym.MENOR_IGUAL);}
{MAIOR_IGUAL}                     {return symbol(sym.MAIOR_IGUAL);}
{DEFINE}                    {return symbol(sym.DEFINE);}
{ELLIPSIS}                    {return symbol(sym.ELLIPSIS);}

{PARENESQ}                    {return symbol(sym.PARENESQ);}
{PARENDIR}                     {return symbol(sym.PARENDIR);}
{CHAVEESQ}                    {return symbol(sym.CHAVEESQ);}
{CHAVEDIR}                     {return symbol(sym.CHAVEDIR);}
{COLCHESQ}                    {return symbol(sym.COLCHESQ);}
{COLCHDIR}                     {return symbol(sym.COLCHDIR);}
{VIRGULA}                     {return symbol(sym.VIRGULA);}
{PONTO}                     {return symbol(sym.PONTO);}
{DOISPONTOS}                     {return symbol(sym.DOISPONTOS);}
{PONTOVIRGULA}                     {return symbol(sym.PONTOVIRGULA);}
{APOSTROFO}                    {return symbol(sym.APOSTROFO);}

{BREAK}                    {return symbol(sym.BREAK);}
{CASE}                    {return symbol(sym.CASE);}
{CHAN}                    {return symbol(sym.CHAN);}
{CONST}                     {return symbol(sym.CONST);}
{CONTINUE}                     {return symbol(sym.CONTINUE);}

{DEFAULT}                    {return symbol(sym.DEFAULT);}
{DEFER}                     {return symbol(sym.DEFER);}
{ELSE}                    {return symbol(sym.ELSE);}
{FALLTHROUGH}                   {return symbol(sym.FALLTHROUGH);}
{FOR}                    {return symbol(sym.FOR);}

{FUNC}                     {return symbol(sym.FUNC);}
{GO}                    {return symbol(sym.GO);}
{GOTO}                    {return symbol(sym.GOTO);}
{IF}                    {return symbol(sym.IF);}
{IMPORT}                     {return symbol(sym.IMPORT);}

{INTERFACE}                     {return symbol(sym.INTERFACE);}
{MAP}                     {return symbol(sym.MAP);}
{PACKAGE}                     {return symbol(sym.PACKAGE);}
{RANGE}                     {return symbol(sym.RANGE);}
{RETURN}                     {return symbol(sym.RETURN);}

{SELECT}                     {return symbol(sym.SELECT);}
{STRUCT}                     {return symbol(sym.STRUCT);}
{SWITCH}                     {return symbol(sym.SWITCH);}
{TYPE}                     {return symbol(sym.TYPE);}
{VAR}                     {return symbol(sym.VAR);}

{TIPOBOOL}                   {return symbol(sym.TIPOBOOL);}
{TIPOINT}                     {return symbol(sym.TIPOINT);}
{TIPOINT8}                     {return symbol(sym.TIPOINT8);}
{TIPOINT16}                     {return symbol(sym.TIPOINT16);}
{TIPOINT32}                  {return symbol(sym.TIPOINT32);}
{TIPOINT64}                  {return symbol(sym.TIPOINT64);}
{TIPOUINT}                   {return symbol(sym.TIPOUINT);}
{TIPOUINT8}                    {return symbol(sym.TIPOUINT8);}
{TIPOUINT16}              {return symbol(sym.TIPOUINT16);}
{TIPOUINT32}                    {return symbol(sym.TIPOUINT32);}
{TIPOUINT64}                {return symbol(sym.TIPOUINT64);}
{TIPOUINTPTR}                    {return symbol(sym.TIPOUINTPTR);}
{TIPOFLOAT32}                 {return symbol(sym.FLOAT32);}
{TIPOFLOAT64}                      {return symbol(sym.FLOAT64);}
{TIPOCOMPLEX64}                     {return symbol(sym.COMPLEX64);}
{TIPOCOMPLEX128}                    {return symbol(sym.COMPLEX128);}
{TIPOSTRING}                  {return symbol(sym.TIPOSTRING);}
{POINTER}                    {return symbol(sym.POINTER);}
{UNTYPEDBOOL}                   {return symbol(sym.UNTYPEDBOOL);}
{UNTYPEDINT}                   {return symbol(sym.UNTYPEDINTT);}
{UNTYPEDRUNE}                     {return symbol(sym.UNTYPEDRUNE);}
{UNTYPEDFLOAT}                  {return symbol(sym.UNTYPEDFLOAT);}
{UNTYPEDCOMPLEX}                   {return symbol(sym.UNTYPEDCOMPLEX);}
{UNTYPEDSTRING}                   {return symbol(sym.UNTYPEDSTRING);}
{UNTYPEDNIL}                  {return symbol(sym.UNTYPEDNIL);}

{FORMATSTRING}                    {return symbol(sym.FORMATSTRING);}
{FORMATINTEGER}                    {return symbol(sym.FORMATINTEGER);}
{FORMATFLOAT}                  {return symbol(sym.FORMATFLOAT);}
{FORMATBOOL}                   {return symbol(sym.FORMATBOOL);}
{FORMATDEFAULT}                 {return symbol(sym.FORMATDEFAULT);}
{FORMATVALOR}                    {return symbol(sym.FORMATVALOR);}
{FORMATTYPE}                  {return symbol(sym.FORMATTYPE);}
{FORMATPERCENT}                    {return symbol(sym.FORMATPERCENT);}
{FORMATPOINTER}                   {return symbol(sym.FORMATPOINTER);}
{FORMATUNDEFINED}                     {return symbol(sym.FORMATUNDEFINED);}

{INICIOCOMENT}                    {return symbol(sym.INICIOCOMENT);}
{FINALCOMENT}                  {return symbol(sym.FINALCOMENT);}
{EOF}                  {return symbol(sym.EOF);}

{NEWLINE}       				{return symbol(sym.NEWLINE);}
{UNICODE_CHAR}  				{return symbol(sym.UNICODE_CHAR);}
{UNICODE_CHAR_DASH}   	{return symbol(sym.UNICODE_CHAR_DASH);}

{INTEIRO}                     {return symbol(sym.INTEIRO);}
{FLOAT}                    {return symbol(sym.FLOAT);}
{BOOL}                     {return symbol(sym.BOOL);}
{BRANCO}                     {return symbol(sym.BRANCO);}
{ID}                          {return symbol(sym.ID);}

. { throw new RuntimeException("Caractere inválido " + yytext()); }