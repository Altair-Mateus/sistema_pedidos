unit fConsultaCliente;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  uSpQuery;

type
  TfrmConsultaCliente = class(TForm)
    dsGrid: TDataSource;
    pnlPrincipal: TPanel;
    pnlTitulo: TPanel;
    pnlFundoFiltros: TPanel;
    pnlFiltros: TPanel;
    lblPesquisar: TLabel;
    lblOrdemConsulta: TLabel;
    pnlImgFIltros: TPanel;
    imgFiltros: TImage;
    edtPesquiar: TEdit;
    chkOrdemDecrescente: TCheckBox;
    chkPesquisaNaoExata: TCheckBox;
    cbxOrdemConsulta: TComboBox;
    pnlRodape: TPanel;
    btnSelecionar: TButton;
    pnlGrd: TPanel;
    grdClientes: TDBGrid;
    procedure PesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FTelaAtiva: Boolean;
    FQuery: TSpQuery;

    procedure CriarObjetos;
    procedure DestruirObjetos;
    procedure InicializarTela;
    procedure InicializaVariaveisControle;
    procedure InicializaFiltros;
    procedure InicializaCbxOrdem;

    procedure Pesquisar;

  public
    function RetornaCodigo: String;
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

{$R *.dfm}

{ TfrmConsultaCliente }

procedure TfrmConsultaCliente.CriarObjetos;
begin
  FQuery := TSpQuery.Create(nil)
end;

procedure TfrmConsultaCliente.DestruirObjetos;
begin
  FQuery.Free;
end;

procedure TfrmConsultaCliente.FormCreate(Sender: TObject);
begin
  InicializaVariaveisControle;
  CriarObjetos;
end;

procedure TfrmConsultaCliente.FormDestroy(Sender: TObject);
begin
  DestruirObjetos;
end;

procedure TfrmConsultaCliente.FormShow(Sender: TObject);
begin
  InicializarTela;
end;

procedure TfrmConsultaCliente.InicializaCbxOrdem;
begin
  cbxOrdemConsulta.Items.AddStrings(['Código', 'Nome']);
end;

procedure TfrmConsultaCliente.InicializaFiltros;
begin
  chkOrdemDecrescente.Checked := False;
  chkPesquisaNaoExata.Checked := True;
  cbxOrdemConsulta.ItemIndex := 0;
end;

procedure TfrmConsultaCliente.InicializarTela;
begin
  InicializaCbxOrdem;
  InicializaFiltros;

  edtPesquiar.SetFocus;
  Pesquisar;
  FTelaAtiva := True;
end;

procedure TfrmConsultaCliente.InicializaVariaveisControle;
begin
  FTelaAtiva := False;
end;

procedure TfrmConsultaCliente.PesquisaClick(Sender: TObject);
begin
  if (FTelaAtiva) then
    Pesquisar;
end;

procedure TfrmConsultaCliente.Pesquisar;
var
  lFiltroEdit: String;
  lCampo: String;
  lEdtAlimentado: Boolean;
begin

  lFiltroEdit := '';
  lCampo := '';
  lEdtAlimentado := (not Trim(edtPesquiar.Text).IsEmpty);

  if (Assigned(FQuery)) then
    FreeAndNil(FQuery);

  FQuery := TSpQuery.Create(nil);

  try

    case cbxOrdemConsulta.ItemIndex of
      0:
        lCampo := ' codigo ';
      1:
        lCampo := ' nome ';
    end;

    FQuery.SQL.Add('SELECT * FROM tbl_clientes ');
    FQuery.SQL.Add(' WHERE 1 = 1 ');

    if ((lEdtAlimentado) and (cbxOrdemConsulta.ItemIndex >= 0)) then
    begin
      if (chkPesquisaNaoExata.Checked) then
      begin
        FQuery.SQL.Add(' AND ' + lCampo + ' LIKE :VALOR ');
        FQuery.ParamByName('VALOR').AsString := '%' + Trim(edtPesquiar.Text) + '%';
      end
      else
      begin
        FQuery.SQL.Add(' AND ' + lCampo + ' LIKE :VALOR ');
        FQuery.ParamByName('VALOR').AsString := Trim(edtPesquiar.Text) + '%';
      end;
    end;

    FQuery.SQL.Add(' ORDER BY ' + lCampo);

    if (chkOrdemDecrescente.Checked) then
      FQuery.SQL.Add(' DESC');

    FQuery.Open;

    dsGrid.DataSet := FQuery;
    dsGrid.DataSet.First;

  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('Erro ao realizar consulta: '#13 + E.Message), 'Erro!', MB_OK or MB_ICONERROR);
    end;
  end;

end;

function TfrmConsultaCliente.RetornaCodigo: String;
begin
  Result := '';

  if not(grdClientes.DataSource.DataSet.IsEmpty) then
    Result := grdClientes.DataSource.DataSet.FieldByName('codigo').AsString;
end;

end.
