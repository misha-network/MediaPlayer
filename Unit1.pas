unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, MPlayer, Unit2;

type
  TForm1 = class(TForm)
    mp1: TMediaPlayer;
    dlgOpen1: TOpenDialog;
    lbl1: TLabel;
    lst1: TListBox;
    mm1: TMainMenu;
    File1: TMenuItem;
    Open1: TMenuItem;
    Exit1: TMenuItem;
    Playlist1: TMenuItem;
    SavePlaylist1: TMenuItem;
    OpenPlaylist1: TMenuItem;
    dlgOpen2: TOpenDialog;
    dlgSave1: TSaveDialog;
    About1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure lst1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure SavePlaylist1Click(Sender: TObject);
    procedure OpenPlaylist1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  with mp1 do
  with dlgSave1 do
  begin
    dlgSave1.Filter := 'Playlist file|*.plf';
    mp1.DisplayRect := Rect(10, 10, 200, 200);
    lbl1.Caption := 'File: ' + FileName;
    Notify := true;
  end;
end;

procedure TForm1.lst1Click(Sender: TObject);
begin
  with mp1 do
  begin
    FileName := lst1.Items[lst1.ItemIndex];
    lbl1.Caption := 'File: ' + FileName;
    Open;
    Notify := true;
  end;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
  with mp1 do
  begin
    FileName := dlgOpen1.FileName;
    lbl1.Caption := 'File: ' + FileName;
    lst1.Items.Add(FileName);
    Open;
    Notify := true;
  end;
end;

procedure TForm1.SavePlaylist1Click(Sender: TObject);
begin
  if dlgSave1.Execute then
  with dlgSave1 do
  begin
    FileName := dlgSave1.FileName;
    lst1.Items.SaveToFile(FileName);
  end;
end;

procedure TForm1.OpenPlaylist1Click(Sender: TObject);
begin
  if dlgOpen2.Execute then
  with dlgOpen2 do
  begin
    FileName := dlgOpen2.FileName;
    lst1.Items.LoadFromFile(FileName);
  end;
end;

procedure TForm1.About1Click(Sender: TObject);
var AF: TForm2;
begin
  AF := TForm2.Create(nil);
  try
    if AF.ShowModal = mrOk then
      AF.Show;
    finally
      AF.Release;
  end;
end;

end.
