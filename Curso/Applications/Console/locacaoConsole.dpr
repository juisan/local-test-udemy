program locacaoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uMenuPrincipal in 'uMenuPrincipal.pas',
  uCliente in '..\..\Core\Models\uCliente.pas',
  uICasoUsoCliente in '..\..\Core\Ports\uICasoUsoCliente.pas',
  uResponse in '..\..\Core\response\uResponse.pas',
  uDTOCliente in '..\..\Core\DTO\uDTOCliente.pas',
  uCasoUsoCliente in '..\..\Core\UseCases\uCasoUsoCliente.pas',
  uEnums in '..\..\Core\Enums\uEnums.pas',
  uExceptions in '..\..\Core\Exceptions\uExceptions.pas',
  uUtils in '..\..\Core\Utils\uUtils.pas';

  // para testar GitHub
  // Com sucesso!

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }

    Menu;
  except

    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
