program armin_token.aleo;

record ArminToken:
    owner as address.private;
    amount as u64.private;


function main:
    input r0 as u64.private;
    cast self.caller r0 into r1 as ArminToken.record;
    output r1 as ArminToken.record;


function transfer:
    input r0 as ArminToken.record;
    input r1 as address.private;
    input r2 as u64.private;
    sub r0.amount r2 into r3;
    cast r0.owner r3 into r4 as ArminToken.record;
    cast r1 r2 into r5 as ArminToken.record;
    output r4 as ArminToken.record;
    output r5 as ArminToken.record;


function balance_of:
    input r0 as ArminToken.record;
    output r0.amount as u64.private;
