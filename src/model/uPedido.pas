unit uPedido;

interface

uses
  Data.DB;

type
  TPedido = class
  private
    FNumeroPedido: Integer;
    FDataEmissao: TDateTime;
    FCodigoCliente: Integer;
    FValorTotal: Currency;

    procedure PopularCampos(pFieldList: TFieldList);
  public
    property NumeroPedido: Integer read FNumeroPedido write FNumeroPedido;
    property DataEmissao: TDateTime read FDataEmissao write FDataEmissao;
    property CodigoCliente: Integer read FCodigoCliente write FCodigoCliente;
    property ValorTotal: Currency read FValorTotal write FValorTotal;

    constructor Create;

    procedure Limpar;
    function CarregaPorNrPed: Boolean;
    function Inserir(const pBuscarId: Boolean = False): Boolean;
    function Alterar: Boolean;
    function Excluir: Boolean;

    class function CheckPorNrPed(const pNrPed: Integer): Boolean;
  end;

implementation

uses
  uSpQuery;

{ TPedido }

function TPedido.Alterar: Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add(' UPDATE tbl_pedidos SET        ');
    lQuery.SQL.Add(' data_emissao = :DATA,         ');
    lQuery.SQL.Add(' codigo_cliente = :COD_CLI,    ');
    lQuery.SQL.Add(' valor_total = :VALOR          ');
    lQuery.SQL.Add(' WHERE numero_pedido = :NR_PED ');

    lQuery.ParamByName('DATA').AsDateTime := FDataEmissao;
    lQuery.ParamByName('COD_CLI').AsInteger := FCodigoCliente;
    lQuery.ParamByName('VALOR').AsCurrency := FValorTotal;
    lQuery.ParamByName('NR_PED').AsInteger := FNumeroPedido;

    lQuery.ExecSQL;

    Result := True;

  finally
    lQuery.Free;
  end;

end;

function TPedido.CarregaPorNrPed: Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add('SELECT * FROM tbl_pedidos WHERE numero_pedido = :NR');
    lQuery.ParamByName('NR').AsInteger := FNumeroPedido;

    if not(lQuery.IsEmpty) then
    begin
      PopularCampos(lQuery.FieldList);
      Result := True;
    end;

  finally
    lQuery.Free;
  end;

end;

class
  function TPedido.CheckPorNrPed(const pNrPed: Integer): Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add('SELECT numero_pedido FROM tbl_pedidos WHERE numero_pedido = :NR');
    lQuery.ParamByName('NR').AsInteger := pNrPed;

    Result := (not lQuery.IsEmpty);

  finally
    lQuery.Free;
  end;

end;

constructor TPedido.Create;
begin
  Limpar;
end;

function TPedido.Excluir: Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add(' DELETE FROM tbl_pedidos ');
    lQuery.SQL.Add(' WHERE numero_pedido = :NR_PED ');
    lQuery.ParamByName('NR_PED').AsInteger := FNumeroPedido;

    lQuery.ExecSQL;

    Result := True;

  finally
    lQuery.Free;
  end;

end;

function TPedido.Inserir(const pBuscarId: Boolean): Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add(' INSERT INTO tbl_pedidos (data_emissao, codigo_cliente, valor_total) ');
    lQuery.SQL.Add(' VALUES (:DATA, :COD_CLI, :VALOR) ');

    lQuery.ParamByName('DATA').AsDateTime := FDataEmissao;
    lQuery.ParamByName('COD_CLI').AsInteger := FCodigoCliente;
    lQuery.ParamByName('VALOR').AsCurrency := FValorTotal;

    lQuery.ExecSQL;

    Result := True;

    if ((Result) and (pBuscarId)) then
    begin

      lQuery.SQL.Clear;
      lQuery.Open('SELECT LAST_INSERT_ID() AS ID');
      FNumeroPedido := lQuery.FieldByName('ID').AsInteger;

    end;

  finally
    lQuery.Free;
  end;
end;

procedure TPedido.Limpar;
begin
  FNumeroPedido := 0;
  FDataEmissao := 0;
  FCodigoCliente := 0;
  FValorTotal := 0;
end;

procedure TPedido.PopularCampos(pFieldList: TFieldList);
begin
  FNumeroPedido := pFieldList.FieldByName('numero_pedido').AsInteger;
  FDataEmissao := pFieldList.FieldByName('data_emissao').AsDateTime;
  FCodigoCliente := pFieldList.FieldByName('codigo_cliente').AsInteger;
  FValorTotal := pFieldList.FieldByName('valor_total').AsCurrency;
end;

end.
