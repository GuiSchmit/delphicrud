unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfInicio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    btConsultaCli: TBitBtn;
    btEditaCli: TBitBtn;
    btCadastraCli: TBitBtn;
    btExcluiCli: TBitBtn;
    btFechar: TBitBtn;
    procedure btConsultaCliClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btCadastraCliClick(Sender: TObject);
    procedure btEditaCliClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btExcluiCliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInicio: TfInicio;

implementation

{$R *.dfm}

Uses uTabelas, uConsultaCli, uCadastraCli, uBuscaCli, uExcluirCli;

procedure TfInicio.btCadastraCliClick(Sender: TObject);
begin

  Application.CreateForm(TfCadastraCli, fCadastraCli);
  fCadastracli.showmodal;

end;

procedure TfInicio.btConsultaCliClick(Sender: TObject);
begin
  dm.qConsultaCli.Close;
  dm.qConsultaCli.Open();
  Application.CreateForm(TfConsultaCli, fConsultaCli);
  fconsultacli.showmodal;

end;

procedure TfInicio.btEditaCliClick(Sender: TObject);
begin
  Application.CreateForm(TfBuscaCli, fBuscaCli);
  fBuscaCli.showmodal;

end;

procedure TfInicio.btExcluiCliClick(Sender: TObject);
begin
   Application.CreateForm(TfExcluirCli, fExcluirCli);
  fExcluirCli.showmodal;
end;

procedure TfInicio.btFecharClick(Sender: TObject);
begin
  Free;
end;

procedure TfInicio.FormActivate(Sender: TObject);
begin
  dm.tbClientes.Close;
  dm.tbClientes.Open();
end;

end.
