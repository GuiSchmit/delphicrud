unit uExcluirCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfExcluirCli = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    dbNome: TEdit;
    btFechar: TBitBtn;
    DBGrid1: TDBGrid;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure dbNomeChange(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExcluirCli: TfExcluirCli;
  auxCod: integer;

implementation

{$R *.dfm}

Uses uTabelas;

procedure TfExcluirCli.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfExcluirCli.DBGrid1CellClick(Column: TColumn);
begin
  auxCod := DBGrid1.Fields[0].Value;
  dm.tbClientes.Open();
  if dm.tbclientes.Locate('codigo', auxCod, []) then
  begin
    if MessageDlg('Você confirma as exclusão de dados desse cliente?',
    mtConfirmation, [mbyes, mbno], 0) = mryes then
    begin
      dm.tbclientes.delete;
      showmessage('Dados do cliente deletados com sucesso!');
      dm.fdTransaction.StartTransaction;
      dm.fdTransaction.CommitRetaining;
      Close;
    end
    else
    begin
      showmessage('Dados do cliente mantidos sem exclusão!');
      dm.tbclientes.Cancel;
      dm.tbclientes.Close;
      Close;
      end;
    end;
end;
procedure TfExcluirCli.dbNomeChange(Sender: TObject);
begin
  with dm.qConsultaCli do
  begin
    close;
    sql.Clear;
    sql.Add('select * from clientes where nome_completo like ''%'+dbNome.Text+'%''');
    open;
  end;
end;

procedure TfExcluirCli.FormActivate(Sender: TObject);
begin
  with dm.qConsultaCli do
  begin
    close;
    sql.Clear;
    sql.Add('select * from clientes');
    open;
  end;
  dbNome.SetFocus;
end;

end.
