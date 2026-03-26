unit uItensPedido;

interface

uses
  Data.DB,
  System.Generics.Collections;

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

    function TextoInserir: String;
    function TextoExcluir: String;
    function TextoExcluirPorNrPed: String;
    function TextoAlterar: String;
    function TextoCarregaPorCodigo: String;
    function TextoCarregaPorNrPed: String;

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

    function InserirEmLote(const pLista: TObjectList<TItensPedido>; const pNrPedido: Integer): Boolean;
    function AlimentaListaPorNrPed(const pLista: TObjectList<TItensPedido>; const pNrPedido: Integer): Boolean;
    function ExcluirTudoPorNrPed(const pNrPedido: Integer): Boolean;

  end;

implementation

{ TItensPedido }

uses
  uSpQuery,
  System.SysUtils;

function TItensPedido.AlimentaListaPorNrPed(
  const pLista: TObjectList<TItensPedido>; const pNrPedido: Integer): Boolean;
var
  lQuery: TSpQuery;
  lItem: TItensPedido;
begin
  Result := False;

  if ((not Assigned(pLista)) or (pNrPedido <= 0)) then
    Exit;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Text := TextoCarregaPorNrPed;
    lQuery.ParamByName('NR_PED').AsInteger := pNrPedido;

    lQuery.Open;

    while not(lQuery.Eof) do
    begin

      lItem := TItensPedido.Create;
      try
        lItem.PopularCampos(lQuery.FieldList);
        pLista.Add(lItem);
      except
        on E: Exception do
        begin
          lItem.Free;
          raise;
        end;
      end;

      lQuery.Next;
    end;

    Result := True;

  finally
    lQuery.Free;
  end;
end;

function TItensPedido.Alterar: Boolean;
var
  lQuery: TSpQuery;
begin
  Result := False;
  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Text := TextoAlterar;

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

    lQuery.SQL.Text := TextoCarregaPorCodigo;
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

    lQuery.SQL.Text := TextoExcluir;
    lQuery.ParamByName('COD').AsInteger := FCodigo;

    lQuery.ExecSQL;

    Result := True;

  finally
    lQuery.Free;
  end;

end;

function TItensPedido.ExcluirTudoPorNrPed(const pNrPedido: Integer): Boolean;
var
  lQuery: TSpQuery;
begin
  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Text := TextoExcluirPorNrPed;
    lQuery.ParamByName('NR_PED').AsInteger := pNrPedido;

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

    lQuery.SQL.Text := TextoInserir;

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

function TItensPedido.InserirEmLote(
  const pLista: TObjectList<TItensPedido>; const pNrPedido: Integer): Boolean;
var
  lQuery: TSpQuery;
  I: Integer;
  lTamanhoLista: Integer;
begin

  Result := False;
  lTamanhoLista := 0;

  if not(Assigned(pLista)) then
    Exit;

  lTamanhoLista := pLista.Count;
  if not(lTamanhoLista > 0) then
    Exit;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Text := TextoInserir;

    lQuery.Params.ArraySize := lTamanhoLista;

    for I := 0 to Pred(lTamanhoLista) do
    begin

      lQuery.ParamByName('NR_PED').AsIntegers[I] := pNrPedido;
      lQuery.ParamByName('COD_PROD').AsIntegers[I] := pLista[I].FCodigoProduto;
      lQuery.ParamByName('QTD').AsCurrencys[I] := pLista[I].FQuantidade;
      lQuery.ParamByName('V_UNIT').AsCurrencys[I] := pLista[I].FValorUnitario;
      lQuery.ParamByName('V_TOTAL').AsCurrencys[I] := pLista[I].FValorTotal;

    end;

    lQuery.Execute(lQuery.Params.ArraySize);

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

function TItensPedido.TextoAlterar: String;
begin
  Result := ' UPDATE tbl_pedido_itens SET ' +
    ' numero_pedido = :NR_PED,    ' +
    ' codigo_produto = :COD_PROD, ' +
    ' quantidade = :QTD,          ' +
    ' valor_unitario = :V_UNIT,   ' +
    ' valor_total = :V_TOTAL      ' +
    ' WHERE codigo = :COD         ';
end;

function TItensPedido.TextoCarregaPorCodigo: String;
begin
  Result := 'SELECT * FROM tbl_pedido_itens WHERE codigo = :COD';
end;

function TItensPedido.TextoCarregaPorNrPed: String;
begin
  Result := 'SELECT * FROM tbl_pedido_itens WHERE numero_pedido = :NR_PED';
end;

function TItensPedido.TextoExcluir: String;
begin
  Result := ' DELETE FROM tbl_pedido_itens WHERE codigo = :COD ';
end;

function TItensPedido.TextoExcluirPorNrPed: String;
begin
  Result := ' DELETE FROM tbl_pedido_itens WHERE numero_pedido = :NR_PED ';
end;

function TItensPedido.TextoInserir: String;
begin
  Result := ' INSERT INTO tbl_pedido_itens ' +
    ' (numero_pedido, codigo_produto, quantidade, valor_unitario, valor_total) ' +
    ' VALUES (:NR_PED, :COD_PROD, :QTD, :V_UNIT, :V_TOTAL)';
end;

end.
