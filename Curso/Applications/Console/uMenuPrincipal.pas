unit uMenuPrincipal;

interface

uses  winapi.Windows, System.SysUtils;

procedure Menu;

// Modulo Cliente
procedure MenuCliente;

procedure CadastrarCliente;
procedure AlterarCliente;
procedure ExcluirCliente;
procedure ConsultarCliente;


//Modulo Veiculo
procedure MenuVeiculo;

procedure CadastrarVeiculo;
procedure AlterarVeiculo;
procedure ExcluirVeiculo;
procedure ConsultarVeiculo;


//Modulo Locação
procedure MenuLocacao;

procedure CadastrarLocacao;
procedure AlterarLocacao;
procedure ExcluirLocacao;
procedure ConsultarLocacao;


procedure clean;

function Modulos : string;


implementation

// Resultado - function
function Modulos : string;
begin

  result := ' 1 - Cadastrar ' + #13#10  +
            ' 2 - Alterar   ' + #13#10  +
            ' 3 - Editar    ' + #13#10  +
            ' 4 - Consultar ' + #13#10  +
            ' 5   Voltar ' ;
end;

procedure clean;
var
  stdout: THandle;
  csbi: TConsoleScreenBufferInfo;
  ConsoleSize: DWORD;
  NumWritten: DWORD;
  Origin: TCoord;
begin
  stdout := GetStdHandle(STD_OUTPUT_HANDLE);
  Win32Check(stdout<>INVALID_HANDLE_VALUE);
  Win32Check(GetConsoleScreenBufferInfo(stdout, csbi));
  ConsoleSize := csbi.dwSize.X * csbi.dwSize.Y;
  Origin.X := 0;
  Origin.Y := 0;
  Win32Check(FillConsoleOutputCharacter(stdout, ' ', ConsoleSize, Origin,
    NumWritten));
  Win32Check(FillConsoleOutputAttribute(stdout, csbi.wAttributes, ConsoleSize, Origin,
    NumWritten));
  Win32Check(SetConsoleCursorPosition(stdout, Origin));

end;


procedure Menu;
var
 Codigo : integer;
 Modulo : string;
begin

  clean;

  writeln('Menu Principal');
  writeln;


  Modulo := '1 - Clientes' +  #13#10 +
            '2 - Veiculos' +  #13#10 +
            '3 - Locação ';

  writeln(Modulo);
  write(Output, 'Opção: ');
  readln(Input,Codigo);

  case Codigo  of

    1 : MenuCliente;
    2 : MenuVeiculo;
    3 : MenuLocacao;

  end;


  // Menu clientes

  // Menu veiculos

  // Menu locação

end;


procedure MenuCliente;
var
 Codigo : integer;
begin

  clean;

  writeln('Menu Clientes');
  writeln;

  writeln(Modulos);
  write(Output, 'Opção: ');
  readln(Input,Codigo);

  case Codigo  of

    1 : CadastrarCliente;
    2 : AlterarCliente;
    3 : ExcluirCliente;
    4 : ConsultarCliente;
    5 : Menu;
    else
    begin
      writeln('Opção inválida');
      readln;
    end;


  end;

end;


// Modulo de Cliente
procedure CadastrarCliente;
begin
 clean;
 writeln('Cadastro de cliente');
 readln;
 Menu;

end;

procedure AlterarCliente;
begin
 clean;
 writeln('Alterar cliente');
 readln;
 Menu;
end;

procedure ExcluirCliente;
begin
 clean;
 writeln('Excluir cliente');
 readln;
 Menu;
end;

procedure ConsultarCliente;
begin
 clean;
 writeln('Consultar cliente');
 readln;
 Menu;
end;


// Modulo Veiculo
procedure MenuVeiculo;
var
 Codigo : integer;
begin

  clean;

  writeln('Menu Veiculos');
  writeln;

  writeln(Modulos);
  write(Output, 'Opção: ');
  readln(Input,Codigo);

  case Codigo  of

    1 : CadastrarVeiculo;
    2 : AlterarVeiculo;
    3 : ExcluirVeiculo;
    4 : ConsultarVeiculo;
    5 : Menu;
    else
    begin
      writeln('Opção inválida');
      readln;
    end;


  end;

end;

// Cadastrar veiculos
procedure CadastrarVeiculo;
begin
 clean;
 writeln('Cadastro de Veiculo');
 readln;
 Menu;
end;

procedure AlterarVeiculo;
begin
 clean;
 writeln('Alterar veiculo');
 readln;
 Menu;
end;

procedure ExcluirVeiculo;
begin
 clean;
 writeln('Excluir veiculo');
 readln;
 Menu;
end;

procedure ConsultarVeiculo;
begin
 clean;
 writeln('Consultar veiculo');
 readln;
 Menu;
end;


// Modulo Locação
procedure MenuLocacao;
var
 Codigo : integer;
begin

  clean;

  writeln('Menu Locação');
  writeln;

  writeln(Modulos);
  write(Output, 'Opção: ');
  readln(Input,Codigo);

  case Codigo  of

    1 : CadastrarLocacao;
    2 : AlterarLocacao;
    3 : ExcluirLocacao;
    4 : ConsultarLocacao;
    5 : Menu;
    else
    begin
      writeln('Opção inválida');
      readln;
    end;


  end;

end;

// Cadastrar locação
procedure CadastrarLocacao;
begin
 clean;
 writeln('Cadastro de  Locação');
 readln;
 Menu;
end;


procedure AlterarLocacao;
begin
 clean;
 writeln('Alterar locação');
 readln;
 Menu;
end;


procedure ExcluirLocacao;
begin
 clean;
 writeln('Excluir locação');
 readln;
 Menu;
end;


procedure ConsultarLocacao;
begin
 clean;
 writeln('Consultar locação');
 readln;
 Menu;
end;


end.
