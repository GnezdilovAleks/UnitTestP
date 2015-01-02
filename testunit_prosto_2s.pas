unit testunit_prosto_2s;

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
var n,i:integer;z:boolean;
begin
  n:=22
  z:=pr_mod.Prosto(n);
end;

procedure TUnit1Test.testASureError;
begin
  AssertEquals(true,z);
end;

procedure TUnit1Test.TestProsto;
begin
  AssertEquals(fals,z);
end;

initialization
  // One possible way to register a test
  TestFramework.registerTest('', TUnit1test.Suite);
end.

