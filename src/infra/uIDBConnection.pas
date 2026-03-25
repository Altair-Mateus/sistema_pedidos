unit uIDBConnection;

interface

uses
  FireDAC.Comp.Client;

type
  IDBConnection = interface
    ['{01FA859F-869B-410F-9BBF-EE97E7620D57}']
    procedure Connect;
    function GetConnection: TFDConnection;
  end;

implementation

end.
