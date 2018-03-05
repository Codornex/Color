program PickColors;

uses
  Vcl.Forms,
  principal in 'principal.pas' {frmColor},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pick Colors';
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TfrmColor, frmColor);
  Application.Run;
end.
