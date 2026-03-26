program prjSistemaPedidos;

uses
  Vcl.Forms,
  fEmissaoPedido in 'src\view\fEmissaoPedido.pas' {Form1},
  System.SysUtils,
  Vcl.Dialogs,
  Winapi.Windows,
  uCliente in 'src\model\uCliente.pas',
  uSpQuery in 'src\infra\db\uSpQuery.pas',
  uDBConfig in 'src\infra\db\uDBConfig.pas',
  uIDBConnection in 'src\infra\db\uIDBConnection.pas',
  uMySQLConnection in 'src\infra\db\uMySQLConnection.pas',
  uProduto in 'src\model\uProduto.pas',
  uPedido in 'src\model\uPedido.pas',
  uItensPedido in 'src\model\uItensPedido.pas',
  uControllerPedido in 'src\controller\uControllerPedido.pas',
  uEnums in 'src\common\types\uEnums.pas';

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
