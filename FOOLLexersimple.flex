%%
%public
%class FOOLLexersimple
%unicode

// Tokens

LPAREN = "("
RPAREN = ")"
LBRACE = "{"
RBRACE = "}"
COMMA = ","
SEMICOLON = ";"
ASSIGN = "="
PLUS = "+"
TIMES = "*"
EQ = "=="
LT = "<"
GT = ">"
ID = [a-zA-Z_][a-zA-Z0-9_]*
NUMBER = [0-9]+
BOOL = "bool"
VOID = "void"
IF = "if"
ELSE = "else"
RETURN = "return"
TRUE = "true"
FALSE = "false"
NOT = "not"
AND = "and"
OR = "or"
WS = [ \t\r\n]+


%%

// Regras de reconhecimento de tokens
{LPAREN}   { return new Yytoken("LPAREN", "("); }
{RPAREN}   { return new Yytoken("RPAREN", ")"); }
{LBRACE}   { return new Yytoken("LBRACE", "{"); }
{RBRACE}   { return new Yytoken("RBRACE", "}"); }
{COMMA}    { return new Yytoken("COMMA", ","); }
{SEMICOLON} { return new Yytoken("SEMICOLON", ";"); }
{ASSIGN}   { return new Yytoken("ASSIGN", "="); }
{PLUS}     { return new Yytoken("PLUS", "+"); }
{TIMES}    { return new Yytoken("TIMES", "*"); }
{EQ}       { return new Yytoken("EQ", "=="); }
{LT}       { return new Yytoken("LT", "<"); }
{GT}       { return new Yytoken("GT", ">"); }
{NUMBER}   { return new Yytoken("NUMBER", yytext()); }
{ID}       { return new Yytoken("ID", yytext()); }
{BOOL}     { return new Yytoken("BOOL", "bool"); }
{VOID}     { return new Yytoken("VOID", "void"); }
{IF}       { return new Yytoken("IF", "if"); }
{ELSE}     { return new Yytoken("ELSE", "else"); }
{RETURN}   { return new Yytoken("RETURN", "return"); }
{TRUE}     { return new Yytoken("TRUE", "true"); }
{FALSE}    { return new Yytoken("FALSE", "false"); }
{NOT}      { return new Yytoken("NOT", "not"); }
{AND}      { return new Yytoken("AND", "and"); }
{OR}       { return new Yytoken("OR", "or"); }
{WS}       { /* Ignorar espaços em branco */ }


.           { return new Yytoken("INVALID", yytext()); }
