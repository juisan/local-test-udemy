unit uICasoUsoCliente;

interface

uses uCliente, uResponse, uDTOCliente;

type

 ICasoUsoCliente = interface

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

end.
