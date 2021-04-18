unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Menus, Classe_ServicoPessoa;

type
  Tfrm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    ConSULTAS1: TMenuItem;
    Pessoas1: TMenuItem;
    Resultados1: TMenuItem;
    procedure Pessoas1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Resultados1Click(Sender: TObject);
  private
    { Private declarations }
  public
       ServicoPessoa: TServicoPessoa;
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses unit_Dados, unit_CadPessoa, unit_Resultados;

procedure Tfrm_Principal.FormCreate(Sender: TObject);
begin
     ServicoPessoa :=  TServicoPessoa.Create;
end;

procedure Tfrm_Principal.FormDestroy(Sender: TObject);
begin
     FreeAndNil(ServicoPessoa);
end;

procedure Tfrm_Principal.Pessoas1Click(Sender: TObject);
begin
     if (frm_CadPessoa = nil) then
       frm_CadPessoa := Tfrm_CadPessoa.Create(self);

     frm_CadPessoa.ShowModal;
     FreeAndNil(frm_CadPessoa);
end;

procedure Tfrm_Principal.Resultados1Click(Sender: TObject);
begin
     if (frm_Resultados = nil) then
       frm_Resultados := Tfrm_Resultados.Create(self);

     frm_Resultados.ShowModal;
     FreeAndNil(frm_Resultados);
end;

end.
