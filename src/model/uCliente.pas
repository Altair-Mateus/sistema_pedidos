unit uCliente;

interface

uses
  Data.DB;

type
  TCliente = class
  private
    FCodigo: Integer;
    FNome: string;
    FCidade: string;
    FUf: string;

    procedure PopularCampos(pFieldList: TFieldList);
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Cidade: string read FCidade write FCidade;
    property Uf: string read FUf write FUf;

    constructor Create;

    procedure Limpar;
    function CarregaPorCodigo: Boolean;

    class function CheckPorCodigo(const pCodigo: Integer): Boolean;

  end;

implementation

{ TCliente }

uses
  uSpQuery;

function TCliente.CarregaPorCodigo: Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add('SELECT * FROM tbl_clientes WHERE codigo = :COD');
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

class function TCliente.CheckPorCodigo(const pCodigo: Integer): Boolean;
var
  lQuery: TSpQuery;
begin

  Result := False;

  lQuery := TSpQuery.Create(nil);
  try

    lQuery.SQL.Add('SELECT codigo FROM tbl_clientes WHERE codigo = :COD');
    lQuery.ParamByName('COD').AsInteger := pCodigo;

    Result := (not lQuery.IsEmpty);

  finally
    lQuery.Free;
  end;

end;

constructor TCliente.Create;
begin
  Limpar;
end;

procedure TCliente.Limpar;
begin
  FCodigo := 0;
  FNome := '';
  FCidade := '';
  FUf := '';
end;

procedure TCliente.PopularCampos(pFieldList: TFieldList);
begin
  FCodigo := pFieldList.FieldByName('codigo').AsInteger;
  FNome := pFieldList.FieldByName('nome').AsString;
  FCidade := pFieldList.FieldByName('cidade').AsString;
  FUf := pFieldList.FieldByName('uf').AsString;
end;

end.
