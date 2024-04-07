grammar Query;


expr: expr CONDITION expr

    | KEY RELATION VALUE
    | PARENS_LEFT expr PARENS_RIGHT
    ;

PARENS_LEFT: '(';
PARENS_RIGHT: ')';
CONDITION: AND|OR;
AND: '&&';
OR: '||';
RELATION: TERM|NOT_TERM;
TERM: '=';
NOT_TERM: '!=';
KEY: [a-zA-Z0-9_. \n\t\r]+;
VALUE: ('N'? (WS)? '"'(~'"' | '""')+'"'(WS)?);
WS: [ \t]+;
