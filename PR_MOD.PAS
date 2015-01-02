unit PR_mod;
interface
function Prosto(n:Longint):boolean;
var
n,i:integer;
implementation
function Prosto;
begin
for i:=3 to n-1 do
begin
Prosto:=false;
if n mod i=0 then Exit;
inc(i,2);
end;
Prosto:=true;
end;
end.