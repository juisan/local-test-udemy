unit uEnums;

interface

 type

  TErrorsCode = record

  NOME_NAO_INFORMADO,
  NOME_INVALIDO,
  DOCUMENTO_NAO_INFORMADO,
  DOCUMENTO_INVALIDO,
  TELEFONE_NAO_INFORMADO,
  TELEFONE_INVALIDO : integer;

  end;


  TmsgResponse =   record

   CADASTRADO_COM_SUCESSO,
   ALTERADO_COM_SUCESSO,
   CONSULTA_REALIZADA_COM_SUCESSO,
   CONSULTA_SEM_RETORNO,
   DELETADO_COM_SUCESSO : string;
  end;

  function  RetornarMsgResponse : TmsgResponse;
  function RetornarErrorsCode :TErrorsCode ;


implementation

  function  RetornarMsgResponse : TmsgResponse;
  begin
   result.CADASTRADO_COM_SUCESSO          := 'Cadastrado com sucesso!';
   result.ALTERADO_COM_SUCESSO            := 'Alterado com sucesso!';
   result.CONSULTA_REALIZADA_COM_SUCESSO  := 'Deletado com sucesso!';
   result.CONSULTA_SEM_RETORNO            := 'Consulta realizada com sucesso!';
   result.DELETADO_COM_SUCESSO            := 'Consulta sem retorno!';
  end;

   function RetornarErrorsCode :TerrorsCode ;
   begin
     result.NOME_NAO_INFORMADO      := 100;
     result.NOME_INVALIDO           := 101;
     result.DOCUMENTO_NAO_INFORMADO := 102;
     result.DOCUMENTO_INVALIDO      := 103;
     result.TELEFONE_NAO_INFORMADO  := 104;
     result.TELEFONE_INVALIDO       := 105;
   end;

end.
