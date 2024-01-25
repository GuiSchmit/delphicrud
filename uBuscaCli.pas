unit uBuscaCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfBuscaCli = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    dbNome: TEdit;
    btFechar: TBitBtn;
    DBGrid1: TDBGrid;
    procedure btFecharClick(Sender: TObject);
    procedure dbNomeChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscaCli: TfBuscaCli;
  auxCod: integer;

implementation

{$R *.dfm}

Uses uTabelas, uEditaCli;

procedure TfBuscaCli.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfBuscaCli.DBGrid1CellClick(Column: TColumn);
begin
  auxCod := DBGrid1.Fields[0].Value;
  dm.tbclientes.Open();
  if dm.tbclientes.Locate('codigo', auxCod, []) then
  begin
    if MessageDlg('Voc� deseja alterar os dados desse cliente?',
      mtConfirmation, [mbyes, mbno], 0) = mryes then
    begin
      fBuscaCli.Close;
      dm.qConsultaCli.Close;
      Application.CreateForm(TfEditaCli, fEditaCli);
      fEditaCli.showmodal;
    end;

  end;





end;

procedure TfBuscaCli.dbNomeChange(Sender: TObject);
begin
  with dm.qConsultaCli do
  begin
    close;
    sql.Clear;
    sql.Add('select * from clientes where nome_completo like ''%'+dbNome.Text+'%''');
    open;
  end;

end;

procedure TfBuscaCli.FormActivate(Sender: TObject);
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
