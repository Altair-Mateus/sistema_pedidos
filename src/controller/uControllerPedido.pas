unit uControllerPedido;

interface

uses
  uPedido,
  uEnums,
  uItensPedido,
  System.Generics.Collections;

type
  TControllerPedido = class
  private
    FPedido: TPedido;
    FOperacaoCadastro: TOperacaoCadastro;
    FListaItens: TObjectList<TItensPedido>;

    function GravarItens(const pNrPedido: Integer): Boolean;
    function CarregaListaItens(const pNrPedido: Integer): Boolean;
  public
    property Pedido: TPedido read FPedido write FPedido;
    property OperacaoCadastro: TOperacaoCadastro read FOperacaoCadastro write FOperacaoCadastro;
    property ListaItens: TObjectList<TItensPedido> read FListaItens;

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function CarregarDados(const pNrPedido: Integer): Boolean;
    function Excluir(const pNrPedido: Integer): Boolean;
    procedure Limpar;

  end;

implementation

uses
  System.SysUtils,
  FireDAC.Comp.Client,
  uDBConfig;

{ TControllerPedido }

function TControllerPedido.CarregaListaItens(const pNrPedido: Integer): Boolean;
var
  lItem: TItensPedido;
begin
  Result := False;

  lItem := TItensPedido.Create;
  try
    Result := lItem.AlimentaListaPorNrPed(FListaItens, pNrPedido);
  finally
    lItem.Free;
  end;
end;

function TControllerPedido.CarregarDados(const pNrPedido: Integer): Boolean;
begin
  Result := False;

  try

    FPedido.NumeroPedido := pNrPedido;
    Result := ((FPedido.CarregaPorNrPed) and (CarregaListaItens(pNrPedido)));

  except
    on E: Exception do
    begin
      raise Exception.CreateFmt('Erro ao carregar pedido: %s', [E.Message]);
    end;
  end;

end;

constructor TControllerPedido.Create;
begin
  FPedido := TPedido.Create;
  FListaItens := TObjectList<TItensPedido>.Create;
end;

destructor TControllerPedido.Destroy;
begin
  FPedido.Free;
  FListaItens.Free;
  inherited;
end;

function TControllerPedido.Excluir(const pNrPedido: Integer): Boolean;
begin
  Result := False;

  try

    FPedido.NumeroPedido := pNrPedido;
    Result := FPedido.Excluir; // FK CASCADE ON DELETE no banco exclui os itens associados

  except
    on E: Exception do
    begin
      raise Exception.CreateFmt('Erro ao excluir pedido: %s', [E.Message]);
    end;
  end;
end;

function TControllerPedido.Gravar: Boolean;
var
  lConnection: TFDConnection;
  lGravou: Boolean;
  lLog: String;
begin

  Result := False;
  lGravou := False;
  lLog := '';

  lConnection := TDBConfig.Connection;
  lConnection.StartTransaction;
  try

    case FOperacaoCadastro of

      ocIncluir:
        begin
          lGravou := FPedido.Inserir(True);
          lLog := 'Inclusão do Pedido'
        end;

      ocAlterar:
        begin
          lGravou := FPedido.Alterar;
          lLog := 'Alteração do Pedido';
        end;
    end;

    if ((lGravou) and (FPedido.NumeroPedido > 0)) then
    begin
      if not(GravarItens(FPedido.NumeroPedido)) then
        raise Exception.CreateFmt('Falha ao Cadastrar itens para o pedido %d', [FPedido.NumeroPedido]);
    end;

    lConnection.Commit;
    Result := True;

  except
    on E: Exception do
    begin
      lConnection.Rollback;
      raise Exception.CreateFmt('Falha na %s: %s', [lLog, E.Message]);
    end;
  end;
end;

function TControllerPedido.GravarItens(const pNrPedido: Integer): Boolean;
var
  lItem: TItensPedido;
begin
  Result := False;
  lItem := TItensPedido.Create;

  if (FOperacaoCadastro = ocAlterar) then
    lItem.ExcluirTudoPorNrPed(pNrPedido);

  lItem.InserirEmLote(FListaItens, pNrPedido);

  Result := True;
end;

procedure TControllerPedido.Limpar;
begin
  FPedido.Limpar;
  FListaItens.Clear;
end;

end.
