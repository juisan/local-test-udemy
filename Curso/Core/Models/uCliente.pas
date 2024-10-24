unit uCliente;

interface

uses system.SysUtils,  uExceptions;

type

 TCliente = class
  private
    FId: integer;
    FNome: string;
    FCep: string;
    FDocumento: string;
    FLogradouro: string;
    FBairro: string;
    FUF: string;
    FNumero: string;
    FComplemento: string;
    FCidade: string;
    FTelefone: string;
    procedure SetId(const Value: integer);
    procedure SetNome(const Value: string);
    procedure SetCep(const Value: string);
    procedure SetDocumento(const Value: string);
    procedure SetBairro(const Value: string);
    procedure SetCidade(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetLogradouro(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetTelefone(const Value: string);
    procedure SetUF(const Value: string);

  public

 property Id : integer read FId write SetId;
 property Nome : string read FNome write SetNome;
 property Documento : string read FDocumento write SetDocumento;
 property Cep : string read FCep write SetCep;
 property Logradouro : string read FLogradouro write SetLogradouro;
 property Numero : string read FNumero write SetNumero;
 property Complemento : string read FComplemento write SetComplemento;
 property Bairro : string read FBairro write SetBairro;
 property Cidade : string read FCidade write SetCidade;
 property UF : string read FUF write SetUF;
 property Telefone : string read FTelefone write SetTelefone;


 procedure ValidarRegrasNegocios;
 end;

implementation

{ TCliente }

procedure TCliente.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TCliente.SetCep(const Value: string);
begin
  FCep := Value;
end;

procedure TCliente.SetCidade(const Value: string);
begin
  FCidade := Value;
end;

procedure TCliente.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TCliente.SetDocumento(const Value: string);
begin
  FDocumento := Value;
end;

procedure TCliente.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TCliente.SetLogradouro(const Value: string);
begin
  FLogradouro := Value;
end;

procedure TCliente.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TCliente.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TCliente.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

procedure TCliente.SetUF(const Value: string);
begin
  FUF := Value;
end;

procedure TCliente.ValidarRegrasNegocios;
begin
  // regras de negocios

  if trim(fnome)= '' then
  begin
   ExceptionNome;
  end;

  if length(fnome) <= 4 then
  begin
   ExceptionMinimoNome;
  end;


   if trim(fDocumento)= '' then
  begin
   ExceptionDocumento;
  end;

  if length(fDocumento) <= 4 then
  begin
   ExceptionMinimoDocumento;
  end;


   if trim(fTelefone)= '' then
  begin
   ExceptionTelefone;
  end;

  if length(fTelefone) <= 4 then
  begin
   ExceptionMinimoTelefone;
  end;


end;

end.
