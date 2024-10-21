unit uUtils;

interface

uses system.SysUtils, uResponse, uExceptions, uEnums;

function TratarException(e : Exception) : Tresponse;

implementation

function TratarException(e : Exception) : Tresponse;
var
response : Tresponse;
begin

   response.success   := false;
   response.Message   := e.Message;
   response.Data      := nil;

   if e.ClassType = TexceptionNome then
   begin
    response.ErrorCode := RetornarErrorsCode.NOME_NAO_INFORMADO;
   end;

    if e.ClassType = TexceptionMinimoNome then
   begin
    response.ErrorCode := RetornarErrorsCode.NOME_INVALIDO;
   end;


    if e.ClassType = TexceptionDocumento then
   begin
    response.ErrorCode := RetornarErrorsCode.DOCUMENTO_NAO_INFORMADO;
   end;

    if e.ClassType = TexceptionMinimoDocumento then
   begin
    response.ErrorCode := RetornarErrorsCode.DOCUMENTO_INVALIDO;
   end;

    if e.ClassType = TexceptionTelefone then
   begin
    response.ErrorCode := RetornarErrorsCode.TELEFONE_NAO_INFORMADO;
   end;

    if e.ClassType = TexceptionMinimoTelefone then
   begin
    response.ErrorCode := RetornarErrorsCode.TELEFONE_INVALIDO;
   end;

   result := response;

end;

end.
