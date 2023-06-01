unit u_novo_projeto;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, LazFileUtils,
  u_comum;

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
    procedure nome_pastaChange(Sender: TObject);
  private

  public

  end;

var
  f_novo_projeto: Tf_novo_projeto;
  pasta_selecionada: string;

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
    pasta_selecionada := dlg_pasta_projeto.FileName;
    caminho.Text := AppendPathDelim(pasta_selecionada) + nome_pasta.Text;
end;

procedure Tf_novo_projeto.FormCreate(Sender: TObject);
begin
  pasta_selecionada := u_comum.get_default_dir();
  caminho.Text:= AppendPathDelim(pasta_selecionada) + nome_pasta.Text;
  dlg_pasta_projeto.InitialDir:=pasta_selecionada;
end;

procedure Tf_novo_projeto.nome_pastaChange(Sender: TObject);
begin
  caminho.Text:= AppendPathDelim(pasta_selecionada) + nome_pasta.Text;
end;

end.

