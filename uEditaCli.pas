unit uEditaCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Xml.Win.msxmldom;

type
  TfEditaCli = class(TForm)
    Panel1: TPanel;
    lNome: TLabel;
    Label3: TLabel;
    lDataNascimento: TLabel;
    lTelefone: TLabel;
    lCep: TLabel;
    lLogradouro: TLabel;
    lBairro: TLabel;
    lUf: TLabel;
    dbNome: TDBEdit;
    dbCpf: TDBEdit;
    dbTelefone: TDBEdit;
    dbCep: TDBEdit;
    dbLogradouro: TDBEdit;
    dbBairro: TDBEdit;
    dbUF: TDBEdit;
    Panel3: TPanel;
    btEditaCli: TBitBtn;
    btCancelar: TBitBtn;
    Panel2: TPanel;
    btFechar: TBitBtn;
    DBEdit1: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure btEditaCliClick(Sender: TObject);
    procedure dbCepExit(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditaCli: TfEditaCli;
  logradouro, bairro, uf: string;

implementation

{$R *.dfm}

Uses utabelas, uFuncoes;

procedure TfEditaCli.btCancelarClick(Sender: TObject);
begin
  uFuncoes.CancelarTransaction;
  Close;
end;

procedure TfEditaCli.btEditaCliClick(Sender: TObject);
begin
  if MessageDlg('Você confirma as alterações nesse cliente?',
    mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    dm.tbClientes.Post;
    showmessage('Dados do cliente alterados com sucesso!');
    dm.fdTransaction.CommitRetaining;
  end
  else
  begin
    uFuncoes.CancelarTransaction;
    uFuncoes.LimpaEdits(fEditaCli);
    showmessage('Dados do cliente mantidos sem alteração!');
  end;
  Close;
end;

procedure TfEditaCli.btFecharClick(Sender: TObject);
begin
  uFuncoes.CancelarTransaction;
  Close;
end;

procedure TfEditaCli.dbCepExit(Sender: TObject);
var
xml: IXMLDocument;
url, cep, _erro, _true: String;

begin
  if dbCep.Text <> '' then
  begin
    _erro := 'erro';
    _true := 'true';
    cep := dbCep.Text;
    cep := cep.Replace('.', '');
    cep := cep.Replace('-', '');

    if (Length(cep) > 8) then
    begin
      Application.MessageBox('CEP INVÁLIDO','ERRO - AVISO DO SISTEMA!',
      MB_ICONWARNING+MB_OK);
    end
    else
      xml := TXMLDocument.Create(nil);
      url := 'https://viacep.com.br/ws/' + cep + '/xml/';
      xml.FileName := url;
      xml.Active := True;

      if xml.DocumentElement.ChildValues[0] = _true then
        Application.MessageBox('CEP INVÁLIDO','ERRO - AVISO DO SISTEMA!',
        MB_ICONWARNING+MB_OK);

        logradouro := xml.DocumentElement.ChildNodes['logradouro'].Text;
        bairro := xml.DocumentElement.ChildNodes['bairro'].Text;
        uf := xml.DocumentElement.ChildNodes['uf'].Text;

        dbLogradouro.Text := logradouro;
        dbBairro.Text := bairro;
        dbUf.Text := uf;
        btEditaCli.SetFocus;

        xml := nil;

    end;
  end;

procedure TfEditaCli.FormActivate(Sender: TObject);
begin
  uFuncoes.CancelarTransaction;
  dm.fdTransaction.StartTransaction;
  dm.tbClientes.Open();
  dm.tbclientes.Edit;
  dbNome.SetFocus;
end;

end.
