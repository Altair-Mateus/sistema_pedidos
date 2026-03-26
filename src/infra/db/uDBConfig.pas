unit uDBConfig;

interface

uses
  FireDAC.Comp.Client,
  uIDBConnection;

type
  TDBConfig = class
  private
    class var FConnection: TFDConnection;
    class var FDBConnection: IDBConnection;
  public
    class procedure Init(pConnection: IDBConnection);
    class function Connection: TFDConnection;
  end;

implementation

{ TDBConfig }

class function TDBConfig.Connection: TFDConnection;
begin
  Result := FConnection;
end;

class procedure TDBConfig.Init(pConnection: IDBConnection);
begin
  FDBConnection := pConnection;
  FDBConnection.Connect;
  FConnection := FDBConnection.GetConnection;
end;

end.
