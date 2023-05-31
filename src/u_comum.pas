unit u_comum;

{$mode ObjFPC}{$H+}

interface

uses
  Forms, Classes, SysUtils;

procedure sair_programa;

implementation

procedure sair_programa;
begin
  Application.Terminate;
end;

end.

