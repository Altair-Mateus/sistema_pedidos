unit uItensPedido;

interface

uses
  Data.DB;

type
  TItensPedido = class
  private
    FCodigo: Integer;
    FNumeroPedido: Integer;
    FCodigoProduto: Integer;
    FQuantidade: Currency;
    FValorUnitario: Currency;
    FValorTotal: Currency;

    procedure PopularCampos(pFieldList: TFieldList);
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property NumeroPedido: Integer read FNumeroPedido write FNumeroPedido;
    property CodigoProduto: Integer read FCodigoProduto write FCodigoProduto;
    property Quantidade: Currency read FQuantidade write FQuantidade;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;
    property ValorTotal: Currency read FValorTotal write FValorTotal;

    constructor Create;

    procedure Limpar;
    function CarregaPorCodigo: Boolean;
    function Inserir: Boolean;
    function Alterar: Boolean;
    function Excluir: Boolean;

  end;

implementation

{ TItensPedido }

uses
  uSpQuery;

function TItensPedido.Alterar: Boolean;
var
  lQuery: TSpQuery;
begin
  Result := False;
  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add(' UPDATE tbl_pedido_itens SET ');
    lQuery.SQL.Add(' numero_pedido = :NR_PED,    ');
    lQuery.SQL.Add(' codigo_produto = :COD_PROD, ');
    lQuery.SQL.Add(' quantidade = :QTD,          ');
    lQuery.SQL.Add(' valor_unitario = :V_UNIT,   ');
    lQuery.SQL.Add(' valor_total = :V_TOTAL      ');
    lQuery.SQL.Add(' WHERE codigo = :COD         ');

    lQuery.ParamByName('NR_PED').AsInteger := FNumeroPedido;
    lQuery.ParamByName('COD_PROD').AsInteger := FCodigoProduto;
    lQuery.ParamByName('QTD').AsCurrency := FQuantidade;
    lQuery.ParamByName('V_UNIT').AsCurrency := FValorUnitario;
    lQuery.ParamByName('V_TOTAL').AsCurrency := FValorTotal;
    lQuery.ParamByName('COD').AsInteger := FCodigo;

    lQuery.ExecSQL;

    Result := True;

  finally
    lQuery.Free;
  end;

end;

function TItensPedido.CarregaPorCodigo: Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add('SELECT * FROM tbl_pedido_itens WHERE codigo = :COD');
    lQuery.ParamByName('COD').AsInteger := FCodigo;

    if not(lQuery.IsEmpty) then
    begin
      PopularCampos(lQuery.FieldList);
      Result := True;
    end;

  finally
    lQuery.Free;
  end;

end;

constructor TItensPedido.Create;
begin
  Limpar;
end;

function TItensPedido.Excluir: Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add(' DELETE FROM tbl_pedido_itens ');
    lQuery.SQL.Add(' WHERE codigo = :COD ');
    lQuery.ParamByName('COD').AsInteger := FCodigo;

    lQuery.ExecSQL;

    Result := True;

  finally
    lQuery.Free;
  end;

end;

function TItensPedido.Inserir: Boolean;
var
  lQuery: TSpQuery;
begin
  Result := False;
  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add(' INSERT INTO tbl_pedido_itens ');
    lQuery.SQL.Add(' (numero_pedido, codigo_produto, quantidade, valor_unitario, valor_total) ');
    lQuery.SQL.Add(' VALUES (:NR_PED, :COD_PROD, :QTD, :V_UNIT, :V_TOTAL)');

    lQuery.ParamByName('NR_PED').AsInteger := FNumeroPedido;
    lQuery.ParamByName('COD_PROD').AsInteger := FCodigoProduto;
    lQuery.ParamByName('QTD').AsCurrency := FQuantidade;
    lQuery.ParamByName('V_UNIT').AsCurrency := FValorUnitario;
    lQuery.ParamByName('V_TOTAL').AsCurrency := FValorTotal;

    lQuery.ExecSQL;

    Result := True;

  finally
    lQuery.Free;
  end;
end;

procedure TItensPedido.Limpar;
begin
  FCodigo := 0;
  FNumeroPedido := 0;
  FCodigoProduto := 0;
  FQuantidade := 0;
  FValorUnitario := 0;
  FValorTotal := 0;
end;

procedure TItensPedido.PopularCampos(pFieldList: TFieldList);
begin
  FCodigo := pFieldList.FieldByName('codigo').AsInteger;
  FNumeroPedido := pFieldList.FieldByName('numero_pedido').AsInteger;
  FCodigoProduto := pFieldList.FieldByName('codigo_produto').AsInteger;
  FQuantidade := pFieldList.FieldByName('quantidade').AsCurrency;
  FValorUnitario := pFieldList.FieldByName('valor_unitario').AsCurrency;
  FValorTotal := pFieldList.FieldByName('valor_total').AsCurrency;
end;

end.
