unit uSpQuery;

interface

uses
  FireDAC.Comp.Client,
  FireDAC.Stan.Def,
  System.Classes;

type
  TSpQuery = class(TFDQuery)
  public
    constructor Create(pOwner: TComponent); override;
  end;

implementation

{ TSpQuery }

uses uDBConfig;

constructor TSpQuery.Create(pOwner: TComponent);
begin
  inherited Create(pOwner);
  Connection := TDBConfig.Connection;
end;

end.
