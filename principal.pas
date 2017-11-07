unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FMX.Graphics, Vcl.Buttons, Vcl.ComCtrls, Vcl.Samples.Spin;

type
  TCor = record
    Hexa: String;
    Color: TColor;
    Red: Integer;
    Green: Integer;
    Blue: Integer;
  end;

type
  TForm1 = class(TForm)
    edtHex: TLabeledEdit;
    edtColor: TLabeledEdit;
    Button1: TButton;
    ColorDialog1: TColorDialog;
    Image1: TImage;
    Button2: TButton;
    spRed: TSpinEdit;
    spGreen: TSpinEdit;
    spBlue: TSpinEdit;
    Label1: TLabel;
    Green: TLabel;
    Label2: TLabel;
    procedure edtHexKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure spRedChange(Sender: TObject);
  private
    { Private declarations }
    function TColorToHex(Color : TColor): string;
    function HexToTColor(Hex: String): TColor;
    procedure DoColor(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Cor: TCor;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  ColorDialog1.Execute();
  edtColor.Text := ColorToString(ColorDialog1.Color);
  DoColor(edtColor);
end;

procedure TForm1.DoColor(Sender: TObject);
begin
  try
    if TEdit(Sender).Name = 'edtHex' then
    begin
      Cor.Hexa := TEdit(Sender).Text;
      Cor.Color := HexToTColor(TEdit(Sender).Text);
      Cor.Red := GetRValue(Cor.Color);
      Cor.Green := GetGValue(Cor.Color);
      Cor.Blue := GetBValue(Cor.Color);
    end
    else if TEdit(Sender).Name = 'edtColor' then
    begin
      Cor.Hexa := TColorToHex(StringToColor(TEdit(Sender).Text));
      Cor.Color := StringToColor(TEdit(Sender).Text);
      Cor.Red := GetRValue(Cor.Color);
      Cor.Green := GetGValue(Cor.Color);
      Cor.Blue := GetBValue(Cor.Color);
    end
    else if (TSpinEdit(Sender).Name = 'spRed') or (TSpinEdit(Sender).Name = 'spGreen') or (TSpinEdit(Sender).Name = 'spBlue') then
    begin
      Cor.Color := RGB(spRed.Value, spGreen.Value, spBlue.Value);
      Cor.Hexa := TColorToHex(Cor.Color);
      Cor.Red := GetRValue(Cor.Color);
      Cor.Green := GetGValue(Cor.Color);
      Cor.Blue := GetBValue(Cor.Color);
    end;
    edtHex.Text := Cor.Hexa;
    edtColor.Text := ColorToString(Cor.Color);
    spRed.Value := Cor.Red;
    spGreen.Value := Cor.Green;
    spBlue.Value := Cor.Blue;
    Image1.Canvas.Brush.Color := Cor.Color;
    Image1.Canvas.Pen.Color := Cor.Color;
    Image1.Canvas.Rectangle(-1, -1, Image1.Width, Image1.Height);
    //Canvas.Ellipse(100,100,100,100);
  except
  end;
end;

procedure TForm1.edtHexKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    DoColor(Sender);
end;

function TForm1.HexToTColor(Hex: String): TColor;
var
  Hexa: string;
begin
  Hexa := StringReplace(Trim(edtHex.Text), '#', '', [rfReplaceAll, rfIgnoreCase]);
  Result := RGB(StrToInt('$' + Copy(Hexa, 1, 2)), StrToInt('$' + Copy(Hexa, 3, 2)), StrToInt('$' + Copy(Hexa, 5, 2)));
end;

procedure TForm1.spRedChange(Sender: TObject);
begin
  DoColor(Sender);
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

