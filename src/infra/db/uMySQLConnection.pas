unit uMySQLConnection;

interface

uses
  System.SysUtils,
  FireDAC.Comp.Client,
  FireDAC.Stan.Def,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  uIDBConnection;

type
  TMySQLConnection = class(TInterfacedObject, IDBConnection)
  private
    FConnection: TFDConnection;
    procedure SetParams;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Connect;
    function GetConnection: TFDConnection;
  end;

implementation

{ TMySQLConnection }

procedure TMySQLConnection.Connect;
begin
  try
    SetParams;
    FConnection.Connected := True;
  except
    on E: Exception do
    begin
      raise Exception.CreateFmt(
        'Falha ao conectar com o banco de dados [%s]: %s',
        [FConnection.Params.Values['Database'], E.Message]
        );
    end;
  end;
end;

constructor TMySQLConnection.Create;
begin
  FConnection := TFDConnection.Create(nil);
end;

destructor TMySQLConnection.Destroy;
begin
  FConnection.Free;
  inherited;
end;

function TMySQLConnection.GetConnection: TFDConnection;
begin
  if (not Assigned(FConnection)) or (not FConnection.Connected) then
    raise Exception.Create('Falha ao obter a conexão com o banco de dados!');

  Result := FConnection;
end;

procedure TMySQLConnection.SetParams;
begin
  with FConnection.Params do
  begin
    DriverID := 'MySQL';
    Values['Server'] := 'localhost';
    Database := 'sistema_pedidos';
    UserName := 'root';
    Password := 'Study@2021!';
    Values['Port'] := '3306';
    Values['VendorLib'] := 'libmariadb.dll';
    Values['CharacterSet'] := 'utf8mb4';
  end;
  FConnection.LoginPrompt := False;
end;

end.
