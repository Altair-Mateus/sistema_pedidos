program prjSistemaPedidos;

uses
  Vcl.Forms,
  fEmissaoPedido in 'src\view\fEmissaoPedido.pas' {Form1} ,
  uIDBConnection in 'src\infra\uIDBConnection.pas',
  uMySQLConnection in 'src\infra\uMySQLConnection.pas',
  uDBConfig in 'src\infra\uDBConfig.pas',
  System.SysUtils,
  Vcl.Dialogs,
  Winapi.Windows;

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  try
    TDbConfig.Init(TMySQLConnection.Create);
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao conectar: ' + E.Message);
      ExitProcess(1);
    end;
  end;

  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
