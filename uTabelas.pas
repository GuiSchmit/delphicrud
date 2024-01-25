unit uTabelas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  Tdm = class(TDataModule)
    fdConnection: TFDConnection;
    fdTransaction: TFDTransaction;
    tbClientes: TFDTable;
    qConsultaCli: TFDQuery;
    pgDriverLink: TFDPhysPgDriverLink;
    dsClientes: TDataSource;
    dsConsultaCli: TDataSource;
    tbClientesnome_completo: TWideStringField;
    tbClientescpf: TWideStringField;
    tbClientesdata_nascimento: TDateField;
    tbClientestelefone: TWideStringField;
    tbClientescep: TWideStringField;
    tbClienteslogradouro: TWideStringField;
    tbClientesbairro: TWideStringField;
    tbClientesuf: TWideStringField;
    tbClientescodigo: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
