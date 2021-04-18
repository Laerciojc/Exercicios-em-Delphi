unit unit_Dados;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls;

type
  Tdm_Dados = class(TDataModule)
    Icones: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_Dados: Tdm_Dados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
