unit fConsultaProduto;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  uSpQuery;

type
  TfrmConsultaProduto = class(TForm)
    pnlPrincipal: TPanel;
    pnlTitulo: TPanel;
    pnlFundoFiltros: TPanel;
    pnlFiltros: TPanel;
    pnlImgFIltros: TPanel;
    imgFiltros: TImage;
    lblPesquisar: TLabel;
    edtPesquiar: TEdit;
    chkOrdemDecrescente: TCheckBox;
    chkPesquisaNaoExata: TCheckBox;
    lblOrdemConsulta: TLabel;
    cbxOrdemConsulta: TComboBox;
    pnlRodape: TPanel;
    btnSelecionar: TButton;
    pnlGrd: TPanel;
    grdProdutos: TDBGrid;
    dsGrid: TDataSource;
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
  frmConsultaProduto: TfrmConsultaProduto;

implementation

{$R *.dfm}

{ TfrmConsultaProduto }

procedure TfrmConsultaProduto.CriarObjetos;
begin
  FQuery := TSpQuery.Create(nil)
end;

procedure TfrmConsultaProduto.DestruirObjetos;
begin
  FQuery.Free;
end;

procedure TfrmConsultaProduto.FormCreate(Sender: TObject);
begin
  InicializaVariaveisControle;
  CriarObjetos;
end;

procedure TfrmConsultaProduto.FormDestroy(Sender: TObject);
begin
  DestruirObjetos;
end;

procedure TfrmConsultaProduto.FormShow(Sender: TObject);
begin
  InicializarTela;
end;

procedure TfrmConsultaProduto.InicializaCbxOrdem;
begin
  cbxOrdemConsulta.Items.AddStrings(['Código', 'Descrição']);
end;

procedure TfrmConsultaProduto.InicializaFiltros;
begin
  chkOrdemDecrescente.Checked := False;
  chkPesquisaNaoExata.Checked := True;
  cbxOrdemConsulta.ItemIndex := 0;
end;

procedure TfrmConsultaProduto.InicializarTela;
begin
  InicializaCbxOrdem;
  InicializaFiltros;

  edtPesquiar.SetFocus;
  Pesquisar;
  FTelaAtiva := True;
end;

procedure TfrmConsultaProduto.InicializaVariaveisControle;
begin
  FTelaAtiva := False;
end;

procedure TfrmConsultaProduto.PesquisaClick(Sender: TObject);
begin
  if (FTelaAtiva) then
    Pesquisar;
end;

procedure TfrmConsultaProduto.Pesquisar;
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
        lCampo := ' descricao ';
    end;

    FQuery.SQL.Add('SELECT * FROM tbl_produtos ');
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
    (TCurrencyField(FQuery.FieldByName('preco_venda'))).DisplayFormat := 'R$ #,##0.00';

    dsGrid.DataSet := FQuery;
    dsGrid.DataSet.First;

  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('Erro ao realizar consulta: '#13 + E.Message), 'Erro!', MB_OK or MB_ICONERROR);
    end;
  end;
end;

function TfrmConsultaProduto.RetornaCodigo: String;
begin
  Result := '';

  if not(grdProdutos.DataSource.DataSet.IsEmpty) then
    Result := grdProdutos.DataSource.DataSet.FieldByName('codigo').AsString;

end;

end.
