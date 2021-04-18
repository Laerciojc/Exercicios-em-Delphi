unit Classe_ServicoPessoa;

interface
uses
   Classe_Pessoa, generics.collections;
type
    TServicoPessoa = class
      private
            lista: Tlist<TPessoa>;
      public
          constructor create;
          destructor destroi;
          procedure setLista(p:TPessoa);
          function getCount: integer;
          function getMediaIdade: Real;
          function getPerAcim60: Real;
          function getQtFem17A36VDeLR: integer;
          function getPorcMascSup18: Real;

    end;

implementation

{ ServicoPessoa }

constructor TServicoPessoa.create;
begin
    self.lista := Tlist<TPessoa>.create;
end;

destructor TServicoPessoa.destroi;
begin
    self.lista.Clear;
end;

function TServicoPessoa.getCount: integer;
begin
     result := self.lista.Count;
end;

function TServicoPessoa.getMediaIdade: Real;
var
    p: TPessoa;
    somaidade : integer;
begin
     somaidade := 0;
     result := 0;
     for p in  self.lista do
     inc( somaidade, p.getIdade);

     if ( somaidade > 0) then
     result := (somaidade / self.getCount);

end;

function TServicoPessoa.getPerAcim60: Real;
var
   p: TPessoa;
   idade60 : integer;
begin
     idade60 := 0;
     result := 0;
     for p in  self.lista do
     if( p.getIdade > 60)then
        inc(idade60);

     if ( idade60 > 0) then
     result := (idade60 / self.getCount) * 100;
end;

function TServicoPessoa.getPorcMascSup18: Real;
var
    p: TPessoa;
    masc18 : integer;
begin
     for p in  self.lista do
     if (p.getSexo = 1) and( p.getIdade > 18) and (p.getCabelos = 3) and ((p.getOlhos = 2)or (p.getOlhos = 3)) then
        inc(masc18);

        if ( masc18 > 0) then
     result := (masc18 / self.getCount) * 100;
end;

function TServicoPessoa.getQtFem17A36VDeLR: integer;
var
    p: TPessoa;
    cont: integer;
begin
      cont := 0;
      result := 0;
      for p in  self.lista do
        if (p.getIdade > 16) and (p.getIdade < 37) and (p.getSexo = 2) and (p.getOlhos = 1) and (p.getCabelos = 2) then
              inc (cont);

       if (cont > 0) then
       result := cont;
end;

procedure TServicoPessoa.setLista(p: TPessoa);
begin
      self.lista.Add(p);
end;

end.
