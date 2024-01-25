unit uConsultaCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfConsultaCli = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    dbNome: TEdit;
    DBGrid1: TDBGrid;
    btFechar: TBitBtn;
    procedure dbNomeChange(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsultaCli: TfConsultaCli;

implementation

{$R *.dfm}

Uses uTabelas;


procedure TfConsultaCli.btFecharClick(Sender: TObject);
begin

  Close;
end;

procedure TfConsultaCli.dbNomeChange(Sender: TObject);
begin
  with dm.qConsultaCli do
  begin
    close;
    sql.Clear;
    sql.Add('select * from clientes where nome_completo like ''%'+dbNome.Text+'%''');
    open;
  end;
end;

procedure TfConsultaCli.FormActivate(Sender: TObject);
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
