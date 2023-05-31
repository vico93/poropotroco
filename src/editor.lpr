program editor;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, u_principal, u_novo_projeto, u_comum;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:='Poropotroco';
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(Tf_principal, f_principal);
  Application.CreateForm(Tf_novo_projeto, f_novo_projeto);
  Application.Run;
end.

