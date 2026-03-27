object frmConsultaProduto: TfrmConsultaProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Produtos'
  ClientHeight = 461
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 16
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 461
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 792
    ExplicitHeight = 486
    object pnlTitulo: TPanel
      Left = 0
      Top = 0
      Width = 784
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Consulta de Produtos'
      Color = 14249502
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 792
    end
    object pnlFundoFiltros: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 50
      Width = 764
      Height = 120
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      BevelOuter = bvNone
      Color = 14249758
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 772
      object pnlFiltros: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 758
        Height = 114
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 766
        object lblPesquisar: TLabel
          Left = 64
          Top = 5
          Width = 58
          Height = 16
          Caption = 'Pesquisar'
        end
        object lblOrdemConsulta: TLabel
          Left = 352
          Top = 5
          Width = 94
          Height = 16
          Caption = 'Ordem Consulta'
        end
        object pnlImgFIltros: TPanel
          Left = 0
          Top = 0
          Width = 45
          Height = 114
          Align = alLeft
          BevelOuter = bvNone
          Color = 14249758
          ParentBackground = False
          TabOrder = 0
          object imgFiltros: TImage
            Left = 0
            Top = 0
            Width = 45
            Height = 114
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF4000000097048597300000EC300000EC301C76FA864
              0000001974455874536F667477617265007777772E696E6B73636170652E6F72
              679BEE3C1A000005284944415478DAAD970B50945514C7FF0BBBB00BC82B4040
              DE0C4E0A825A6835A8036A2FA3466B7C3562A9945363BECA773240991A38313A
              43024E93A636C56061DAD0346286939585518DA9C45B5C5879C3B2C0B2DBB977
              776159F77135CECC7FEEDD6FEFF79DDF77EEB9E7DE4F0241D3EBF59ED42C22A5
              90124811246FE3DF9DA43AD235D205D2398944D223F25C8980E3C9D46C272D27
              B909F2AA49A7490708E4D6030190630535D9A48D24A968A42C6C88F411692F81
              688401C8790C3525A4B807746C6957484B08E28E4300723E839A3292FF383937
              591369114154D90430BEF9655BCEB53A3DAA5B06A1EA1E86C24582F08764F0F7
              BCAFD961108904A1BC07809CCB8DA14AB0BC4BD9A5C5E1EFDAF04D652F3AD5C3
              A3F474F7B41039D2937D903A6302FF2D60BF91E61044BF25400E355B2D479755
              F562F34925FA067423D7E4320906B47ABA6774DCBC87DD716475103C154E2210
              5904903102605C6A7FC322DB99F3F59F3483228F402F29DE5CE88B67E23D78D8
              D974FC51AFC1A73F76A2B4B287C34C0F93E38B0DA17095390C452F29864D8509
              E018356B2CC39EB2AF8EBF7962940245EB82E1EDE66CF569670960D30925875A
              33CF07198B85F2379F00DE90182B1C5B1E638ACCEE2F5BF0D9E52EFEE665DBC3
              6D3ABFD6A0417BEF30AA958378BF5405A9B3043FEC8E4088AFCC11401F298801
              ACA0CE29F37FD89BCCDC53832E4AB8EC9702909664A8B8DA613DF22F74F0848B
              F03338C83CA342655D3F8ADF0AC59CEC5A34776AB1EB797FBC9EE2231285E50C
              A0903AEBCCAF5E6F1EC0D307EB79FFD7AC280418979A7A508729DBAA712C7D12
              6227B9F2A59857D6CE01BEDA1C86778B5B71BCA2130BE33CF89409580103F885
              3A89E6572FFDA3C6AA8F9B7832DDFC308647E20685786AB02B627718000E7D7B
              174993DD3044ABD2045058DE81F7BE56218192B1744B9808C01506A0A28E9FF9
              D5ABB5FD7831AF114E94A2B772625071538DD5476FE3E7CC28CCCEA8B1099057
              D646D7DB78D2B22911B0560630401D17F3ABAA6E2D12C9115B5A251B43D1A3D1
              0901B03117AFF761C5E35ED8BF6CA208C080550066A9B90DA86AD4E0859913B0
              F2092F6C38AEC4F9B7C3F06C4E030EBD1C8882F276CC8A76E389F9178D6389F7
              E4817A9EC0056B83F1D4340F61807BA68059E9EF3DE4F40E2FAF47D282F01C65
              BE2DD30CE9B1EC70235F9291FE2EF87E6738A44E4275B9D56A123263E17FA5C0
              1052F6B01DA97E7875AE375FE7E6F62F6D4E5BA85433E7CCD8F25B3FDF17BEEE
              CE22003C090BA8936EEDDFEE7E1D56E5378D3C3CD8478A05B11E08A31AD04779
              5149A5B8E2869A87DD642C620A9913F62D0DC0E2473D1D011C6500ECA875DAE6
              2451783F38ABC209AA8A6CBEAD190BFB823877145DEC18D9A09C694FCA5D19E8
              0862290360D9C2F667777B239BDA87683BEEA125AAE1AB844D45F44417A44C75
              E7CEBBD43A2465D5F26265320710AC14079A36A3226AD68A4C9A3D3B73B51B5B
              4F29313CCA600FA29036A3D74C00EC24C4B663873BC88340B84825B8B4271241
              DE23BBFD20690A01D4981F480E52F3CEFF05B005C1CE09B3A315A69FFBC9F94E
              D6B13C9295931E1B2F886D9FB760904E4EF1A172946C0A85CCB0847F222513C0
              C0180023442035AC2E08157247C6B6E686BB437824526E72DE4C9A45CE6F9BC6
              583B96C753738E14321E1066D608C3B1FC4FF38BB63E4CD899AA9834779C9CB3
              B02F313F8EDB053042B852B30B8693B2DD1A61C758B6E792324D732E0C6006C2
              F2622F29ED3E4058913909C3C7698DBD81629F1206105631D9E77932693A2912
              633FCF6B499530ACA4F3E4B857E4B9FF01089C3D61B4B38D3D0000000049454E
              44AE426082}
            ExplicitTop = -7
            ExplicitWidth = 60
          end
        end
        object edtPesquiar: TEdit
          Left = 64
          Top = 27
          Width = 257
          Height = 24
          TabOrder = 1
          OnChange = PesquisaClick
        end
        object chkOrdemDecrescente: TCheckBox
          Left = 64
          Top = 65
          Width = 153
          Height = 17
          TabStop = False
          Caption = 'Ordem Decrescente'
          TabOrder = 2
          OnClick = PesquisaClick
        end
        object chkPesquisaNaoExata: TCheckBox
          Left = 64
          Top = 89
          Width = 153
          Height = 17
          TabStop = False
          Caption = 'Pesquisa N'#195'O exata'
          TabOrder = 3
          OnClick = PesquisaClick
        end
        object cbxOrdemConsulta: TComboBox
          Left = 352
          Top = 27
          Width = 257
          Height = 24
          Style = csDropDownList
          TabOrder = 4
          TabStop = False
          OnClick = PesquisaClick
        end
      end
    end
    object pnlRodape: TPanel
      Left = 0
      Top = 421
      Width = 784
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      Color = 14249502
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      ExplicitTop = 446
      ExplicitWidth = 792
      object btnSelecionar: TButton
        AlignWithMargins = True
        Left = 706
        Top = 3
        Width = 75
        Height = 34
        Align = alRight
        Caption = 'Selecionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 714
      end
    end
    object pnlGrd: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 180
      Width = 764
      Height = 231
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      ExplicitWidth = 772
      ExplicitHeight = 256
      object grdProdutos: TDBGrid
        Left = 0
        Top = 0
        Width = 764
        Height = 231
        Align = alClient
        DataSource = dsGrid
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_venda'
            Title.Caption = 'Pre'#231'o'
            Visible = True
          end>
      end
    end
  end
  object dsGrid: TDataSource
    Left = 736
    Top = 216
  end
end
