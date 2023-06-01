unit u_comum;

{$mode ObjFPC}{$H+}

interface

uses
  Forms, Classes, SysUtils {$IFDEF MSWINDOWS}, windirs {$ENDIF};

procedure sair_programa;
function get_default_dir: string;

implementation

procedure sair_programa;
begin
  Application.Terminate;
end;

function get_default_dir: string;
begin
  {$IFDEF MSWINDOWS}
    Result:=GetWindowsSpecialDir(CSIDL_PERSONAL);
  {$ELSE}
    Result := GetUserDir;
  {$ENDIF}
end;

end.

