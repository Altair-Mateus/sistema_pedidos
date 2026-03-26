object frmEmissaoPedido: TfrmEmissaoPedido
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Pedidos'
  ClientHeight = 681
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 16
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 984
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
    ExplicitLeft = 312
    ExplicitTop = 232
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlCliente: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 8
      Width = 958
      Height = 135
      Margins.Bottom = 20
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
      ExplicitLeft = 10
      ExplicitTop = 5
      ExplicitWidth = 964
      object pnlTituloCliente: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 13
        Width = 938
        Height = 30
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 10
        ExplicitWidth = 744
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
        Width = 938
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 97
        ExplicitWidth = 744
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
          Width = 229
          Height = 16
          Margins.Top = 7
          Margins.Right = 10
          Margins.Bottom = 7
          Align = alLeft
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
          ExplicitLeft = 5
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
        Width = 938
        Height = 34
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitLeft = 288
        ExplicitTop = 56
        ExplicitWidth = 185
        ExplicitHeight = 41
        object pnlFundoPesquisaCliente: TPanel
          Left = 0
          Top = 0
          Width = 449
          Height = 34
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = -1
          ExplicitHeight = 44
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
            ExplicitLeft = 0
            ExplicitTop = -2
            ExplicitWidth = 447
            ExplicitHeight = 42
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
              ExplicitHeight = 22
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
              ParentShowHint = False
              ShowHint = False
              TabOrder = 1
              TextHint = 'Buscar cliente por c'#243'digo'
              ExplicitTop = 8
              ExplicitWidth = 389
              ExplicitHeight = 22
            end
          end
        end
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 166
      Width = 958
      Height = 165
      Margins.Bottom = 20
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
      ExplicitLeft = 10
      ExplicitTop = 140
      ExplicitWidth = 964
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 13
        Width = 938
        Height = 30
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 20
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 944
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
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Image2: TImage
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
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 13
        Top = 105
        Width = 932
        Height = 30
        Margins.Bottom = 20
        Align = alBottom
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        ExplicitLeft = 10
        ExplicitTop = 125
        ExplicitWidth = 944
        object lblDica: TLabel
          AlignWithMargins = True
          Left = 34
          Top = 7
          Width = 32
          Height = 3
          Margins.Left = 5
          Margins.Top = 7
          Margins.Right = 10
          Margins.Bottom = 20
          Align = alLeft
          Caption = 'Dica:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitHeight = 16
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 10
          Top = 5
          Width = 16
          Height = 5
          Margins.Left = 10
          Margins.Top = 5
          Margins.Bottom = 20
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          ExplicitHeight = 20
          object Image3: TImage
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 10
            Height = -18
            Margins.Bottom = 20
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
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 16
            ExplicitHeight = 20
          end
        end
      end
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 66
        Width = 938
        Height = 16
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 20
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitTop = 51
        ExplicitWidth = 944
        ExplicitHeight = 34
        object Panel7: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 465
          Height = 0
          Margins.Bottom = 20
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel7'
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitHeight = 64
          object lblProduto: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 455
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 20
            Align = alTop
            Caption = 'Produto (c'#243'digo)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 105
          end
          object Panel8: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 39
            Width = 449
            Height = 5
            Margins.Bottom = 20
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitHeight = 34
            object Panel9: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 2
              Width = 445
              Height = 0
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 20
              Align = alClient
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              ExplicitHeight = 32
              object Panel10: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 5
                Width = 30
                Height = 0
                Margins.Left = 5
                Margins.Top = 5
                Margins.Bottom = 5
                Align = alLeft
                BevelOuter = bvNone
                Color = clWhite
                ParentBackground = False
                TabOrder = 0
                ExplicitHeight = 22
                object Image4: TImage
                  Left = 0
                  Top = 0
                  Width = 30
                  Height = 0
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
                Width = 387
                Height = 0
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Margins.Bottom = 5
                Align = alClient
                BorderStyle = bsNone
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                TextHint = 'Buscar produto por c'#243'digo'
                ExplicitHeight = 22
              end
            end
          end
        end
      end
    end
    object Panel11: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 354
      Width = 958
      Height = 183
      Margins.Bottom = 20
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
      ExplicitLeft = 10
      ExplicitTop = 140
      ExplicitWidth = 964
      ExplicitHeight = 165
      object Panel12: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 13
        Width = 938
        Height = 30
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 20
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
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
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Image5: TImage
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
      object pnlGrd: TPanel
        Left = 10
        Top = 63
        Width = 938
        Height = 110
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        ExplicitLeft = 384
        ExplicitTop = 72
        ExplicitWidth = 185
        ExplicitHeight = 41
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 938
          Height = 110
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
        end
      end
    end
    object Panel21: TPanel
      AlignWithMargins = True
      Left = 13
      Top = 560
      Width = 958
      Height = 91
      Margins.Bottom = 20
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
    end
  end
end
