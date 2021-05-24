%{
%}

%%
\/\/(.*)            {};     //Single line comment
\/\*(.*\n)*.*\*\/   {};     //Multi line comment
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}