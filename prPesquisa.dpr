program prPesquisa;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {frm_Principal},
  unit_Dados in 'unit_Dados.pas' {dm_Dados: TDataModule},
  unit_CadPessoa in 'unit_CadPessoa.pas' {frm_CadPessoa},
  Classe_Pessoa in 'Classe_Pessoa.pas',
  Classe_ServicoPessoa in 'Classe_ServicoPessoa.pas',
  unit_Resultados in 'unit_Resultados.pas' {frm_Resultados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Principal, frm_Principal);
  Application.CreateForm(Tdm_Dados, dm_Dados);
  Application.Run;
end.