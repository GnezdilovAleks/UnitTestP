unit testunit_prosto_1f;

interface

uses TestFramework,PR_mod;

implementation

type
  TUnit1Test = class(TTestcase)
  published
    procedure testASureError; virtual;
    procedure TestProsto;
  end;

function Prosto(n:longint):boolean;
var n,i:integer;z:boolean;ch:text;
begin
  assign(ch,'prosto2.dat');
  reset(ch);
  if NOT EOF(ch) then begin
  readln(ch,n);
  z:=pr_mod.Prosto(n);

  procedure TUnit1Test.testASureError;
begin
  AssertEquals(false,z);
end;

procedure TUnit1Test.TestProsto;
begin
  AssertEquals(true,z);
end;
end;
end;

initialization
  // One possible way to register a test
  TestFramework.registerTest('', TUnit1test.Suite);
end.

