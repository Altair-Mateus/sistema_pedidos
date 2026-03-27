program prjSistemaPedidos;

uses
  Vcl.Forms,
  fEmissaoPedido in 'src\view\fEmissaoPedido.pas' {frmEmissaoPedido},
  System.SysUtils,
  Vcl.Dialogs,
  Winapi.Windows,
  FireDAC.Comp.Client,
  FireDAC.Stan.Def,
  FireDAC.Stan.Param,
  FireDAC.DApt,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Async,
  uCliente in 'src\model\uCliente.pas',
  uSpQuery in 'src\infra\db\uSpQuery.pas',
  uDBConfig in 'src\infra\db\uDBConfig.pas',
  uIDBConnection in 'src\infra\db\uIDBConnection.pas',
  uMySQLConnection in 'src\infra\db\uMySQLConnection.pas',
  uProduto in 'src\model\uProduto.pas',
  uPedido in 'src\model\uPedido.pas',
  uItensPedido in 'src\model\uItensPedido.pas',
  uControllerPedido in 'src\controller\uControllerPedido.pas',
  uEnums in 'src\common\types\uEnums.pas',
  fConsultaProduto in 'src\view\fConsultaProduto.pas' {frmConsultaProduto},
  fConsultaCliente in 'src\view\fConsultaCliente.pas' {frmConsultaCliente};

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  try
    TDbConfig.Init(TMySQLConnection.Create);
  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('Erro ao conectar: '#13 + E.Message), 'Erro!', MB_OK or MB_ICONERROR);
      ExitProcess(1);
    end;
  end;

  Application.CreateForm(TfrmEmissaoPedido, frmEmissaoPedido);
  Application.Run;

end.
