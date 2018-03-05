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
  TfrmColor = class(TForm)
    edtHex: TLabeledEdit;
    edtColor: TLabeledEdit;
    btnConvert: TButton;
    ColorPick: TColorDialog;
    Image1: TImage;
    btnPick: TButton;
    spRed: TSpinEdit;
    spGreen: TSpinEdit;
    spBlue: TSpinEdit;
    Label1: TLabel;
    Green: TLabel;
    Label2: TLabel;
    procedure edtHexKeyPress(Sender: TObject; var Key: Char);
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
  frmColor: TfrmColor;
  Cor: TCor;

implementation

{$R *.dfm}

procedure TfrmColor.DoColor(Sender: TObject);
begin
  if TComponent(Sender).Name = 'edtHex' then
  begin
    Cor.Hexa := TEdit(Sender).Text;
    Cor.Color := HexToTColor(TEdit(Sender).Text);
    Cor.Red := GetRValue(Cor.Color);
    Cor.Green := GetGValue(Cor.Color);
    Cor.Blue := GetBValue(Cor.Color);
  end
  else if TComponent(Sender).Name = 'edtColor' then
  begin
    Cor.Hexa := TColorToHex(StringToColor(TEdit(Sender).Text));
    Cor.Color := StringToColor(TEdit(Sender).Text);
    Cor.Red := GetRValue(Cor.Color);
    Cor.Green := GetGValue(Cor.Color);
    Cor.Blue := GetBValue(Cor.Color);
  end
  else if ((TComponent(Sender).Name = 'spRed') or (TComponent(Sender).Name = 'spGreen') or (TComponent(Sender).Name = 'spBlue'))
      and ((Screen.ActiveControl.Name = 'spRed') or (Screen.ActiveControl.Name = 'spGreen') or (Screen.ActiveControl.Name = 'spBlue')) then
  begin
    Cor.Color := RGB(spRed.Value, spGreen.Value, spBlue.Value);
    Cor.Hexa := TColorToHex(Cor.Color);
    Cor.Red := GetRValue(Cor.Color);
    Cor.Green := GetGValue(Cor.Color);
    Cor.Blue := GetBValue(Cor.Color);
  end
  else if TComponent(Sender).Name = 'btnPick' then
  begin
    ColorPick.Execute();
    Cor.Hexa := TColorToHex(ColorPick.Color);
    Cor.Color := ColorPick.Color;
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
end;

procedure TfrmColor.edtHexKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    DoColor(Sender);
end;

function TfrmColor.HexToTColor(Hex: String): TColor;
var
  Hexa: string;
begin
  Hexa := StringReplace(Trim(edtHex.Text), '#', '', [rfReplaceAll, rfIgnoreCase]);
  Result := RGB(StrToInt('$' + Copy(Hexa, 1, 2)), StrToInt('$' + Copy(Hexa, 3, 2)), StrToInt('$' + Copy(Hexa, 5, 2)));
end;

procedure TfrmColor.spRedChange(Sender: TObject);
begin
  DoColor(Sender);
end;

function TfrmColor.TColorToHex(Color: TColor): string;
begin
  Result :=
    { Vermelho }
    IntToHex( GetRValue( Color ), 2 ) +
    { Verde }
    IntToHex( GetGValue( Color ), 2 ) +
    { Azul }
    IntToHex( GetBValue( Color ), 2 );
    Result := '#'+Result;
end;

end.

