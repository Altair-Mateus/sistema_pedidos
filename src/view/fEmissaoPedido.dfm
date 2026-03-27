object frmEmissaoPedido: TfrmEmissaoPedido
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Pedidos'
  ClientHeight = 681
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 16
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1264
    Height = 681
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 10
    ParentFont = False
    TabOrder = 0
    object pnlCliente: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 91
      Width = 1238
      Height = 135
      Margins.Bottom = 10
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object pnlTituloCliente: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 13
        Width = 1218
        Height = 30
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object lblCliente: TLabel
          AlignWithMargins = True
          Left = 40
          Top = 5
          Width = 53
          Height = 22
          Margins.Left = 10
          Margins.Top = 5
          Align = alLeft
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 19
        end
        object pnlImgCliente: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Image1: TImage
            Left = 0
            Top = 0
            Width = 30
            Height = 30
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
              00180806000000E0773DF8000000097048597300000EC300000EC301C76FA864
              0000001974455874536F667477617265007777772E696E6B73636170652E6F72
              679BEE3C1A0000026A4944415478DAAD964D68135110C7DFBCECDA06D2A08788
              95368DB44956FCA67AD64341C18B60452F7A5250A149AA50298217456C51E2B6
              502F0AF624A8C59B8208A257AB82459B4D6335DBF85115A4361A936EDF381B63
              C16AB29B6D06969D7DFBE6FFDB99376F7781D9B440ECCD728185F5A62FD54B63
              937DAD3376E2C06A425BD784370F1807C083742997860B740CBBEBF0A4D6AFCC
              3A06F88EBFF4B865E931B95BCA843FCDCBB9EDD317377D7704F0C7927D0CB1C7
              22C90BBA1AEE750040F047931FC959690198D6D5502349615580555D13BE655C
              7C6236CC9098EFFDA5F097AA00E19E44432E0FDF6CE8636ECEF07E1E5A97ADB2
              44B40651ED399D365BE83FD355A5BDDC5D0B40621F4DB959690E30E84CABA111
              4700D35A2289730870FABFCF0E7076EA72E84CE507B061FEEE640713AC8B24DB
              4B51A320504D0F280FAD626D01966265014DDD536E2E728718B20E04BC0D85FC
              7DFDCAC6AFC58C8EBD588172DD4EAAFF5E5278C067E4E1B7D7D7FCB40D08C4C6
              7708E457C96D5D74EB4FDB7A178DA784E0873383C14796006ACD23741AA243AA
              B21A06303C9A56956B6501CD516D3F0DDC60CED74650231CA07D71EB1F009525
              40651923D7E350BC64F88371BE418F8726FF02B444B53BF4B6DAB334F105C808
              65D1B900688ABC0A727025C8E5B501305A735738136F4B1501FE98D64BED78BE
              46E2A524F0943EA0F443A93CF7A83CBB6A0A60EC2E7D8876FF0644340D81856A
              0C4810606D11B0FA44AA5936E6B75216DB08A4D0A009333759BD4D317317BFA6
              F8242DE238957BD440FEE4DD603053B1DFCD8F4ED6C04697C11A044A1E2E61F1
              AF421830C7C1C8CE4B6CD623C1874A7F16BF004C27D51995DC33520000000049
              454E44AE426082}
            ExplicitLeft = -32
            ExplicitTop = -32
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
        end
      end
      object pnlDadosCliente: TPanel
        Left = 10
        Top = 95
        Width = 1218
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        object lblCodigo: TLabel
          AlignWithMargins = True
          Left = 34
          Top = 7
          Width = 44
          Height = 16
          Margins.Left = 5
          Margins.Top = 7
          Margins.Right = 10
          Margins.Bottom = 7
          Align = alLeft
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14249758
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 5
        end
        object lblDadosCliente: TLabel
          AlignWithMargins = True
          Left = 91
          Top = 7
          Width = 838
          Height = 16
          Margins.Top = 7
          Margins.Right = 10
          Margins.Bottom = 7
          Align = alLeft
          AutoSize = False
          Caption = '2121 | Cliente Exemplo | Cidade - UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlImgDadosCliente: TPanel
          AlignWithMargins = True
          Left = 10
          Top = 5
          Width = 16
          Height = 20
          Margins.Left = 10
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object imgDadosCliente: TImage
            Left = 0
            Top = 0
            Width = 16
            Height = 20
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
              001008060000001FF3FF61000000097048597300000EC300000EC301C76FA864
              0000001974455874536F667477617265007777772E696E6B73636170652E6F72
              679BEE3C1A0000019E4944415478DAAD534D2F035114BDF70D8B4A48246C249D
              EA82D1101BFE8045D9D9F8094D2452CCF8085D5A6AAA65A4B190F42758D9486D
              FC00121F9BCE2C1AD5B021242C2C4CDF753B4A784623E26EE6BDBC73CFBDE7DC
              3B084A442C3726891202204E003A00120255255251F3B07099374A9FF1F87E18
              993E6EBD6DEBC8005192AF2D101C1EA7E4BB9F1F574E76475F3E08FCE450C73E
              004DC02F82930EBA9E9F26EB243E816EB95B5CD95470651018270F11853CE47B
              5421D9ACD8C622D63513D1B9DA3603761890F47D31DD1D029A51E56840431836
              9D0D062F05747A23A498AA1FA4907BFCE9F90EA10C464CE78CDD1EFE412EA966
              2B718ABAE9DE33AEF39B5104AE9434E69F3571C498BE003B1F9A11E42ADB862F
              2D32EF6479191603097E9680E92BBB3FE54FC974D7B9C86AA084B055CAF0AE2D
              FF8D00D3D83BEB0C480D2E02C6E8CFF96D8C4E8EBB5C50C758D3E420362A6C72
              054B0194498A719F2C609198305BB58DE5FF59E57792BB507B9A99E7A0C9CFC4
              EF76B5F326056B635E83EC6B44CD9251034810E2389BAB371AAE0062B1266A85
              EB5CCCFD8C7F0597B8B41C94FD01710000000049454E44AE426082}
            Proportional = True
          end
        end
      end
      object pnlSelecaoCliente: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 51
        Width = 1218
        Height = 34
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object pnlFundoPesquisaCliente: TPanel
          Left = 0
          Top = 0
          Width = 449
          Height = 34
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object pnlPesquisaCliente: TPanel
            AlignWithMargins = True
            Left = 2
            Top = 2
            Width = 445
            Height = 30
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object pnlImgPesquisaCliente: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 30
              Height = 20
              Margins.Left = 5
              Margins.Top = 5
              Margins.Bottom = 5
              Align = alLeft
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object imgPesquisaCliente: TImage
                Left = 0
                Top = 0
                Width = 30
                Height = 20
                Align = alClient
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                  00180806000000E0773DF8000000097048597300000EC300000EC301C76FA864
                  0000001974455874536F667477617265007777772E696E6B73636170652E6F72
                  679BEE3C1A000003094944415478DAAD955F4853511CC7CFEF6E9A461606627F
                  E6C602B795F564143DF4A049161481608965D6435911DEF9A03D492BF2A544B7
                  C1A022C27C495224CA2810F1A9874A7B6AB23BC8D8DDF421492B2133B77BFADE
                  EB2473F7AE49FEE0707EF7DC737E9FDFBF732F311DB1348E159360AE23CE8FE0
                  D186918F31C5381B63027FA150A23BD65932CD32105AFE507025B82137CBDC01
                  F53C8639CDB96FC4A82DE22B6E87099E116087F8D11A67F101A87B924BB378FB
                  92147A070BDF8929859CE820D6CB96E058EFE7C2FA33B1CEA2B9B400674B286F
                  6E9E5E2F19E79C059484727D22B0F3CBCA037631E44C300A403D9434D013F139
                  6A8D22D1005651BA8FE9C2A2717E39EA77DD4D9BD86A6EB26E0B3F80762EB952
                  2FFB9CDDBA00B5A00299C6D4B055CFA37EE7D54C8A57E20966CFCE98D5A8F762
                  C4E4FC493BF394C5530045EEF04D744BAB9AF3445CB1EBA5C5486CEE5039E734
                  A4EA0AE747637ED7AB1480B5517A8344EDC378227B9DA73235BE289CAC62380A
                  653B27DE1EF5BA9A53003651FA8CEA14A0ED5A50AC3BAB03A07E6EE929DAE904
                  D401D4E1786A04A2348F391BEA25D9E7B8B76A80283DC27416631080C37A8098
                  1A2222684504B7560F0823EFBC12D9EA93FD8E6ABD1A0C22FF15461EA4936427
                  4D41DD88347964BFF3462AC01D7283DE093D6E627CF7279F4BCAD8FB46A91ECE
                  75698648288D788BDFA7002C4DC1CD82621E87BE0963489E7454B25E4AFCCBB8
                  5D1C2F4CB0855135BDF0FE2DBCDFAFB74FBBC93631DCCC19BF9D5CEBCACB8F37
                  043D25BFD21AE70BCFB4F6D6849F947DAE5E4380DACF4562B80F0F55C9F51122
                  7E2DE2750E2FFFC6945E1CC99ACAC9ABC5A936CDF33FF293884E47BC8E7E0300
                  FE014DD15C93F2E321ACD52C7B3F812DA360CCC0872D70E48056507D5900A466
                  2584FEDEA3DDCC3A28AA8716C30220E79C58070EAB05CE4907215D039E61B365
                  7A6B8540AC1C5B76C1E03ACC5F61F90309C2F3A56EB1B9C355F8FAF640CD3282
                  E80356210690047E4E7551AFE3F17F03D24502FFABD604600441EBCB6B063080
                  C4D614A00ABAF018674A001F4F0137A8E13788023B195D4B93EB000000004945
                  4E44AE426082}
                Proportional = True
                ExplicitTop = 5
                ExplicitWidth = 40
                ExplicitHeight = 22
              end
            end
            object edtCliente: TEdit
              AlignWithMargins = True
              Left = 48
              Top = 5
              Width = 387
              Height = 20
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              MaxLength = 9
              ParentShowHint = False
              ShowHint = False
              TabOrder = 1
              TextHint = 'Buscar cliente por c'#243'digo...'
              OnExit = edtClienteExit
            end
          end
        end
        object btnBuscarCliente: TButton
          AlignWithMargins = True
          Left = 469
          Top = 0
          Width = 100
          Height = 34
          Margins.Left = 20
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Buscar'
          ImageIndex = 5
          ImageMargins.Left = 10
          Images = imgListBotoes
          TabOrder = 1
          TabStop = False
          OnClick = btnBuscarClienteClick
        end
      end
    end
    object pnlProduto: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 239
      Width = 1238
      Height = 165
      Margins.Bottom = 10
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object pnlTItuloProduto: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 13
        Width = 1218
        Height = 30
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object lblAdProduto: TLabel
          AlignWithMargins = True
          Left = 40
          Top = 5
          Width = 139
          Height = 22
          Margins.Left = 10
          Margins.Top = 5
          Align = alLeft
          Caption = 'Adicionar Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 19
        end
        object pnlImgProduto: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object imgProduto: TImage
            Left = 0
            Top = 0
            Width = 30
            Height = 30
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
              00180806000000E0773DF8000000097048597300000EC300000EC301C76FA864
              0000001974455874536F667477617265007777772E696E6B73636170652E6F72
              679BEE3C1A000002104944415478DAAD953D68145110C76766D714E636110B3F
              4B8D225AD858D82556692C04418B140A5A1873BB69528944442C44B8E42E8990
              285A5808014152D969E767E507628836C6982690DD8D9EB8EF8DF3F0207BB95D
              93ECEE346F786F98DF9BFFCCBE4510EBF0F898D251A7F12DB2037F145F424186
              A5413E845A7F8C6F32537758C3E78500E21558083603CD20C24D7FD41A2E0C10
              37C7556FA406A599AF644D6A83FD75B98673898092AB4664D3CB7B7366180B6B
              56B915508E4E23E27401EA303175B500DAFB7917D97AA100801996C39874E094
              D5AC88B73F677E3F58A0EDC9004FDD078673F96E8F4FC31AF52603DCE882F47F
              2A1F00AE4A936FA454C00781F5A75C00D23DE1C8966798728C8EA77F884C3B32
              E6FFE3D469DBF749FC8969118EAB1F0BE854C6FBBF08AAF671E325023ACBBC4F
              235724F064A6F40CC3A2FFF5444087CB5D0CFAAD292243EEDF92F049A94EE78D
              3C8900F9068664F7165B7424ACE0876C12AD5AEB53E1456790F191B80FA5C9EF
              3799EC971FD0243CC07A2A00AE31394BFA8E78678D629BBC7040161D5DAEE097
              74C01A333D31AB5FC5D9A4F3768F774A96DD2BF3F00EA651AD2B5153724F4DC8
              445C6A044EF855EB72F379D4274FC23D71DB64765E6F6DB37A166FE3CA86008D
              69FADC1C4C07E295C8CF695E963DAB117C51E6FF6E91806FB2ECCD04F80751E3
              0CD0DF081C178906FE23D12B91E8C486258A5762D6AC4DFE0B04CEDDB062B343
              730000000049454E44AE426082}
            ExplicitLeft = -32
            ExplicitTop = -32
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
        end
      end
      object pnlDadosProduto: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 53
        Width = 1218
        Height = 52
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 20
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object pnlPesquisaProduto: TPanel
          Left = 0
          Top = 0
          Width = 360
          Height = 52
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object pnlLblProduto: TPanel
            Left = 0
            Top = 0
            Width = 360
            Height = 18
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object lblProduto: TLabel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 350
              Height = 16
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 10
              Margins.Bottom = 2
              Align = alTop
              Caption = 'Produto (c'#243'digo)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 105
            end
          end
          object pnlEdtProduto: TPanel
            AlignWithMargins = True
            Left = 2
            Top = 20
            Width = 356
            Height = 30
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object pnlImgPesquisaProduto: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 30
              Height = 20
              Margins.Left = 5
              Margins.Top = 5
              Margins.Bottom = 5
              Align = alLeft
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 1
              object imgPesquisaProduto: TImage
                Left = 0
                Top = 0
                Width = 30
                Height = 20
                Align = alClient
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                  00180806000000E0773DF8000000097048597300000EC300000EC301C76FA864
                  0000001974455874536F667477617265007777772E696E6B73636170652E6F72
                  679BEE3C1A000003094944415478DAAD955F4853511CC7CFEF6E9A461606627F
                  E6C602B795F564143DF4A049161481608965D6435911DEF9A03D492BF2A544B7
                  C1A022C27C495224CA2810F1A9874A7B6AB23BC8D8DDF421492B2133B77BFADE
                  EB2473F7AE49FEE0707EF7DC737E9FDFBF732F311DB1348E159360AE23CE8FE0
                  D186918F31C5381B63027FA150A23BD65932CD32105AFE507025B82137CBDC01
                  F53C8639CDB96FC4A82DE22B6E87099E116087F8D11A67F101A87B924BB378FB
                  92147A070BDF8929859CE820D6CB96E058EFE7C2FA33B1CEA2B9B400674B286F
                  6E9E5E2F19E79C059484727D22B0F3CBCA037631E44C300A403D9434D013F139
                  6A8D22D1005651BA8FE9C2A2717E39EA77DD4D9BD86A6EB26E0B3F80762EB952
                  2FFB9CDDBA00B5A00299C6D4B055CFA37EE7D54C8A57E20966CFCE98D5A8F762
                  C4E4FC493BF394C5530045EEF04D744BAB9AF3445CB1EBA5C5486CEE5039E734
                  A4EA0AE747637ED7AB1480B5517A8344EDC378227B9DA73235BE289CAC62380A
                  653B27DE1EF5BA9A53003651FA8CEA14A0ED5A50AC3BAB03A07E6EE929DAE904
                  D401D4E1786A04A2348F391BEA25D9E7B8B76A80283DC27416631080C37A8098
                  1A2222684504B7560F0823EFBC12D9EA93FD8E6ABD1A0C22FF15461EA4936427
                  4D41DD88347964BFF3462AC01D7283DE093D6E627CF7279F4BCAD8FB46A91ECE
                  75698648288D788BDFA7002C4DC1CD82621E87BE0963489E7454B25E4AFCCBB8
                  5D1C2F4CB0855135BDF0FE2DBCDFAFB74FBBC93631DCCC19BF9D5CEBCACB8F37
                  043D25BFD21AE70BCFB4F6D6849F947DAE5E4380DACF4562B80F0F55C9F51122
                  7E2DE2750E2FFFC6945E1CC99ACAC9ABC5A936CDF33FF293884E47BC8E7E0300
                  FE014DD15C93F2E321ACD52C7B3F812DA360CCC0872D70E48056507D5900A466
                  2584FEDEA3DDCC3A28AA8716C30220E79C58070EAB05CE4907215D039E61B365
                  7A6B8540AC1C5B76C1E03ACC5F61F90309C2F3A56EB1B9C355F8FAF640CD3282
                  E80356210690047E4E7551AFE3F17F03D24502FFABD604600441EBCB6B063080
                  C4D614A00ABAF018674A001F4F0137A8E13788023B195D4B93EB000000004945
                  4E44AE426082}
                Proportional = True
                ExplicitTop = 5
                ExplicitWidth = 40
                ExplicitHeight = 22
              end
            end
            object edtProduto: TEdit
              AlignWithMargins = True
              Left = 48
              Top = 5
              Width = 298
              Height = 20
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              MaxLength = 9
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              TextHint = 'Buscar produto por c'#243'digo...'
              OnExit = edtProdutoExit
            end
          end
        end
        object pnlQtd: TPanel
          AlignWithMargins = True
          Left = 490
          Top = 0
          Width = 100
          Height = 52
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 470
          object pnlLblQtd: TPanel
            Left = 0
            Top = 0
            Width = 100
            Height = 18
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object lblQtd: TLabel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 90
              Height = 16
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 10
              Margins.Bottom = 2
              Align = alTop
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 74
            end
          end
          object pnlEdtQtd: TPanel
            AlignWithMargins = True
            Left = 2
            Top = 20
            Width = 96
            Height = 30
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object edtQtd: TEdit
              AlignWithMargins = True
              Left = 10
              Top = 5
              Width = 76
              Height = 20
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              MaxLength = 9
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              OnExit = edtQtdExit
              OnKeyPress = edtQtdKeyPress
            end
          end
        end
        object btnBuscarProduto: TButton
          AlignWithMargins = True
          Left = 380
          Top = 16
          Width = 100
          Height = 36
          Margins.Left = 20
          Margins.Top = 16
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Buscar'
          ImageIndex = 5
          ImageMargins.Left = 10
          Images = imgListBotoes
          TabOrder = 2
          TabStop = False
          OnClick = btnBuscarProdutoClick
        end
        object pnlValorUnit: TPanel
          Left = 600
          Top = 0
          Width = 150
          Height = 52
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          ExplicitLeft = 580
          object pnlLblValorUnit: TPanel
            Left = 0
            Top = 0
            Width = 150
            Height = 18
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object lblValorUnit: TLabel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 140
              Height = 16
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 10
              Margins.Bottom = 2
              Align = alTop
              Caption = 'Valor Unit'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 87
            end
          end
          object pnlEdtValorUnit: TPanel
            AlignWithMargins = True
            Left = 2
            Top = 20
            Width = 146
            Height = 30
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object pnlImgValorUnit: TPanel
              Left = 0
              Top = 0
              Width = 30
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Bottom = 5
              Align = alLeft
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 1
              object imgValorUnit: TImage
                AlignWithMargins = True
                Left = 5
                Top = 5
                Width = 20
                Height = 20
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                  001008060000001FF3FF61000000097048597300000EC300000EC301C76FA864
                  0000001974455874536F667477617265007777772E696E6B73636170652E6F72
                  679BEE3C1A000001E44944415478DAA593CF2B83711CC73D5BA3B6958BC450D2
                  961C1C886284F9D11C9D56F6ACE4629103D2E236A925248E93E4B01FDA564EF2
                  E3845C28A59CD841C81FA036A567DBE3F5AD679AC6419E7AF7F9FDFE7EBE9FEF
                  E7914AFEF08542A1194992DA6459F6E47DD25F08C2E1F016A21D02FB1701ACAB
                  B0F60B4355D50FF457D48B542A15F47ABD4A41B113B14CDC92CBE57CE9743A2E
                  E2128103022304562130A2778116B0CF49A3A2381289AC139B437D03A5C0002E
                  93C9E4E0170186DEEFF7E780CE6AB51E42389CCD661B743A9D82FE0C26206916
                  57004BE0984E7A8A08B4612D5210007DDAD5CED09B90938280DC6E9BCD768F3E
                  5D44100C068D66B3F90C5F2B4535994CA64CAFD73F62DF60A72129FB36C48219
                  24C4FD48E8405622D73C1E8F4F1BE03C22A0DDFD031C100F10BFFB46805345DA
                  11668BC552E1703832053B504B6C07B55F23122FD4597405EC59EC0D489C9C70
                  1A8D46EB19661B7A22BF0760069C08DE2282582C56A528CA0B04718ADC3CE114
                  FA8ADBED2E47DFCC2F1275624E4FBFBDC211EDF61A0C866AC81A715D81716D3F
                  440762956FC959F891009F2C788097D3B639798F2EC6B0DF0B7E816BB67548AC
                  F2004CF5B4B88B5445543CA5C9649259A207FCE762B6CCC2C9E2F8C9A923C547
                  77FB2E972BFBFF9FE9BFBFF327558B255EB8930A700000000049454E44AE4260
                  82}
                Proportional = True
                ExplicitLeft = -3
                ExplicitTop = 1
                ExplicitWidth = 30
                ExplicitHeight = 32
              end
            end
            object edtValorUnit: TEdit
              AlignWithMargins = True
              Left = 40
              Top = 5
              Width = 96
              Height = 20
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              MaxLength = 9
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              OnExit = edtValorUnitExit
              OnKeyPress = edtValorUnitKeyPress
            end
          end
        end
        object btnInserir: TButton
          AlignWithMargins = True
          Left = 770
          Top = 16
          Width = 100
          Height = 36
          Margins.Left = 20
          Margins.Top = 16
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Inserir'
          ImageIndex = 3
          ImageMargins.Left = 10
          Images = imgListBotoes
          TabOrder = 4
          OnClick = btnInserirClick
          ExplicitLeft = 750
        end
        object btnCancelar: TButton
          AlignWithMargins = True
          Left = 890
          Top = 16
          Width = 100
          Height = 36
          Margins.Left = 20
          Margins.Top = 16
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Cancelar'
          ImageIndex = 4
          ImageMargins.Left = 10
          Images = imgListBotoes
          TabOrder = 5
          OnClick = btnCancelarClick
          ExplicitLeft = 870
        end
      end
      object pnlInfosProd: TPanel
        Left = 10
        Top = 125
        Width = 1218
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object pnlDicaAdProd: TPanel
          AlignWithMargins = True
          Left = 470
          Top = 0
          Width = 470
          Height = 30
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = 15137490
          ParentBackground = False
          TabOrder = 0
          object lblDica: TLabel
            AlignWithMargins = True
            Left = 34
            Top = 7
            Width = 32
            Height = 16
            Margins.Left = 5
            Margins.Top = 7
            Margins.Bottom = 7
            Align = alLeft
            Caption = 'Dica:'
            Color = 15137490
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblDicaEnterProd: TLabel
            AlignWithMargins = True
            Left = 69
            Top = 7
            Width = 380
            Height = 16
            Margins.Left = 0
            Margins.Top = 7
            Margins.Right = 10
            Margins.Bottom = 7
            Align = alLeft
            Caption = 'Pressione ENTER ap'#243's preencher os dados para adicionar o item'
            Color = 15137490
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ExplicitLeft = 79
          end
          object pnlImgDicaAdProd: TPanel
            AlignWithMargins = True
            Left = 10
            Top = 5
            Width = 16
            Height = 20
            Margins.Left = 10
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object imgDicaAdProd: TImage
              Left = 0
              Top = 0
              Width = 16
              Height = 20
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                001008060000001FF3FF61000000097048597300000EC300000EC301C76FA864
                0000001974455874536F667477617265007777772E696E6B73636170652E6F72
                679BEE3C1A000001764944415478DAA592BF4AC35014C6EF49A293283A54DD9C
                A45A7D0345109746D15543121017055F40C1CD820F20752BD2A60A82E01FDA82
                B393A35A2ABE80B441073731B9C773DB98A64DB4859E0CB9F770BF1FF73BF703
                D663415473CC4A4EBB1CD6406293628F9CBD2A0CAEDECC42E55FC0F0C5D250DF
                57FF092DD723E048DFB923E1CE875EFA0C013CF13D2D673ADCFAC9019CFB85F8
                80584E3DA3DF4697D6AD9A51347C80F0CC119EFF9A49E3201C23E00AD9981076
                64848498495D309A4BEE2383548BDF000C1153B6513A8859EA296DCD7A0FD89E
                AD178F3C809A21C5A677FE1210D308D2351D1BF0C579354DD86DFF460899AA59
                D80A0300CAC0BF17B9ACC481E3424D2F1DB68B23006D163C48D5B8B3A3C4210B
                E3D9E52917B0DC324401417C08580B16776539F1AEDDBE349F31ABE649AE75F5
                88C07235BD68B6E460C44A0E2A082248B31DE48F14A4F950909A10294D0EB588
                4C70EAE41D86BB91510E969889036C1500E30D29565C45B9119EC36E7AAC1F58
                BAAB11663A5AF20000000049454E44AE426082}
              Proportional = True
            end
          end
        end
        object pnlInfoProd: TPanel
          Left = 0
          Top = 0
          Width = 460
          Height = 30
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object lblCodProd: TLabel
            AlignWithMargins = True
            Left = 34
            Top = 7
            Width = 44
            Height = 16
            Margins.Left = 5
            Margins.Top = 7
            Margins.Right = 10
            Margins.Bottom = 7
            Align = alLeft
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 14249758
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ExplicitTop = 5
          end
          object lblInfoProd: TLabel
            AlignWithMargins = True
            Left = 91
            Top = 7
            Width = 358
            Height = 16
            Margins.Top = 7
            Margins.Right = 10
            Margins.Bottom = 7
            Align = alLeft
            AutoSize = False
            Caption = 'Mouse Gamer 4000 DPI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object pnlImgInfoProd: TPanel
            AlignWithMargins = True
            Left = 10
            Top = 5
            Width = 16
            Height = 20
            Margins.Left = 10
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object imgInfoProd: TImage
              Left = 0
              Top = 0
              Width = 16
              Height = 20
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                001008060000001FF3FF61000000097048597300000EC300000EC301C76FA864
                0000001974455874536F667477617265007777772E696E6B73636170652E6F72
                679BEE3C1A0000019E4944415478DAAD534D2F035114BDF70D8B4A48246C249D
                EA82D1101BFE8045D9D9F8094D2452CCF8085D5A6AAA65A4B190F42758D9486D
                FC00121F9BCE2C1AD5B021242C2C4CDF753B4A784623E26EE6BDBC73CFBDE7DC
                3B084A442C3726891202204E003A00120255255251F3B07099374A9FF1F87E18
                993E6EBD6DEBC8005192AF2D101C1EA7E4BB9F1F574E76475F3E08FCE450C73E
                004DC02F82930EBA9E9F26EB243E816EB95B5CD95470651018270F11853CE47B
                5421D9ACD8C622D63513D1B9DA3603761890F47D31DD1D029A51E56840431836
                9D0D062F05747A23A498AA1FA4907BFCE9F90EA10C464CE78CDD1EFE412EA966
                2B718ABAE9DE33AEF39B5104AE9434E69F3571C498BE003B1F9A11E42ADB862F
                2D32EF6479191603097E9680E92BBB3FE54FC974D7B9C86AA084B055CAF0AE2D
                FF8D00D3D83BEB0C480D2E02C6E8CFF96D8C4E8EBB5C50C758D3E420362A6C72
                054B0194498A719F2C609198305BB58DE5FF59E57792BB507B9A99E7A0C9CFC4
                EF76B5F326056B635E83EC6B44CD9251034810E2389BAB371AAE0062B1266A85
                EB5CCCFD8C7F0597B8B41C94FD01710000000049454E44AE426082}
              Proportional = True
            end
          end
        end
      end
    end
    object pnlItens: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 417
      Width = 1238
      Height = 161
      Margins.Bottom = 10
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object pnlTituloItens: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 13
        Width = 1218
        Height = 30
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 20
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object lblItens: TLabel
          AlignWithMargins = True
          Left = 40
          Top = 5
          Width = 37
          Height = 22
          Margins.Left = 10
          Margins.Top = 5
          Align = alLeft
          Caption = 'Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 19
        end
        object pnlImgItens: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object imItens: TImage
            Left = 0
            Top = 0
            Width = 30
            Height = 30
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
              00180806000000E0773DF8000000097048597300000EC300000EC301C76FA864
              0000001974455874536F667477617265007777772E696E6B73636170652E6F72
              679BEE3C1A000001464944415478DA6364201248675F176662610A6760FCFFFF
              DFEFFFAB9E4ED57C4B8C3E466214C9655E126460673FCFF09F411E2AF4808991
              CDF0C104C50F145920977FF32890B22260C6914713D56D89B2402EEF661B50A4
              18C864036A62045AF09F181F22A9FD0534B0E7E144F56AEC16E4DFFC09321CC4
              FEFB8F499699E9DF7220D306AFE9FF190EFF61618E66F9FBF71154E427D0420E
              5C16FC47E863D8FEEF1F53DAD3C9AA4FF0992F55744796F5EFDF5940F51EC83E
              22680125606459B00888E3808AA6FD6760FC8CCD30A01CDF7F86FF99E459F09F
              712930E74633FE67E8FBCFF8FF15760B18C5819A0A0767103132FE77FEFF9F71
              2F0313A3F2A37EB57BD80C9329BCA3C2F4EFEFEDC1E90386D1482664C1B088E4
              510B302C0045960A65C633DE7E34514D0DAB05A014C1FCF74FE47F46266EB28C
              6660F8F2EF1FE3F2C79355EFC2C4002D8EC719E33ABB120000000049454E44AE
              426082}
            ExplicitLeft = -32
            ExplicitTop = -32
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
        end
      end
      object pnlGrd: TPanel
        Left = 10
        Top = 63
        Width = 1218
        Height = 88
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object grdItens: TDBGrid
          Left = 0
          Top = 0
          Width = 1218
          Height = 88
          Align = alClient
          DataSource = dsItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnKeyDown = grdItensKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'CodProd'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DescProd'
              Width = 500
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qtd'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorUnit'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorTotal'
              Width = 100
              Visible = True
            end>
        end
      end
    end
    object pnlInfoPedido: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 591
      Width = 1238
      Height = 80
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      object pnlValorTotal: TPanel
        Left = 933
        Top = 10
        Width = 295
        Height = 60
        Align = alRight
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object pnlImgValorTotal: TPanel
          Left = 231
          Top = 0
          Width = 64
          Height = 60
          Margins.Left = 0
          Margins.Top = 8
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object imgValorTotal: TImage
            Left = 0
            Top = 0
            Width = 64
            Height = 60
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
              00400806000000AA6971DE000000097048597300000EC300000EC301C76FA864
              0000001974455874536F667477617265007777772E696E6B73636170652E6F72
              679BEE3C1A000006AF4944415478DAE59B0B50545518C7FF6777D9E52DA92820
              EE820AF824F08158134DA569A8A939D3E834A3F8A8996A142D536B1AC31CC560
              2625D329C56A9A1E8E96128E364365BECA076A500A2C28B0BC14511ECB6B1776
              F776CECD4A585657B98F05FE3377E6CED9DD7BBFF3DBEF7EE7FBCEB987E09EE2
              487062518C82E3E680208E360CA147003DDCE19A32D1E3063D2AC1E1A44D898C
              8A6DE1D900E11CFD8038FA40BBBA702A6C5C2A3D8D92BB57DD543EFD23DF2B4B
              1B79C02900235614F9B611EB572064B6DC960B2A821FD456C5A2AB3BC28C0E01
              84ACCA0FB1718A23F474B4DCF68AA42B4A8B7566C9CED1063B00116B0B7C5ACD
              8ADFA9BB8C95DB4A9155A07257C5167F30BCA10300EDCA82CC5EE7F60E443B9D
              61488B98F71F006D62E12CFACF1F96DB30492110C41BB647FC4890C429B47585
              39B46D9CDC46490A00F8D390161E45425614C5DA14B633721B248768721043B4
              89FA647ABE5EAA9B0E1BA446EC080FBB76FDF5365C2C69951400E1B8CD0CC069
              7AFEB854377D71B22F521706D8B57F7EB21E49076F4A0A80EA34D1AED297525F
              D0F55100C5CC0398DF4996DBBB18001303C075FF3A3D16002405E0EFABC28A69
              FDB1F8093FBBCFCA6FB7E3444133AE56B7E17C712BF22ACDE024B04C74000A3A
              E0CE88F4C1D227FD3031D48325204EE976931599971AF1ED99063A42987B2680
              B00035521604607CC8C38718E60547721AB139B3065575969E03E0B1304FEC59
              16046F7745B7AFD5D266C3B4AD0654D4B6F70C00C307AB71F80D2DBC34DDEF3C
              D3C64335F8EC449DE09D1705007BE68FAED161D4108D20D7FBC360C2FCB43258
              6DA2F45F7800D323BDB17B6990C3CFAFD1287F34B7097F959B50D368412D0D76
              1A370506782B3186429B4CD3E4B8082FDA46D06EE5109F6A40E18D36717A2F06
              808F160562CE781FBB76533B87B7F757E3D005E37D87371F1A3712E85069A600
              761F13C7F54503F0DB865004F777B36B7FF39B1BF8EEBCF121AE28AE0407A04F
              0D83BB5BC7C19E3DBFA3D615C1DC2E69D2290F802B5B47D80D7D0C40F89A2258
              6C7D00C0CFEB43F804A8B396ECAEC4B1BC66B9FB2B3E808F17076276B47D10AC
              6EB0E095BD55C82933C9DD6771014C1DE385BD2F0FE9F23316FDB32E3761D74F
              B52E034270002A2541D65A1D9F0DDE4BA5B7DAF91C9F1D572AC42B762407C034
              3658838CD55AB8299D2BFD2A698E9F75B9998771A1A45592325854004C2C0E7C
              F85200D42A27EBDF3B2AA969C317A7EA71E09C11CD6691F25F2900304D1AE681
              9D34280EEEA77AE0DFD6182DD872F8965399A3CB02606215E16B53FF9905F279
              88D2F860B6116FEDAB86C52A8E99924D893110F327F962167D349867281EE0C9
              3859D08265E99568B3086FAAE493A24C6C6EF0395A35CE8CF2A6303CA174C231
              D87C009B17E81500EED6401F256650187327F8F29EE1482C9D9E9E528A22814B
              63D901DCADC8A1EE487AC11F1342BB06F1C92FB548A681B1D7026052D1E0B063
              7100E21FB54FA7D9A4E8948DC5BD1B00939FA712D9EF0FEB328718BBFE2A1A4D
              C2E5072E0980896592D13AFBE9F4A7934BF969B51E018045778D4AC14F6B3FA8
              0EAC1C8A982E82E2F31F962157C0424A3400AC28DA4653E1F0403596A757F14B
              5FCE6A101D264FBC1B024FB5FDF83825A91855F5C22D90880280CDE8EE4A08E2
              4B6326F6CCA61FAFE38FA6FB3CBFA1FE6A7E4E8115549DC596CB266DB826E814
              B9E00058C697BE3C885F19EA2C56DC9CD2B7E0787E335FF4DC345AA1A69E3280
              E602A38234786AB41762877BF0DED395F69D6DC03A9A160B294101B0CE7FFD6A
              30A2BBB116E8486C8DE099E452186E09BB3C262800B6F2BB76E640BEF8115A5B
              326BF0A9086B04A2C48005B1FDB0619EBF606B832C766CCA10BE0E100D005390
              9F8AA6B583F0EC386FA7DF09E8ACFA162BDF71311754444F84C203D448887B84
              5F2E7376A99C0D73DF671BB1E7D73A345008624AB24C90E5F85134B35B12E7C7
              CF097456C17533F69F35E292A115B90613A45A4391E125A97E485D38D8AE5DCE
              97A4247E4DCEA500F0AFC995D093903E0AE09A0CAFCABA10000EA7882E51BF99
              068177A4BAA72BBD2CCD11B28904AFD6C7286C3827E99D5D459C6D22611C7489
              8539D40B22E5B647D2BE13E4966F0F8FE67334DD4A7D3C6D3822B7519202B029
              A697EF08CBFA7FD3D42A7D060D0A73E4364C92CE0307CBD322E6B3F3BEB86D2E
              5FE5AE9A62B76D8E29F4F53C9D55A5648FC218B9AD1447E4B2D26299D5E5C6C9
              7FC53CC164265F5237992BB7B9428AB9BDA7864BD0A78C6CEC80C4D10FEE6C9E
              4EA1A7D1721BDF4DE5D1EE2739BD79BAA3383234B17022DB3ECF81C4D16F07D3
              C640B8F6F6F9EBF4EFAE20E0F8EDF3E5DB222EDE6BFBFCDF09C8CCEE95123823
              0000000049454E44AE426082}
            ExplicitLeft = -32
            ExplicitTop = -32
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
        end
        object pnlDadosValorTotal: TPanel
          AlignWithMargins = True
          Left = 10
          Top = 8
          Width = 211
          Height = 52
          Margins.Left = 10
          Margins.Top = 8
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object lblValorTotal: TLabel
            Left = 0
            Top = 0
            Width = 211
            Height = 19
            Align = alTop
            Alignment = taRightJustify
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 131
            ExplicitWidth = 80
          end
          object lblValorPedido: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 22
            Width = 205
            Height = 27
            Align = alClient
            Alignment = taRightJustify
            Caption = 'R$ 125,89'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 14249758
            Font.Height = -27
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 82
            ExplicitWidth = 126
            ExplicitHeight = 32
          end
        end
      end
      object pnlBotoes: TPanel
        Left = 10
        Top = 10
        Width = 570
        Height = 60
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object btnGravar: TButton
          AlignWithMargins = True
          Left = 12
          Top = 16
          Width = 120
          Height = 44
          Margins.Left = 20
          Margins.Top = 16
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Gravar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ImageIndex = 2
          ImageMargins.Left = 10
          Images = imgListBotoes
          ParentFont = False
          TabOrder = 0
          OnClick = btnGravarClick
        end
        object btnCarregar: TButton
          AlignWithMargins = True
          Left = 292
          Top = 16
          Width = 120
          Height = 44
          Margins.Left = 20
          Margins.Top = 16
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Carregar'
          ImageIndex = 1
          ImageMargins.Left = 10
          Images = imgListBotoes
          TabOrder = 1
          TabStop = False
          OnClick = btnCarregarClick
        end
        object btnExcluit: TButton
          AlignWithMargins = True
          Left = 432
          Top = 16
          Width = 120
          Height = 44
          Margins.Left = 20
          Margins.Top = 16
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Excluir'
          ImageIndex = 0
          ImageMargins.Left = 10
          Images = imgListBotoes
          TabOrder = 2
          TabStop = False
          OnClick = btnExcluitClick
        end
        object btnCancelarPedido: TButton
          AlignWithMargins = True
          Left = 152
          Top = 16
          Width = 120
          Height = 44
          Margins.Left = 20
          Margins.Top = 16
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Cancelar'
          ImageIndex = 4
          ImageMargins.Left = 10
          Images = imgListBotoes
          TabOrder = 3
          TabStop = False
          OnClick = btnCancelarPedidoClick
        end
      end
    end
    object pnlPedido: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 8
      Width = 1238
      Height = 70
      Margins.Bottom = 10
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      object pnlNrPedido: TPanel
        AlignWithMargins = True
        Left = 20
        Top = 10
        Width = 150
        Height = 50
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object pnlLblNrPedido: TPanel
          Left = 0
          Top = 0
          Width = 150
          Height = 18
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object lblNrPedido: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 140
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 2
            Align = alTop
            Caption = 'N'#186' Pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 63
          end
        end
        object pnlEdtNrPedido: TPanel
          AlignWithMargins = True
          Left = 2
          Top = 20
          Width = 146
          Height = 28
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object edtNrPedido: TEdit
            AlignWithMargins = True
            Left = 10
            Top = 5
            Width = 126
            Height = 18
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
          end
        end
      end
      object pnlDataPedido: TPanel
        AlignWithMargins = True
        Left = 190
        Top = 10
        Width = 200
        Height = 50
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        object pnlLblDataPedido: TPanel
          Left = 0
          Top = 0
          Width = 200
          Height = 18
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object lblDataPedido: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 190
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 2
            Align = alTop
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 29
          end
        end
        object pnlEdtDataPedido: TPanel
          AlignWithMargins = True
          Left = 2
          Top = 20
          Width = 196
          Height = 28
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object edtDataPedido: TEdit
            AlignWithMargins = True
            Left = 10
            Top = 5
            Width = 176
            Height = 18
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
          end
        end
      end
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 936
    Top = 24
  end
  object cdsItens: TClientDataSet
    PersistDataPacket.Data = {
      B40000009619E0BD010000001800000005000000000003000000B40007436F64
      50726F640400010000000000084465736350726F640200490000000100055749
      44544802000200FF000351746408000400000001000753554254595045020049
      0006004D6F6E6579000956616C6F72556E697408000400000001000753554254
      5950450200490006004D6F6E6579000A56616C6F72546F74616C080004000000
      010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 872
    Top = 24
    object cdsItensCodProd: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'CodProd'
    end
    object cdsItensDescProd: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DescProd'
      Size = 255
    end
    object cdsItensQtd: TCurrencyField
      FieldName = 'Qtd'
      DisplayFormat = '#,##0.###'
    end
    object cdsItensValorUnit: TCurrencyField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'ValorUnit'
    end
    object cdsItensValorTotal: TCurrencyField
      DisplayLabel = 'Total'
      FieldName = 'ValorTotal'
    end
  end
  object imgListBotoes: TImageList
    Height = 24
    Width = 24
    Scaled = True
    Left = 792
    Top = 24
    Bitmap = {
      494C010106000800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      FD00CCCCFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC2DDFD005BA4FD0056A3FD00C3DEFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6FD005C5CFD001111FD000000FF000000
      FF000000FF000000FF001212FD005D5DFD00B7B7FD0000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFBAD8
      FD00338EFD00318EFF003595FF0058B4FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1D1FD003F3FFD000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF004040FD00D2D2FD000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFBAD8FD00338E
      FD00318EFF00318EFF003899FF0059B4FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAAAFD000A0AFD000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000A0AFD00ABAB
      FD0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFBAD8FD00338EFD00318E
      FF00318EFF003696FF0049B2FD00BFDDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      FD000000FD000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FD00ABABFD00000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFBAD8FD00338EFD00318EFF00318E
      FF003696FF0049B2FD00B7D8FD00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0FD000A0A
      FD000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000A0AFD00D2D2FD000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFD5D1CE005491DD00318EFF00318EFF003696
      FF0049B2FD00B7D8FD00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004141FD000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF003E3EFD000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFC5BEB700A4988D0083746400897A6C00AAA09600CCC5
      BF00000000FF000000FF000000FFCDC7C1006B5A48005291DD003696FF0049B2
      FD00B7D8FD00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6FD000000FF000000
      FF000000FF000000FF000000FF000909FD006767FD001E1EFD000000FF000000
      FF000000FF000000FF001E1EFD006767FD000909FD000000FF000000FF000000
      FF000000FF000000FF00B7B7FD0000000000000000FF000000FF000000FF0000
      00FFAEA49900624F3A006A574400725F4D008777640082705F00705D4B006956
      420068534000C2BAB300000000FF95877A008D8072006B5A480056A3DC00B7D8
      FD00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B5BFD000000FF000000
      FF000000FF000000FF000000FF006868FD0000000000000000002525FD000000
      FF000000FF002525FD0000000000000000006767FD000000FF000000FF000000
      FF000000FF000000FF005D5DFD0000000000000000FF000000FFE6E3E0007D6C
      5C00695643009D8C7A00D4C4B100EBDBC700F2E2CE00F2E2CE00E7D7C300CEBE
      AB00907E6D0066523E007E6E5E007B6A5A0095877A00CDC7C100D5D1CE000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001010FD000000FF000000
      FF000000FF000000FF000000FF001F1FFD000000000000000000000000002424
      FD002424FD000000000000000000000000001E1EFD000000FF000000FF000000
      FF000000FF000000FF001212FD0000000000000000FF000000FF786553007966
      5500C4B3A100F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00EFDFCB00B7A694006F5C49007E6E5E00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF002525FD0000000000000000000000
      00000000000000000000000000002525FD000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000000000FFA69A8E006B584500C9B9
      A600F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00B7A6940066523E00C2BAB300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBCBFD000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF002424FD00000000000000
      000000000000000000002929FD000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00CDCDFD00DDD9D400614D3900A1907F00F2E2
      CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00EFDFCB00907E6D0068534000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CACAFD000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF002424FD00000000000000
      000000000000000000002828FD000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00CBCBFD00B0A49A006E5B4900E2D2BE00F8F0
      E600F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00F2E2CE00CEBEAB0069564200CCC5BF00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF002525FD0000000000000000000000
      00000000000000000000000000002525FD000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000008F8072007E6C5A00F5E9D900FFFF
      FF00F3E5D400F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00F2E2CE00E7D7C300705D4B00AAA09600000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001010FD000000FF000000
      FF000000FF000000FF000000FF001E1EFD000000000000000000000000002424
      FD002424FD000000000000000000000000001E1EFD000000FF000000FF000000
      FF000000FF000000FF001111FD00000000006F5D4A009D8C7A00F8EFE300FFFF
      FF00F2E3CF00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE0082705F00897A6C00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B5BFD000000FF000000
      FF000000FF000000FF000000FF006969FD0000000000000000002525FD000000
      FF000000FF002525FD0000000000000000006767FD000000FF000000FF000000
      FF000000FF000000FF005C5CFD000000000069564300A1918000F7EEE200FEFD
      FC00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE008777640083746400000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5FD000000FF000000
      FF000000FF000000FF000000FF000909FD006969FD001E1EFD000000FF000000
      FF000000FF000000FF001F1FFD006969FD000909FD000000FF000000FF000000
      FF000000FF000000FF00B7B7FD0000000000897A6C0084726100F5EADB00FFFE
      FE00F3E5D300F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00F2E2CE00EBDBC700725F4D00A4988D00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004040FD000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF003D3DFD000000000000000000A99E94006F5D4A00E7D7C300FDFA
      F600F9F2E900F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00F2E2CE00D4C4B1006A574400C5BEB700000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFFD000909
      FD000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000A0AFD00D1D1FD000000000000000000D0CAC40065503C00B09F8E00F7EC
      DF00FEFDFB00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00F2E2CE009D8C7A00624F3A00000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      FD000000FD000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FD00ABABFD00000000000000000000000000000000FF93857700705D4B00D5C5
      B300F4E7D600F4E7D600F7EDE100F4E6D400F2E2CE00F2E2CE00F2E2CE00F2E2
      CE00F2E2CE00F2E2CE00C4B3A10069564300AEA49900000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAAAFD000909FD000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000707FD00A3A3
      FD0000000000000000000000000000000000000000FF000000FF6C5946008473
      6100D5C5B200F5EADB00FDFBF900FFFFFF00FCF8F400F3E3D000F2E2CE00F2E2
      CE00F2E2CE00C9B9A600796655007D6C5C00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFCFFD003C3CFD000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF003D3DFD00D0D0FD000000
      000000000000000000000000000000000000000000FF000000FFD8D2CD006C59
      4600705D4B00B09F8E00E7D7C300F4E7D700F7EDE100F2E3CF00F2E2CE00E1D1
      BD00A1907F006B58450078655300E6E3E000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5B5FD005B5BFD001010FD000000FF000000
      FF000000FF000000FF001010FD005B5BFD00B6B6FD0000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF9385770065503C006F5D4A0084726100A19180009D8C7A007E6C5A006E5B
      4900614D3900A69A8E00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBCB
      FD00CBCBFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFD0CAC400A99E9400897A6C00695643006F5D4A008F807200B0A4
      9A00DDD9D400000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009795FC004D49FB002C28F9000F0B
      FA000F0BFA002C28F9004E4AFB009795FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBEB
      CF00DBEBCF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6E1
      D200F6E1D2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006F6DFB000703FA000500FC000500FC000500FC000500
      FC000500FC000500FC000500FC000500FC000703FA006765FB00000000000000
      000000000000000000000000000000000000B5E6FD0073D2FD006ED0FD006ED0
      FD006ED0FD006ED0FD006ED0FD006ED0FD006ED0FD006ED0FD006ED0FD006ED0
      FD006ED0FD006ED0FD006ED0FD006ED0FD006ED0FD006ED0FD006ED0FD006ED0
      FD006ED0FD005FCAFD0043C2FD009ADEFD000000000000000000000000000000
      0000000000000000000000000000CAE3BB008AC3690055A625004AA316004AA3
      16004AA316004AA3160055A826008AC36900CBE3BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2D4BD00E5A26E00D9772C00D96F1E00D96F
      1E00D96F1E00D96F1E00DA782D00E5A26E00F2D5BF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2FC00110DFA000500FC000500FC000500FC000500FC000500FC000500
      FC000500FC000500FC000500FC000500FC000500FC000500FC00120EFA00B3B3
      FC000000000000000000000000000000000068CEFD0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004AC6FF0030BCFD000000000000000000000000000000
      000000000000DCECD30075B84F004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA3160075B84E00DEEDD5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6E3D500E0925500D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E1915400F6E4D5000000
      0000000000000000000000000000000000000000000000000000000000009492
      FC000501FA000500FC000500FC000500FC000500FC000500FC000500FC000500
      FC000500FC000500FC000500FC000500FC000500FC000500FC000500FC000501
      FA009593FC0000000000000000000000000066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF000000000000000000000000000000
      0000C1DFB00050A51E004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004EA41C00BCDC
      AA00000000000000000000000000000000000000000000000000000000000000
      0000F0CEB300D8732600D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D8722300EFCA
      AE00000000000000000000000000000000000000000000000000B7B6FC000602
      FA000500FC000500FC000500FC000500FC000500FC000500FC000500FC000500
      FC000500FC000500FC000500FC000500FC000500FC000500FC000500FC000500
      FC000501FA00B2B2FC00000000000000000066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF00000000000000000000000000C1DE
      AF0049A115004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA3160049A1
      1500C1DFB000000000000000000000000000000000000000000000000000F0CD
      B200D76E1D00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D76E
      1D00F0CEB3000000000000000000000000000000000000000000100CFA000500
      FC000500FC000500FC000500FC001713FA000000000000000000000000000000
      0000000000000000000000000000000000000F0BFA000500FC000500FC000500
      FC000500FC00120EFA00000000000000000066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF000000000000000000DCECD3004FA4
      1E004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      160050A51E00DEEDD50000000000000000000000000000000000F6E3D500D773
      2500D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D9762B00F6E3
      D400F6E1D200D9762B00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D8732600F6E4D5000000000000000000000000006764FB000500FC000500
      FC000500FC000500FC000500FC00322EFB000000000000000000CFCFFC000000
      000000000000CECEFC0000000000000000002723FA000500FC000500FC000500
      FC000500FC000500FC006866FB000000000066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF00000000000000000076B84F004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA3160075B84F0000000000000000000000000000000000E08F5200D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E1955A000000
      000000000000E1955A00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00E19154000000000000000000000000000703FA000500FC000500
      FC000500FC000500FC000500FC00423FFB0000000000000000003734FA000000
      0000000000003734FA0000000000000000003936FA000500FC000500FC000500
      FC000500FC000500FC000703FA000000000066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF0000000000C9E3BA004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA31600CBE3BD000000000000000000F2D4BD00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E2965C000000
      000000000000E2965C00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00F2D5BF00000000009593FC000500FC000500FC000500
      FC000500FC000500FC000500FC005351FB0000000000000000003734FA000000
      0000000000003734FA0000000000000000004B47FB000500FC000500FC000500
      FC000500FC000500FC000500FC009896FC0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF00000000008AC269004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA3160074B74C00DFEED700B0D6
      99004AA217004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316008AC369000000000000000000E5A06D00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E2965C000000
      000000000000E2965C00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00E5A26F00000000004C48FB000500FC000500FC000500
      FC000500FC000500FC000500FC006562FB0000000000000000003734FA000000
      0000000000003734FA0000000000000000005E5BFB000500FC000500FC000500
      FC000500FC000500FC000500FC004E4AFB0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF000000000054A725004AA316004AA3
      16004AA316004AA316004AA316004AA316007FBD5C0000000000000000000000
      0000BFDEAE004CA319004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA3160055A826000000000000000000DA772B00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E2965C000000
      000000000000E2965C00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00DA782D00000000002925F9000500FC000500FC000500
      FC000500FC000500FC000500FC007774FB0000000000000000003734FA000000
      0000000000003734FA0000000000000000006F6DFB000500FC000500FC000500
      FC000500FC000500FC000500FC002C28F90066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF00000000004AA316004AA316004AA3
      16004AA316004AA316004AA316008CC46C000000000000000000000000000000
      000000000000C6E1B7004DA31B004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316000000000000000000D96F1E00D96F1E00D96F
      1E00D96F1E00D9762B00E1935800E1935800E1935800E1935800E9B187000000
      000000000000E9B18700E1935800E1935800E1935800E1935800D9762B00D96F
      1E00D96F1E00D96F1E00D96F1E0000000000100CFA000500FC000500FC000500
      FC000500FC000500FC000500FC008685FC0000000000000000003734FA000000
      0000000000003734FA000000000000000000807FFC000500FC000500FC000500
      FC000500FC000500FC000500FC00110DFA0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF00D9EBCE004AA316004AA316004AA3
      16004AA316004AA3160088C167000000000000000000E5F1DF0063AF3700B5D8
      A1000000000000000000CBE4BE004FA41E004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA31600D9EBCE00F5E0D000D96F1E00D96F1E00D96F
      1E00D96F1E00F6E3D50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6E1D200D96F
      1E00D96F1E00D96F1E00D96F1E00F5E0D000100CFA000500FC000500FC000500
      FC000500FC000500FC000500FC009896FC0000000000000000004D49FB000000
      0000000000004D49FB0000000000000000009593FC000500FC000500FC000500
      FC000500FC000500FC000500FC00100CFA0065CDFD0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF00D9EBCE004AA316004AA316004AA3
      16004AA316004AA31600ABD4940000000000DCECD3005AAA2B004AA3160049A1
      1500ADD598000000000000000000D1E7C50052A621004AA316004AA316004AA3
      16004AA316004AA316004AA31600D9EBCE00F5E0D000D96F1E00D96F1E00D96F
      1E00D96F1E00F6E3D50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6E3D400D96F
      1E00D96F1E00D96F1E00D96F1E00F5E0D0002824F9000500FC000500FC000500
      FC000500FC000500FC000500FC00AAA8FC000000000000000000000000000000
      000000000000000000000000000000000000A7A5FC000500FC000500FC000500
      FC000500FC000500FC000500FC002A26F90057CAFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF00000000004AA316004AA316004AA3
      16004AA316004AA316004FA41D0080BD5D0052A51F004AA316004AA316004AA3
      16004AA31600A6D18E000000000000000000D8EACD0054A725004AA316004AA3
      16004AA316004AA316004AA316000000000000000000D96F1E00D96F1E00D96F
      1E00D96F1E00DA772B00E1935800E1935800E1935800E1935800E9B187000000
      000000000000E9B18700E1935800E1935800E1935800E1935800D9762B00D96F
      1E00D96F1E00D96F1E00D96F1E00000000004C48FB000500FC000500FC000500
      FC000500FC000500FC000500FC00332FFB004643FB004643FB004643FB004643
      FB004643FB004643FB004643FB004643FB00332FFB000500FC000500FC000500
      FC000500FC000500FC000500FC004E4AFB002CBDFF0095DEFF00E0F5FF00E0F5
      FF00E0F5FF00E0F5FF00E0F5FF00E0F5FF00E0F5FF00E0F5FF00E0F5FF00E0F5
      FF0094DDFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002BBCFF000000000054A725004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316009FCD83000000000000000000ACD495004AA316004AA3
      16004AA316004AA3160055A625000000000000000000DA772B00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E2965C000000
      000000000000E2965C00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00D9772C00000000009492FC000500FC000500FC000500
      FC000500FC000500FC009694FC00000000000000000000000000000000000000
      000000000000000000000000000000000000000000009694FC000500FC000500
      FC000500FC000500FC000500FC009694FC002BBCFF00A0E1FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FBFEFF0095DEFF0066CFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF004BC7FF002ABAFD00000000008AC268004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA3160094C87600E7F1E1007FBD5A004AA316004AA3
      16004AA316004AA316008AC369000000000000000000E4A06B00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E2965C000000
      000000000000E2965C00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00E5A26E0000000000000000000602FA000500FC000500
      FC000500FC000500FC005452FB00DAD9FD00DDDCFD00DDDCFD00DDDCFD00DDDC
      FD00DDDCFD00DDDCFD00DDDCFD00DDDCFD00DAD9FD005452FB000500FC000500
      FC000500FC000500FC000703FA00000000002BBCFF00A0E1FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFEFF0098DFFF0066CFFF0066CFFF0066CFFF0066CFFF0066CF
      FF0066CFFF0066CFFF0050C7FC002FB4FF0000000000C8E2BA004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA31600CAE3BB000000000000000000F2D3BC00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E2965C000000
      000000000000E2965C00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00F2D4BD0000000000000000006562FB000500FC000500
      FC000500FC000500FC000500FC000500FC000500FC00201CFA005754FB005754
      FB005754FB005754FB00201CFA000500FC000500FC000500FC000500FC000500
      FC000500FC000500FC006765FB00000000002BBCFF00A1DADE00FFF4C500FFF4
      C500FFF4C500FFF4C500FFF4C500FFF4C500FFF4C500FFF4C500FFF4C500FFF4
      C500FFF4C500FFF4C500FFF4C500EFEFC700EBEEC600EBEEC600EBEEC600EBEE
      C600EBEEC600EBE59E009CC8C70036A4FF00000000000000000072B64A004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA3160074B74D0000000000000000000000000000000000E08F5100D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E1955A000000
      000000000000E1955A00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00E092550000000000000000000000000000000000100CFA000500
      FC000500FC000500FC000500FC000500FC000500FC004F4DFB00000000000000
      000000000000000000004F4DFB000500FC000500FC000500FC000500FC000500
      FC000500FC00110DFA0000000000000000002BBCFF0069CCEC009CD9DC009CD9
      DC009CD9DC009CD9DC009CD9DC009CD9DC009CD9DC009CD9DC009CD9DC009CD9
      DC009CD9DC009CD9DC009CD9DC009CD9DC009CD9DC009CD9DC009CD9DC009CD9
      DC00A4DAD800A0D3C0006EBEDD0038A4FD000000000000000000DAEBD1004FA4
      1D004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004FA41E00DCECD30000000000000000000000000000000000F6E1D200D872
      2400D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00DA772B00F6E3
      D500F6E3D400D9762B00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D7732500F6E3D50000000000000000000000000000000000B5B5FC000602
      FA000500FC000500FC000500FC000500FC000500FC000500FC000500FC000500
      FC000500FC000500FC000500FC000500FC000500FC000500FC000500FC000500
      FC000501FA00B2B0FC0000000000000000002BBCFF002BBCFF002BBCFF002BBC
      FF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF002BBC
      FF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF002BBC
      FF002BBCFF002BB7FD0033A7FD008BCAFD00000000000000000000000000BFDE
      AE0049A115004AA316004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004AA3160049A1
      1500C1DEAF00000000000000000000000000000000000000000000000000F0CC
      B000D76E1D00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D76E
      1D00F0CDB2000000000000000000000000000000000000000000000000009391
      FC000501FA000500FC000500FC000500FC000500FC000500FC000500FC000500
      FC000500FC000500FC000500FC000500FC000500FC000500FC000500FC000501
      FA009492FC000000000000000000000000002BBCFF002BBCFF002BBCFF002BBC
      FF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF008BD9
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1DEAF004FA41E004AA316004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA316004AA316004EA41C00BCDC
      A900000000000000000000000000000000000000000000000000000000000000
      0000F0CDB200D7732500D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00D8722300EFC9
      AC00000000000000000000000000000000000000000000000000000000000000
      0000B2B0FC00100CFA000500FC000500FC000500FC000500FC000500FC000500
      FC000500FC000500FC000500FC000500FC000500FC000500FC00100CFA00B3B1
      FC00000000000000000000000000000000002FBCFD002BBCFF002BBCFF002BBC
      FF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF002BBCFF0091DBFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAEBD10074B74B004AA316004AA316004AA316004AA316004AA3
      16004AA316004AA316004AA316004AA316004AA3160074B74C00DCECD3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6E1D200E08F5100D96F1E00D96F1E00D96F1E00D96F1E00D96F
      1E00D96F1E00D96F1E00D96F1E00D96F1E00D96F1E00E08F5200F6E3D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006765FB000703FA000500FC000500FC000500FC000500
      FC000500FC000500FC000500FC000500FC000501FA005754FB00000000000000
      00000000000000000000000000000000000098DDFD003DC0FD0037BEFD0037BE
      FD0037BEFD0037BEFD0037BEFD0037BEFD003EC0FD009ADDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C8E2BA008AC2680054A725004AA316004AA3
      16004AA316004AA3160054A725008AC26800C9E3BA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2D3BC00E5A06D00DA772B00D96F1E00D96F
      1E00D96F1E00D96F1E00DA772B00E5A06D00F2D4BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009492FC004B47FB002B27F9000E0A
      FA000E0AFA002B27F9004C48FB009593FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9EB
      CE00D9EBCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5E0
      D000F5E0D0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00FFE7FFFFFFF0000000000000FE007FFF
      FFE0000000000000F8001FFFFFC0000000000000F0000FFFFF80000000000000
      E00007FFFF01000000000000C00003FFFE03000000000000C00003FC0E070000
      00000000800001F0020F00000000000080C301C0001F00000000000080E701C0
      00FF000000000000807E0180007F000000000000003C0000007F000000000000
      003C0000003F000000000000807E0100003F00000000000080E70100003F0000
      0000000080C30100003F00000000000080000100003F000000000000C0000300
      003F000000000000C0000300007F000000000000E0000780007F000000000000
      F0000FC000FF000000000000F8001FC000FF000000000000FE007FF003FF0000
      00000000FFE7FFF807FF000000000000FF00FFFFFFFFFFE7FFFFE7FFFC003F00
      0000FE007FFE007FF0000F000000F8001FF8001FE00007000000F0000FF0000F
      C00003000000E00007E00007C0FF03000000C00003C0000380DB01000000C000
      03C0180380DB0100000080000180180100DB0000000080000180180100DB0000
      000080700180180100DB0000000080F80180180100DB00000000018C0003FFC0
      00DB0000000001060003FFC000FF000000008003018018010000000000008001
      8180180101FF8000000080000180180180000100000080000180180180000100
      0000C00003C01803C03C03000000C00003C00003C00003000000E00007E00007
      E00007000FFFF0000FF0000FF0000F001FFFF8001FF8001FFC003F003FFFFE00
      7FFE007FFF00FFFFFFFFFFE7FFFFE7FF00000000000000000000000000000000
      000000000000}
  end
end
