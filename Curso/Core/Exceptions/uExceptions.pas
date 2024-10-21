unit uExceptions;

interface

uses System.SysUtils;

type
TExceptionNome = class(Exception);
TExceptionMinimoNome = class(Exception);
TExceptionDocumento = class(Exception);
TExceptionMinimoDocumento = class(Exception);
TExceptionTelefone = class(Exception);
TExceptionMinimoTelefone = class(Exception);


procedure ExceptionNome;
procedure ExceptionMinimoNome;
procedure ExceptionDocumento;
procedure ExceptionMinimoDocumento;
procedure ExceptionTelefone;
procedure ExceptionMinimoTelefone;


implementation

procedure ExceptionNome;
begin
 raise TExceptionNome.Create('Nome deve ser informado');
end;

procedure ExceptionMinimoNome;
begin
 raise TExceptionMinimoNome.Create('Nome deve contar no minimo 4 caracteres');
end;

procedure ExceptionDocumento;
begin
 raise TExceptionNome.Create('Documento deve ser informado');
end;

procedure ExceptionMinimoDocumento;
begin
 raise TExceptionMinimoNome.Create('Documento deve contar no minimo 4 caracteres');
end;

procedure ExceptionTelefone;
begin
 raise TExceptionNome.Create('Telfone deve ser informado');
end;

procedure ExceptionMinimoTelefone;
begin
 raise TExceptionMinimoNome.Create('Telefone deve contar no minimo 8 caracteres');
end;

end.
