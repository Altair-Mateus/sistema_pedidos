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

    function TextoCarregaPorCodigo: String;

  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property PrecoVenda: Currency read FPrecoVenda write FPrecoVenda;

    constructor Create;

    procedure Limpar;
    function CarregaPorCodigo: Boolean;

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

function TProduto.TextoCarregaPorCodigo: String;
begin
  Result := 'SELECT * FROM tbl_produtos WHERE codigo = :COD';
end;

end.
