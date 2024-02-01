unit uCadastraCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Xml.Win.msxmldom;

type
  TfCadastraCli = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lNome: TLabel;
    dbNome: TDBEdit;
    Label3: TLabel;
    dbCpf: TDBEdit;
    lDataNascimento: TLabel;
    lTelefone: TLabel;
    dbTelefone: TDBEdit;
    lCep: TLabel;
    dbCep: TDBEdit;
    lLogradouro: TLabel;
    dbLogradouro: TDBEdit;
    lBairro: TLabel;
    dbBairro: TDBEdit;
    lUf: TLabel;
    dbUF: TDBEdit;
    Panel3: TPanel;
    btCadastraCli: TBitBtn;
    btCancelar: TBitBtn;
    btFechar: TBitBtn;
    dbDataNasc: TDBEdit;
    procedure dbNomeChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btCadastraCliClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbCepExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastraCli: TfCadastraCli;
  logradouro, bairro, uf: string;

implementation

{$R *.dfm}

Uses uTabelas, Data.DB, uFuncoes;



procedure TfCadastraCli.btCadastraCliClick(Sender: TObject);
begin
  if uFuncoes.ValidaData(dbDataNasc.Text) then
  begin
    uFuncoes.Cadastrar;
    uFuncoes.LimpaEdits(fCadastraCli);
    Close;
  end
  else
    dbDataNasc.SetFocus;
end;

procedure TfCadastraCli.btCancelarClick(Sender: TObject);
begin
  uFuncoes.CancelarTransaction;
  Close;
end;

procedure TfCadastraCli.btFecharClick(Sender: TObject);
begin
  uFuncoes.CancelarTransaction;
  Close;
end;

procedure TfCadastraCli.dbCepExit(Sender: TObject);
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
      Application.MessageBox('CEP INV�LIDO','ERRO - AVISO DO SISTEMA!',
      MB_ICONWARNING+MB_OK);
    end
    else
      xml := TXMLDocument.Create(nil);
      url := 'https://viacep.com.br/ws/' + cep + '/xml/';
      xml.FileName := url;
      xml.Active := True;

      if xml.DocumentElement.ChildValues[0] = _true then
        Application.MessageBox('CEP INV�LIDO','ERRO - AVISO DO SISTEMA!',
        MB_ICONWARNING+MB_OK);

        logradouro := xml.DocumentElement.ChildNodes['logradouro'].Text;
        bairro := xml.DocumentElement.ChildNodes['bairro'].Text;
        uf := xml.DocumentElement.ChildNodes['uf'].Text;

        dbLogradouro.Text := logradouro;
        dbBairro.Text := bairro;
        dbUf.Text := uf;
        btCadastraCli.SetFocus;

        xml := nil;

    end;
  end;

procedure TfCadastraCli.dbNomeChange(Sender: TObject);
begin
  if dbNome.Text = ''  then
  begin
    btCadastraCli.Enabled := false
  end
  else
  begin
   btCadastraCli.Enabled := true;
   btCancelar.Enabled := true;
  end;
end;



procedure TfCadastraCli.FormActivate(Sender: TObject);
begin
  dm.fdTransaction.StartTransaction;
  dm.tbClientes.Open();
  dm.tbClientes.Append;
  dbNome.SetFocus;
  btCancelar.Enabled := false;
  btCadastraCli.Enabled := false;
end;

end.
