unit uCliente;

interface

uses
  Data.DB,
  FireDAC.Stan.Param,
  FireDAC.DApt;

type
  TCliente = class
  private
    FCodigo: Integer;
    FNome: string;
    FCidade: string;
    FUf: string;

    procedure PopularCampos(pFieldList: TFieldList);

    function TextoCarregaPorCodigo: String;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Cidade: string read FCidade write FCidade;
    property Uf: string read FUf write FUf;

    constructor Create;

    procedure Limpar;
    function CarregaPorCodigo: Boolean;

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

    lQuery.SQL.Text := 'SELECT * FROM tbl_clientes WHERE codigo = :COD';
    lQuery.ParamByName('COD').AsInteger := FCodigo;

    lQuery.Open;

    if not(lQuery.IsEmpty) then
    begin
      PopularCampos(lQuery.FieldList);
      Result := True;
    end;

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

function TCliente.TextoCarregaPorCodigo: String;
begin

end;

end.
