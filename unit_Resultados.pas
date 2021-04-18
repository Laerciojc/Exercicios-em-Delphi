unit unit_Resultados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrm_Resultados = class(TForm)
    Panel1: TPanel;
    btSair: TBitBtn;
    Panel2: TPanel;
    mmResultados: TMemo;
    procedure btSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Resultados: Tfrm_Resultados;

implementation

{$R *.dfm}

uses unit_principal;

procedure Tfrm_Resultados.btSairClick(Sender: TObject);
begin
      close;
end;

procedure Tfrm_Resultados.FormActivate(Sender: TObject);

begin
     mmResultados.Clear;
     mmResultados.Lines.Add(Format('Media da idade das pessoas: %s',
     [FormatFloat('#####0.0 anos',frm_Principal.ServicoPessoa.getMediaIdade)]));

      mmResultados.Lines.Add('');
      mmResultados.Lines.Add(Format('Percentual de pessoas acima de 60 anos: %s',
     [FormatFloat('#####0.00%',frm_Principal.ServicoPessoa.getPerAcim60)]));

      mmResultados.Lines.Add('');
      mmResultados.Lines.Add(Format('A quantidade de pessoas do sexo feminino ' +
      'cuja idade esta entre 17 e 36 anos e que tenham olhos verdes e cabelos louros: %d',
      [(frm_Principal.ServicoPessoa.getQtFem17A36VDeLR)]));

      mmResultados.Lines.Add('');
      mmResultados.Lines.Add(Format('O percentual de pessoas do sexo masculino  ' +
      'com idade superior a 18 anos e que tenham cabelos pretos e olhos verdes ou castanhos: %s',
      [FormatFloat('#####0.00%',frm_Principal.ServicoPessoa.getPorcMascSup18)]));
end;

end.
