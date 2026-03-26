unit fEmissaoPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
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
    Panel1: TPanel;
    Panel2: TPanel;
    lblAdProduto: TLabel;
    Panel3: TPanel;
    Image2: TImage;
    Panel4: TPanel;
    lblDica: TLabel;
    Panel5: TPanel;
    Image3: TImage;
    Panel6: TPanel;
    Panel7: TPanel;
    lblProduto: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Image4: TImage;
    edtProduto: TEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Label1: TLabel;
    Panel13: TPanel;
    Image5: TImage;
    Panel21: TPanel;
    pnlGrd: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmissaoPedido: TfrmEmissaoPedido;

implementation

{$R *.dfm}

end.
