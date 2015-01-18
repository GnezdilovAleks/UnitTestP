unit TestCase1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry,PR_mod;

type

  TTestCase1= class(TTestCase)

  protected
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure Test1;
    procedure Test2;
    procedure Test3;
    procedure Test4;
    procedure Test5;
    procedure Test6;
  end;

 var n,i:integer;z:boolean;

implementation

procedure TTestCase1.SetUp;
begin

end;

procedure TTestCase1.TearDown;
begin

end;

procedure TTestCase1.Test1;
begin
  n:=3;
  z:=PR_mod.Prosto(n);
  AssertEquals(true,z);
end;

procedure TTestCase1.Test2;
begin
  n:=11;
  z:=PR_mod.Prosto(n);
  AssertEquals(true,z);
end;

procedure TTestCase1.Test3;
begin
  n:=113;
  z:=PR_mod.Prosto(n);
  AssertEquals(true,z);
end;

procedure TTestCase1.Test4;
begin
  n:=6;
  z:=PR_mod.Prosto(n);
  AssertEquals(false,z);
end;

procedure TTestCase1.Test5;
begin
  n:=12;
  z:=PR_mod.Prosto(n);
  AssertEquals(false,z);
end;

procedure TTestCase1.Test6;
begin
  n:=222;
  z:=PR_mod.Prosto(n);
  AssertEquals(false,z);
end;

initialization

  RegisterTest(TTestCase1);
end.

