unit testunit_prosto_3;

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
  n:=103
  z:=pr_mod.Prosto(n);
end;

procedure TUnit1Test.testASureError;
begin
  AssertEquals(false,z);
end;

procedure TUnit1Test.TestProsto;
begin
  AssertEquals(true,z);
end;

initialization
  // One possible way to register a test
  TestFramework.registerTest('', TUnit1test.Suite);
end.

