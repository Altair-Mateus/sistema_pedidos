unit fEmissaoPedido;

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
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Datasnap.DBClient,
  System.ImageList,
  Vcl.ImgList,
  System.Math,
  uControllerPedido,
  uEnums,
  fConsultaProduto,
  fConsultaCliente;

type
  TModoItem = (miInserindo, miEditando);

  TfrmEmissaoPedido = class(TForm)
    pnlPrincipal: TPanel;
    pnlCliente: TPanel;
    pnlTituloCliente: TPanel;
    pnlImgCliente: TPanel;
    Image1: TImage;
    lblCliente: TLabel;
    pnlDadosCliente: TPanel;
    pnlSelecaoCliente: TPanel;
    pnlFundoPesquisaCliente: TPanel;
    pnlPesquisaCliente: TPanel;
    pnlImgPesquisaCliente: TPanel;
    imgPesquisaCliente: TImage;
    edtCliente: TEdit;
    pnlImgDadosCliente: TPanel;
    imgDadosCliente: TImage;
    lblCodigo: TLabel;
    lblDadosCliente: TLabel;
    pnlProduto: TPanel;
    pnlTItuloProduto: TPanel;
    lblAdProduto: TLabel;
    pnlImgProduto: TPanel;
    imgProduto: TImage;
    pnlDadosProduto: TPanel;
    pnlItens: TPanel;
    pnlTituloItens: TPanel;
    lblItens: TLabel;
    pnlImgItens: TPanel;
    imItens: TImage;
    pnlInfoPedido: TPanel;
    pnlGrd: TPanel;
    grdItens: TDBGrid;
    pnlPesquisaProduto: TPanel;
    pnlLblProduto: TPanel;
    lblProduto: TLabel;
    pnlEdtProduto: TPanel;
    pnlImgPesquisaProduto: TPanel;
    imgPesquisaProduto: TImage;
    edtProduto: TEdit;
    btnBuscarCliente: TButton;
    pnlQtd: TPanel;
    pnlLblQtd: TPanel;
    lblQtd: TLabel;
    pnlEdtQtd: TPanel;
    edtQtd: TEdit;
    pnlInfosProd: TPanel;
    pnlDicaAdProd: TPanel;
    lblDica: TLabel;
    lblDicaEnterProd: TLabel;
    pnlImgDicaAdProd: TPanel;
    imgDicaAdProd: TImage;
    btnBuscarProduto: TButton;
    pnlValorUnit: TPanel;
    pnlLblValorUnit: TPanel;
    lblValorUnit: TLabel;
    pnlEdtValorUnit: TPanel;
    pnlImgValorUnit: TPanel;
    edtValorUnit: TEdit;
    imgValorUnit: TImage;
    btnInserir: TButton;
    dsItens: TDataSource;
    cdsItens: TClientDataSet;
    pnlValorTotal: TPanel;
    pnlImgValorTotal: TPanel;
    imgValorTotal: TImage;
    pnlDadosValorTotal: TPanel;
    lblValorTotal: TLabel;
    lblValorPedido: TLabel;
    pnlBotoes: TPanel;
    imgListBotoes: TImageList;
    cdsItensCodProd: TIntegerField;
    cdsItensDescProd: TStringField;
    cdsItensQtd: TCurrencyField;
    cdsItensValorUnit: TCurrencyField;
    cdsItensValorTotal: TCurrencyField;
    pnlInfoProd: TPanel;
    lblCodProd: TLabel;
    lblInfoProd: TLabel;
    pnlImgInfoProd: TPanel;
    imgInfoProd: TImage;
    pnlPedido: TPanel;
    pnlNrPedido: TPanel;
    pnlLblNrPedido: TPanel;
    lblNrPedido: TLabel;
    pnlEdtNrPedido: TPanel;
    edtNrPedido: TEdit;
    pnlDataPedido: TPanel;
    pnlLblDataPedido: TPanel;
    lblDataPedido: TLabel;
    pnlEdtDataPedido: TPanel;
    edtDataPedido: TEdit;
    btnCancelar: TButton;
    btnGravar: TButton;
    btnCarregar: TButton;
    btnExcluit: TButton;
    btnCancelarPedido: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure edtProdutoExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
    procedure btnExcluitClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure grdItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtValorUnitExit(Sender: TObject);
    procedure edtValorUnitKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdExit(Sender: TObject);
    procedure btnCancelarPedidoClick(Sender: TObject);
    procedure btnBuscarClienteClick(Sender: TObject);
    procedure btnBuscarProdutoClick(Sender: TObject);
  private
    FController: TControllerPedido;
    FTotalItens: Currency;
    FOperacaoCadastro: TOperacaoCadastro;
    FModoItem: TModoItem;

{$REGION 'Funções de Inicialização'}
    procedure InicializarTela;
    procedure InicializaVariaveisControle;
    procedure CriarObjetos;
    procedure DestruirObjetos;
    procedure MostrarDadosPedido(const pVisualizar: Boolean);
    procedure SetModoInserir;
    procedure AtualizarEstadoProduto;
{$ENDREGION}

{$REGION 'Funções dos Botões'}
    procedure IncluirProduto;
    procedure Gravar;
    procedure IncluirItensNaLista;
    procedure CancelarEdicaoItem;
    procedure Carregar;
    procedure Excluir;
    procedure HabilitarBotoes;
    procedure CancelarPedido;
{$ENDREGION}

{$REGION 'Funções para limpar dados da tela'}
    procedure Limpar;
    procedure LimparDadosCliente;
    procedure LimparDadosProduto;
    procedure LimparGrid;
    procedure LimparLabelsCliente;
    procedure LimparLabelsProduto;
{$ENDREGION}

{$REGION 'Funções de Validações Gerais'}
    procedure BuscarCliente;
    procedure BuscarProduto;
    function ValidaAddProduto: Boolean;
    function ValidaGravar: Boolean;
    function CdsAlimentado: Boolean;
{$ENDREGION}

{$REGION 'Funções para alimentar dados'}
    procedure RecalcularTotalPedido;
    procedure DefinirDadosProduto(const pCod: Integer; const pDesc: String; const pValorUnit: Currency);
    procedure CarregarDadosPedido;
    procedure CarregarItens;
{$ENDREGION}

{$REGION 'Funções para o Grid'}
    procedure InserirItemGrid(const pCod: Integer; const pDesc: String; const pQtd, pValorUnit: Currency);
    procedure CarregarItemParaEdicao;
    procedure ExcluirItemSelecionado;
{$ENDREGION}

{$REGION 'Funções para abrir telas auxiliares'}
    function AbreTelaSolicitarNrPedido: Integer;
    procedure AbreTelaCliente;
    procedure AbreTelaProduto;
{$ENDREGION}
  public
    { Public declarations }
  end;

var
  frmEmissaoPedido: TfrmEmissaoPedido;

implementation

{$R *.dfm}


uses
  uCliente,
  uProduto,
  uItensPedido;

{ TfrmEmissaoPedido }

procedure TfrmEmissaoPedido.AbreTelaCliente;
var
  lFormulario: TfrmConsultaCliente;
  lCodigo: String;
begin

  lCodigo := '';
  lFormulario := TfrmConsultaCliente.Create(nil);
  try
    lFormulario.ShowModal;

    if (lFormulario.ModalResult = mrOk) then
    begin
      lCodigo := lFormulario.RetornaCodigo;

      if not(lCodigo.Trim.IsEmpty) then
      begin
        edtCliente.Text := lCodigo;
        BuscarCliente;
      end;
    end;

    edtCliente.SetFocus;
  finally
    lFormulario.Free;
  end;
end;

procedure TfrmEmissaoPedido.AbreTelaProduto;
var
  lFormulario: TfrmConsultaProduto;
  lCodigo: String;
begin

  lCodigo := '';

  lFormulario := TfrmConsultaProduto.Create(nil);
  try

    lFormulario.ShowModal;

    if (lFormulario.ModalResult = mrOk) then
    begin
      lCodigo := lFormulario.RetornaCodigo;

      if not(lCodigo.Trim.IsEmpty) then
      begin
        edtProduto.Text := lCodigo;
        BuscarProduto;
        edtQtd.SetFocus;
        Exit;
      end;
    end;

    edtProduto.SetFocus;

  finally
    lFormulario.Free;
  end;
end;

function TfrmEmissaoPedido.AbreTelaSolicitarNrPedido: Integer;
var
  lValorTexto: String;
  lNrPedido: Integer;
begin

  Result := 0;
  lNrPedido := 0;

  if (InputQuery('Nº Pedido', 'Informe o número do pedido:', lValorTexto)) then
  begin

    if ((not TryStrToInt(lValorTexto, lNrPedido)) or (lNrPedido <= 0)) then
    begin
      Application.MessageBox('Número informado é inválido', 'Atenção!', MB_OK or MB_ICONWARNING);
      Exit;
    end;

    Result := lNrPedido;

  end;

end;

procedure TfrmEmissaoPedido.AtualizarEstadoProduto;
begin
  btnCancelar.Visible := (FModoItem = miEditando);

  if FModoItem = miInserindo then
    btnInserir.Caption := 'Inserir'
  else
    btnInserir.Caption := 'Atualizar';

  edtProduto.Enabled := (FModoItem = miInserindo);
end;

procedure TfrmEmissaoPedido.btnInserirClick(Sender: TObject);
begin
  IncluirProduto;
end;

procedure TfrmEmissaoPedido.btnBuscarClienteClick(Sender: TObject);
begin
  AbreTelaCliente;
end;

procedure TfrmEmissaoPedido.btnBuscarProdutoClick(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TfrmEmissaoPedido.btnCancelarClick(Sender: TObject);
begin
  CancelarEdicaoItem;
end;

procedure TfrmEmissaoPedido.btnCancelarPedidoClick(Sender: TObject);
begin
  CancelarPedido;
end;

procedure TfrmEmissaoPedido.btnCarregarClick(Sender: TObject);
begin
  Carregar;
end;

procedure TfrmEmissaoPedido.btnExcluitClick(Sender: TObject);
begin
  Excluir;
end;

procedure TfrmEmissaoPedido.btnGravarClick(Sender: TObject);
begin
  Gravar;
end;

procedure TfrmEmissaoPedido.BuscarCliente;
var
  lCliente: TCliente;
begin

  LimparLabelsCliente;

  if (Trim(edtCliente.Text).IsEmpty) then
    Exit;

  if (btnBuscarCliente.Focused) then
    Exit;

  lCliente := TCliente.Create;
  try
    lCliente.Codigo := StrToIntDef(Trim(edtCliente.Text), 0);

    if not(lCliente.CarregaPorCodigo) then
    begin
      Application.MessageBox('Não encontramos um cliente com o código informado.', 'Atenção!', MB_OK or MB_ICONWARNING);
      edtCliente.clear;
      edtCliente.SetFocus;
      Exit;
    end;

    lblCodigo.Caption := 'Código:';
    lblDadosCliente.Caption := Format('%d | %s | %s - %s', [lCliente.Codigo, lCliente.Nome, lCliente.Cidade,
      lCliente.Uf]);

  finally
    lCliente.Free;
  end;

end;

procedure TfrmEmissaoPedido.BuscarProduto;
var
  lProduto: TProduto;
begin

  if (Trim(edtProduto.Text).IsEmpty) then
    Exit;

  if (btnInserir.Focused) then
    Exit;

  lProduto := TProduto.Create;
  try

    lProduto.Codigo := StrToIntDef(Trim(edtProduto.Text), 0);

    if not(lProduto.CarregaPorCodigo) then
    begin
      Application.MessageBox('Não encontramos um produto com o código informado.', 'Atenção!', MB_OK or MB_ICONWARNING);
      edtProduto.clear;
      edtProduto.SetFocus;
      Exit;
    end;

    DefinirDadosProduto(lProduto.Codigo, lProduto.Descricao, lProduto.PrecoVenda);

  finally
    lProduto.Free;
  end;
end;

procedure TfrmEmissaoPedido.CancelarEdicaoItem;
begin
  SetModoInserir;
  LimparDadosProduto;
  AtualizarEstadoProduto;
  grdItens.Enabled := True;
  cdsItens.First;
  edtProduto.SetFocus;
end;

procedure TfrmEmissaoPedido.Carregar;
var
  lNrPedido: Integer;
begin

  lNrPedido := AbreTelaSolicitarNrPedido;

  if (lNrPedido <= 0) then
    Exit;

  try

    FOperacaoCadastro := ocAlterar;

    if (FController.CarregarDados(lNrPedido)) then
    begin
      CarregarDadosPedido;
      MostrarDadosPedido(True);
    end
    else
    begin
      Application.MessageBox('Não foi possível localizar o pedido.', 'Atenção!', MB_OK or MB_ICONEXCLAMATION);
    end;

    HabilitarBotoes;

  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('Erro ao carregar Pedido: '#13 + E.Message), 'Erro!', MB_OK or MB_ICONERROR);
    end;
  end;

end;

procedure TfrmEmissaoPedido.CarregarDadosPedido;
begin
  edtNrPedido.Text := FController.Pedido.NumeroPedido.ToString;
  edtDataPedido.Text := DateTimeToStr(FController.Pedido.DataEmissao);
  edtCliente.Text := FController.Pedido.CodigoCliente.ToString;

  CarregarItens;
  BuscarCliente;
end;

procedure TfrmEmissaoPedido.CarregarItemParaEdicao;
begin
  if not(CdsAlimentado) then
    Exit;

  grdItens.Enabled := False;

  FModoItem := miEditando;

  edtProduto.Text := cdsItensCodProd.AsString;
  edtQtd.Text := cdsItensQtd.AsString;
  edtValorUnit.Text := cdsItensValorUnit.AsString;
  lblInfoProd.Caption := cdsItensDescProd.AsString;
  lblCodProd.Caption := Format('Código: %d - ', [cdsItensCodProd.AsInteger]);

  AtualizarEstadoProduto;
  edtQtd.SetFocus;

end;

procedure TfrmEmissaoPedido.CarregarItens;
var
  lItem: TItensPedido;
begin
  try
    for lItem in FController.ListaItens do
    begin

      InserirItemGrid(
        lItem.CodigoProduto,
        lItem.DescProduto,
        lItem.Quantidade,
        lItem.ValorUnitario
        );

    end;
  finally
    FController.LimparLista;
  end;

end;

function TfrmEmissaoPedido.CdsAlimentado: Boolean;
begin
  Result := (not cdsItens.IsEmpty)
end;

procedure TfrmEmissaoPedido.CriarObjetos;
begin
  FController := TControllerPedido.Create;
  InicializaVariaveisControle;
end;

procedure TfrmEmissaoPedido.DefinirDadosProduto(const pCod: Integer;
  const pDesc: String; const pValorUnit: Currency);
begin
  lblCodProd.Caption := Format('Código: %d - ', [pCod]);
  lblInfoProd.Caption := pDesc;
  edtQtd.Text := '1';
  edtValorUnit.Text := Format('%.2f', [pValorUnit])
end;

procedure TfrmEmissaoPedido.LimparLabelsCliente;
begin
  lblCodigo.Caption := '';
  lblDadosCliente.Caption := '';
end;

procedure TfrmEmissaoPedido.LimparLabelsProduto;
begin
  lblCodProd.Caption := '';
  lblInfoProd.Caption := '';
end;

procedure TfrmEmissaoPedido.DestruirObjetos;
begin
  FController.Free;
end;

procedure TfrmEmissaoPedido.edtClienteExit(Sender: TObject);
begin
  BuscarCliente;
  HabilitarBotoes;
end;

procedure TfrmEmissaoPedido.edtProdutoExit(Sender: TObject);
begin
  BuscarProduto;
end;

procedure TfrmEmissaoPedido.edtQtdExit(Sender: TObject);
var
  lQtd: Currency;
begin
  if TryStrToCurr(edtQtd.Text, lQtd) then
    edtQtd.Text := FormatFloat('0.###', lQtd);
end;

procedure TfrmEmissaoPedido.edtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = '.') then
    Key := ',';

  if not(CharInSet(Key, ['0' .. '9', ',', #8])) then
    Key := #0;

  if (Key = ',') and (Pos(',', TEdit(Sender).Text) > 0) then
    Key := #0;
end;

procedure TfrmEmissaoPedido.edtValorUnitExit(Sender: TObject);
var
  lValor: Currency;
begin
  if TryStrToCurr(edtValorUnit.Text, lValor) then
    edtValorUnit.Text := FormatFloat('0.00', lValor);
end;

procedure TfrmEmissaoPedido.edtValorUnitKeyPress(Sender: TObject;
  var Key: Char);
begin

  if not(CharInSet(Key, ['0' .. '9', ',', #8])) then
    Key := #0;

  if (Key = ',') and (Pos(',', TEdit(Sender).Text) > 0) then
    Key := #0;
end;

procedure TfrmEmissaoPedido.Excluir;
var
  lNrPedido: Integer;
begin

  lNrPedido := AbreTelaSolicitarNrPedido;

  if (lNrPedido <= 0) then
    Exit;

  try

    if not(FController.ExistePedido(lNrPedido)) then
    begin
      Application.MessageBox('Pedido informado não existe ou já foi excluído', 'Atenção!', MB_OK or MB_ICONERROR);
      Exit;
    end;

    if (Application.MessageBox(
      PChar('Deseja realmente excluir o pedido nº ' + IntToStr(lNrPedido) + '?'),
      'Confirmação',
      MB_YESNO + MB_ICONQUESTION
      ) = IDYES) then
    begin

      if (FController.Excluir(lNrPedido)) then
      begin
        Limpar;
        LimparGrid;
        Application.MessageBox('Pedido excluído com sucesso!', 'Sucesso!', MB_OK or MB_ICONINFORMATION);
      end;
    end;

  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('Erro ao excluir Pedido: '#13 + E.Message), 'Erro!', MB_OK or MB_ICONERROR);
    end;
  end;

end;

procedure TfrmEmissaoPedido.ExcluirItemSelecionado;
begin
  if not(CdsAlimentado) then
    Exit;

  if (Application.MessageBox(
    'Deseja realmente excluir este item?',
    'Confirmação',
    MB_YESNO + MB_ICONQUESTION
    ) = IDYES) then
  begin

    cdsItens.Delete;

    AtualizarEstadoProduto;
    LimparDadosProduto;
    SetModoInserir;
    RecalcularTotalPedido;

    edtProduto.SetFocus;
  end;

end;

procedure TfrmEmissaoPedido.CancelarPedido;
begin
  FController.Limpar;
  InicializaVariaveisControle;
  LimparGrid;
  Limpar;
end;

procedure TfrmEmissaoPedido.FormCreate(Sender: TObject);
begin
  CriarObjetos;
end;

procedure TfrmEmissaoPedido.FormDestroy(Sender: TObject);
begin
  DestruirObjetos;
end;

procedure TfrmEmissaoPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmEmissaoPedido.FormShow(Sender: TObject);
begin
  InicializarTela;
end;

procedure TfrmEmissaoPedido.Gravar;
begin

  if not(ValidaGravar) then
    Exit;

  try

    FController.OperacaoCadastro := FOperacaoCadastro;
    FController.AdicionarDadosPedido(StrToIntDef(Trim(edtCliente.Text), 0), FTotalItens);
    IncluirItensNaLista;

    if (FController.Gravar) then
    begin
      Application.MessageBox('Pedido gravado com sucesso!', 'Sucesso!', MB_OK or MB_ICONINFORMATION);
      FController.Limpar;
      InicializaVariaveisControle;
      LimparGrid;
      Limpar;
    end;

  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('Erro ao gravar Pedido: '#13 + E.Message), 'Erro!', MB_OK or MB_ICONERROR);
    end;
  end;

end;

procedure TfrmEmissaoPedido.grdItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      begin
        Key := 0;
        CarregarItemParaEdicao;
      end;

    VK_DELETE:
      begin
        ExcluirItemSelecionado;
        Key := 0;
      end;
  end;
end;

procedure TfrmEmissaoPedido.HabilitarBotoes;
var
  lSemCliente: Boolean;
begin
  lSemCliente := (StrToIntDef(Trim(edtCliente.Text), 0) = 0);

  btnCarregar.Visible := lSemCliente;
  btnExcluit.Visible := lSemCliente;
end;

procedure TfrmEmissaoPedido.IncluirItensNaLista;
begin

  cdsItens.DisableControls;
  try

    cdsItens.First;

    while not(cdsItens.Eof) do
    begin

      FController.AdicionarItem(
        cdsItensCodProd.AsInteger,
        cdsItensQtd.AsCurrency,
        cdsItensValorUnit.AsCurrency,
        cdsItensValorTotal.AsCurrency
        );

      cdsItens.Next;
    end;

  finally
    cdsItens.EnableControls;
  end;

end;

procedure TfrmEmissaoPedido.IncluirProduto;
begin
  if not(ValidaAddProduto) then
    Exit;

  InserirItemGrid(
    StrToIntDef(Trim(edtProduto.Text), 0),
    lblInfoProd.Caption, StrToCurrDef(Trim(edtQtd.Text), 0),
    StrToCurrDef(Trim(edtValorUnit.Text), 0)
    );

end;

procedure TfrmEmissaoPedido.InicializarTela;
begin
  Limpar;
  HabilitarBotoes;
  AtualizarEstadoProduto;
end;

procedure TfrmEmissaoPedido.InicializaVariaveisControle;
begin
  FTotalItens := 0;
  FOperacaoCadastro := ocIncluir;
  FModoItem := miInserindo;
end;

procedure TfrmEmissaoPedido.InserirItemGrid(const pCod: Integer;
  const pDesc: String; const pQtd, pValorUnit: Currency);
var
  lSucesso: Boolean;
begin
  lSucesso := False;
  try

    case FModoItem of
      miInserindo:
        cdsItens.Insert;
      miEditando:
        cdsItens.Edit;
    end;

    cdsItensCodProd.AsInteger := pCod;
    cdsItensDescProd.AsString := pDesc;
    cdsItensQtd.AsCurrency := pQtd;
    cdsItensValorUnit.AsCurrency := pValorUnit;
    cdsItensValorTotal.AsCurrency := (pValorUnit * pQtd);

    cdsItens.Post;
    lSucesso := True;

  finally

    if (FModoItem = miEditando) then
      grdItens.Enabled := True;

    if (lSucesso) then
    begin
      RecalcularTotalPedido;
      SetModoInserir;
      LimparDadosProduto;
      edtProduto.SetFocus;
    end;

  end;
end;

procedure TfrmEmissaoPedido.SetModoInserir;
begin
  FModoItem := miInserindo;
end;

procedure TfrmEmissaoPedido.Limpar;
begin
  LimparDadosCliente;
  LimparDadosProduto;
  RecalcularTotalPedido;
  MostrarDadosPedido(False);
  grdItens.Enabled := True;
end;

procedure TfrmEmissaoPedido.LimparDadosCliente;
begin
  edtCliente.clear;
  LimparLabelsCliente;
  HabilitarBotoes;
end;

procedure TfrmEmissaoPedido.LimparDadosProduto;
begin
  edtProduto.clear;
  edtQtd.clear;
  edtValorUnit.Text := '0,00';
  LimparLabelsProduto;
  AtualizarEstadoProduto;
end;

procedure TfrmEmissaoPedido.LimparGrid;
begin
  cdsItens.EmptyDataSet;
end;

procedure TfrmEmissaoPedido.MostrarDadosPedido(const pVisualizar: Boolean);
begin
  pnlPedido.Visible := pVisualizar;
end;

procedure TfrmEmissaoPedido.RecalcularTotalPedido;
begin
  FTotalItens := 0;

  cdsItens.DisableControls;
  try
    cdsItens.First;
    while not cdsItens.Eof do
    begin
      FTotalItens := FTotalItens + cdsItensValorTotal.AsCurrency;
      cdsItens.Next;
    end;
  finally
    cdsItens.EnableControls;
  end;

  lblValorPedido.Caption := Format('R$ %.2f', [FTotalItens]);
end;

function TfrmEmissaoPedido.ValidaAddProduto: Boolean;
var
  lQtd: Currency;
  lValorUnit: Currency;
begin
  Result := False;

  if Trim(edtProduto.Text).IsEmpty then
  begin
    Application.MessageBox(
      'Informe um produto para adicionar no pedido.', 'Atenção!', MB_OK or MB_ICONWARNING
      );
    edtProduto.SetFocus;
    Exit;
  end;

  if (not TryStrToCurr(Trim(edtQtd.Text), lQtd)) or (lQtd <= 0) then
  begin
    Application.MessageBox(
      'Informe uma quantidade válida do produto.', 'Atenção!', MB_OK or MB_ICONWARNING
      );
    edtQtd.SetFocus;
    Exit;
  end;

  if (not TryStrToCurr(Trim(edtValorUnit.Text), lValorUnit)) or (lValorUnit <= 0) then
  begin
    Application.MessageBox(
      'Informe o valor unitário do produto.', 'Atenção!', MB_OK or MB_ICONWARNING
      );
    edtValorUnit.SetFocus;
    Exit;
  end;

  Result := True;
end;

function TfrmEmissaoPedido.ValidaGravar: Boolean;
begin
  Result := False;

  if not(CdsAlimentado) then
  begin
    Application.MessageBox('Nenhum item adicionado.', 'Atenção!', MB_OK or MB_ICONWARNING);
    Exit;
  end;

  if ((StrToIntDef(Trim(edtCliente.Text), 0)) <= 0) then
  begin
    Application.MessageBox('Cliente não informado', 'Atenção!', MB_OK or MB_ICONWARNING);
    edtCliente.SetFocus;
    Exit;
  end;

  if (FTotalItens <= 0) then
  begin
    Application.MessageBox('Valor total dos itens inválido', 'Atenção!', MB_OK or MB_ICONWARNING);
    Exit;
  end;

  Result := True;
end;

end.
