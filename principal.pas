unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FMX.Graphics, Vcl.Buttons;

type
  TForm1 = class(TForm)
    edtHex: TLabeledEdit;
    edtColor: TLabeledEdit;
    Button1: TButton;
    Panel1: TPanel;
    Image1: TImage;
    edtRed: TLabeledEdit;
    edtGreen: TLabeledEdit;
    edtBlue: TLabeledEdit;
    ColorDialog1: TColorDialog;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure edtColorChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtRedChange(Sender: TObject);
    procedure edtHexKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    function TColorToHex(Color : TColor): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Cor: TColor;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  ColorDialog1.Execute();
  Cor := ColorDialog1.Color;
  edtColor.Text := ColorToString(Cor);
  edtHex.Text := TColorToHex(Cor);
  {Image1.Canvas.Brush.Color := Cor;
  Image1.Canvas.Rectangle(-1, -1, Image1.Width, Image1.Height);
  edtColor.Text := ColorToString(Cor);
  edtHex.Text := TColorToHex(Cor); }
  Button1.OnClick(Sender);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Hexa: string;
begin
  Hexa := StringReplace(Trim(edtHex.Text), '#', '', [rfReplaceAll, rfIgnoreCase]);
  Cor := RGB(StrToInt('$' + Copy(Hexa, 1, 2)), StrToInt('$' + Copy(Hexa, 3, 2)), StrToInt('$' + Copy(Hexa, 5, 2)));
  edtRed.Text := IntToStr(StrToInt('$' + Copy(Hexa, 1, 2)));
  edtGreen.Text := IntToStr(StrToInt('$' + Copy(Hexa, 3, 2)));
  edtBlue.Text  := IntToStr(StrToInt('$' + Copy(Hexa, 5, 2)));
  edtColor.Text := ColorToString(Cor);
end;

procedure TForm1.edtColorChange(Sender: TObject);
begin
  try
    Cor := StringToColor(edtColor.Text);
    Image1.Canvas.Brush.Color := Cor;
    Image1.Canvas.Rectangle(-1, -1, Image1.Width, Image1.Height);
  except
  end;
end;

procedure TForm1.edtHexKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Button1.OnClick(Sender);
end;

procedure TForm1.edtRedChange(Sender: TObject);
begin
  try
    if (Trim(edtRed.Text) <> '') and (Trim(edtGreen.Text) <> '') and (Trim(edtBlue.Text) <> '') then
    begin
      Cor := RGB(StrToInt(Trim(edtRed.Text)), StrToInt(Trim(edtGreen.Text)), StrToInt(Trim(edtBlue.Text)));
      Image1.Canvas.Brush.Color := Cor;
      Image1.Canvas.Rectangle(-1, -1, Image1.Width, Image1.Height);
      edtColor.Text := ColorToString(Cor);
    end;
  except
  end;
  {if edtColor.Text <> ColorToString(Cor) then
    edtColor.Text := ColorToString(Cor);}
end;

procedure TForm1.FormShow(Sender: TObject);
var
  rgn: HRGN;
  dc: HDC;
begin
  rgn := CreateRoundRectRgn(0, 0, Image1.Width, Image1.Height, 50, 50);
  dc := GetDC(Panel1.Handle);
  SetWindowRgn(Panel1.Handle, rgn, true);
  ReleaseDC(Panel1.Handle, dc);
  DeleteObject(rgn);
end;

function TForm1.TColorToHex(Color: TColor): string;
begin
  Result :=
    { red value }
    IntToHex( GetRValue( Color ), 2 ) +
    { green value }
    IntToHex( GetGValue( Color ), 2 ) +
    { blue value }
    IntToHex( GetBValue( Color ), 2 );
    Result := '#'+Result;
end;

end.

