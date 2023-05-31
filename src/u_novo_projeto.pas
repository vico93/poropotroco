unit u_novo_projeto;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { Tf_novo_projeto }

  Tf_novo_projeto = class(TForm)
    btn_explorar: TButton;
    btn_cancelar: TButton;
    btn_ok: TButton;
    caminho: TLabeledEdit;
    dlg_pasta_projeto: TSelectDirectoryDialog;
    titulo: TLabeledEdit;
    nome_pasta: TLabeledEdit;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_explorarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure nome_pastaKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  f_novo_projeto: Tf_novo_projeto;

implementation

{$R *.lfm}

{ Tf_novo_projeto }

procedure Tf_novo_projeto.btn_cancelarClick(Sender: TObject);
begin
  f_novo_projeto.Close;
end;

procedure Tf_novo_projeto.btn_explorarClick(Sender: TObject);
begin
  if dlg_pasta_projeto.Execute then
    caminho.Text := dlg_pasta_projeto.FileName + '\\' + nome_pasta.Text;
end;

procedure Tf_novo_projeto.FormCreate(Sender: TObject);
begin
  caminho.Text:=GetUserDir() + nome_pasta.Text;
  dlg_pasta_projeto.InitialDir:=GetUserDir();
  dlg_pasta_projeto.FileName:=GetUserDir();
end;

procedure Tf_novo_projeto.nome_pastaKeyPress(Sender: TObject; var Key: char);
begin

end;

end.

