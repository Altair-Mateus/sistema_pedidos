unit uDBConfig;

interface

uses
  FireDAC.Comp.Client,
  uIDBConnection;

type
  TDBConfig = class
  private
    class var FConnection: TFDConnection;
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
  pConnection.Connect;
  FConnection := pConnection.GetConnection;
end;

end.
