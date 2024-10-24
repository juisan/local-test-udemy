unit uCasoUsoCliente;

interface

uses uICasoUsoCliente, system.SysUtils,
uCliente, uDTOCliente, uResponse, uEnums, uUtils;

type

 TCasoUsoCliente = class(TinterfacedObject, ICasoUsoCliente)

 // cadastrar
  function Cadastrar (cliente : TCliente) : Tresponse;

 // alterar
  function Alterar (cliente : TCliente) : Tresponse;

 // deletar
  function Deletar (id : integer) : Tresponse;

 // consultar
  function Consultar (Dto : DtoCliente) : Tresponse;

 end;


implementation

{ TCasoUsoCliente }

function TCasoUsoCliente.Alterar(cliente: TCliente): Tresponse;
var
response : Tresponse;
begin
  //alterar

  try

    cliente.ValidarRegrasNegocios;

    Response.success   := true;
    Response.ErrorCode := 0;
    Response.Message   := RetornarMsgResponse.ALTERADO_COM_SUCESSO;
    Response.Data      := nil;
  except

    on e : exception do
    begin
       Response := TratarException(e);
    end;

  end;

  result := Response;
end;

function TCasoUsoCliente.Cadastrar(cliente: TCliente): Tresponse;
var
response : Tresponse;
begin
  //cadastrar

  try

    cliente.ValidarRegrasNegocios;

    Response.success   := true;
    Response.ErrorCode := 0;
    Response.Message   := RetornarMsgResponse.CADASTRADO_COM_SUCESSO;
    Response.Data      := nil;
  except

    on e : exception do
    begin
       Response := TratarException(e);
    end;

  end;

  result := Response;
end;

function TCasoUsoCliente.Consultar(Dto: DtoCliente): Tresponse;
var
response : Tresponse;
begin
  //consultar

  try

    Response.success   := true;
    Response.ErrorCode := 0;
    Response.Message   := RetornarMsgResponse.CONSULTA_REALIZADA_COM_SUCESSO;
    Response.Data      := nil;
  except

    on e : exception do
    begin

    end;

  end;

  result := Response;
end;

function TCasoUsoCliente.Deletar(id: integer): Tresponse;
var
response : Tresponse;
begin
  //deletar

  try

    Response.success   := true;
    Response.ErrorCode := 0;
    Response.Message   := RetornarMsgResponse.DELETADO_COM_SUCESSO;
    Response.Data      := nil;
  except

    on e : exception do
    begin

    end;

  end;

  result := Response;
end;


end.
