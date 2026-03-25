unit uProduto;

interface

uses
  Data.DB;

type
  TProduto = class
  private
    FCodigo: Integer;
    FDescricao: string;
    FPrecoVenda: Currency;

    procedure PopularCampos(pFieldList: TFieldList);
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property PrecoVenda: Currency read FPrecoVenda write FPrecoVenda;

    constructor Create;

    procedure Limpar;
    function CarregaPorCodigo: Boolean;

    class function CheckPorCodigo(const pCodigo: Integer): Boolean;
  end;

implementation

{ TProduto }

uses
  uSpQuery;

function TProduto.CarregaPorCodigo: Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add('SELECT * FROM tbl_produtos WHERE codigo = :COD');
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

class function TProduto.CheckPorCodigo(const pCodigo: Integer): Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add('SELECT codigo FROM tbl_produtos WHERE codigo = :COD');
    lQuery.ParamByName('COD').AsInteger := pCodigo;

    Result := (not lQuery.IsEmpty);

  finally
    lQuery.Free;
  end;

end;

constructor TProduto.Create;
begin
  Limpar;
end;

procedure TProduto.Limpar;
begin
  FCodigo := 0;
  FDescricao := '';
  FPrecoVenda := 0;
end;

procedure TProduto.PopularCampos(pFieldList: TFieldList);
begin
  FCodigo := pFieldList.FieldByName('codigo').AsInteger;
  FDescricao := pFieldList.FieldByName('descricao').AsString;
  FPrecoVenda := pFieldList.FieldByName('preco_venda').AsCurrency;
end;

end.
