unit u_principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, u_novo_projeto, u_comum;

type

  { Tf_principal }

  Tf_principal = class(TForm)
    o_arquivo_sair: TMenuItem;
    o_arquivo_novo: TMenuItem;
    o_arquivo: TMenuItem;
    menu_principal: TMainMenu;
    o_arquivo_sep1: TMenuItem;
    procedure o_arquivo_novoClick(Sender: TObject);
    procedure o_arquivo_sairClick(Sender: TObject);
  private

  public

  end;

var
  f_principal: Tf_principal;

implementation

{$R *.lfm}

{ Tf_principal }

procedure Tf_principal.o_arquivo_sairClick(Sender: TObject);
begin
  u_comum.sair_programa;
end;

procedure Tf_principal.o_arquivo_novoClick(Sender: TObject);
begin
  f_novo_projeto.ShowModal;
end;

end.

