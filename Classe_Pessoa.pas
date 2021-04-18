unit Classe_Pessoa;

interface

type
    TPessoa = class
      private
        idade : integer;
        sexo : integer;
        olhos : integer;
        cabelos : integer;
      public
         procedure setIdade(idade: integer);
         function getIdade : integer;
         procedure setSexo(sexo: integer);
         function getSexo : integer;
         procedure setOlhos(olhos: integer);
         function getOlhos : integer;
         procedure setCabelos(cabelos: integer);
         function getCabelos : integer;
    end;

implementation

{ Pessoa }

function TPessoa.getCabelos: integer;
begin
     result := self.cabelos;
end;

function TPessoa.getIdade: integer;
begin
     result := self.idade;
end;

function TPessoa.getOlhos: integer;
begin
     result := self.olhos;
end;

function TPessoa.getSexo: integer;
begin
     result := self.sexo;
end;

procedure TPessoa.setCabelos(cabelos: integer);
begin
      self.cabelos := cabelos;
end;

procedure TPessoa.setIdade(idade: integer);
begin
     self.idade := idade;
end;

procedure TPessoa.setOlhos(olhos: integer);
begin
     self.olhos := olhos;
end;

procedure TPessoa.setSexo(sexo: integer);
begin
      self.sexo := sexo;
end;

end.
