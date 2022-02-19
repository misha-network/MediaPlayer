object Form1: TForm1
  Left = 344
  Top = 284
  Width = 842
  Height = 346
  Caption = 'Media Player'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF008888
    8888888888888888888888888888888888888888888888888888888888888888
    8888888888888888888888888888777777888888888888888888888888887777
    7777777777778888888888888888CCC7CCCC777777777777777777788888CCC7
    CCCCCCC7CCCCCCCC7CCC77777777CCC7CCCCCCC7CCCCCCCC7CCCCCCC7CCCCCC7
    CCCCCCC7CCCCCCCC7CCCCCCC7CCCCCC7CCCCCCC7CCCCCCCC7CCCCCCC7CCC7777
    CCCCCCC7CCCCCCCC7CCCCCCC7CCC77777777777777CCCCCC7CCCCCCC7CCC8888
    8888777777777777777777CC7CCC888888888888888888888888777777778888
    88888888888BB8888888888888888888888888888BBBBBB88888888888888888
    888888888BBBBBB8888888888888888888888888BBBBBBBB8888888888888888
    88888888BBBBBBBB8888888888888888888888888BBBBBB88888888888888888
    888888888BBBBBB8888888888888888888888888888BB8B88888888888888888
    88888888888888B8888888888888888888888888888888B88888888888888888
    88888888888888B8888888888888888888888888888888B88888888888888888
    88888888888888B8888888888888888888888888888888B888BBBBB888888888
    88888888888888BBBBBBBBB88888888888888888888888BBBBBBBBB888888888
    88888888888888BBBB8888888888888888888888888888888888888888880000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 40
    Width = 33
    Height = 23
    Caption = 'File:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MeIYou'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object mp1: TMediaPlayer
    Left = 0
    Top = 0
    Width = 289
    Height = 30
    TabOrder = 0
  end
  object lst1: TListBox
    Left = 488
    Top = 0
    Width = 338
    Height = 287
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MeIYou'
    Font.Style = [fsItalic]
    ItemHeight = 15
    ParentFont = False
    TabOrder = 1
    OnClick = lst1Click
  end
  object dlgOpen1: TOpenDialog
    Filter = 'MP3|*.mp3|WAW|*.waw|AVI|*.avi'
    Title = 'Open Media File'
    Left = 248
    Top = 72
  end
  object mm1: TMainMenu
    Left = 200
    Top = 136
    object File1: TMenuItem
      Caption = '&File'
      object Open1: TMenuItem
        Caption = 'Open'
        OnClick = Open1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Playlist1: TMenuItem
      Caption = '&Playlist'
      object SavePlaylist1: TMenuItem
        Caption = 'Save Playlist'
        OnClick = SavePlaylist1Click
      end
      object OpenPlaylist1: TMenuItem
        Caption = 'Open Playlist'
        OnClick = OpenPlaylist1Click
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      OnClick = About1Click
    end
  end
  object dlgOpen2: TOpenDialog
    Filter = 'Playlist File|*.plf'
    Left = 312
    Top = 72
  end
  object dlgSave1: TSaveDialog
    FileName = 'playlist.plf'
    Filter = 'Playlist File|*.plf'
    Left = 376
    Top = 72
  end
end
