program crud;

uses
  Vcl.Forms,
  uInicial in 'uInicial.pas' {fInicio},
  uTabelas in 'uTabelas.pas' {dm: TDataModule},
  uConsultaCli in 'uConsultaCli.pas' {fConsultaCli},
  uCadastraCli in 'uCadastraCli.pas' {fCadastraCli},
  uEditaCli in 'uEditaCli.pas' {fEditaCli},
  uBuscaCli in 'uBuscaCli.pas' {fBuscaCli},
  uExcluirCli in 'uExcluirCli.pas' {fExcluirCli},
  uFuncoes in 'uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfInicio, fInicio);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfConsultaCli, fConsultaCli);
  Application.CreateForm(TfCadastraCli, fCadastraCli);
  Application.CreateForm(TfEditaCli, fEditaCli);
  Application.CreateForm(TfBuscaCli, fBuscaCli);
  Application.CreateForm(TfExcluirCli, fExcluirCli);
  Application.Run;
end.
