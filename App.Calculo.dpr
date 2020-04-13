program App.Calculo;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FormFormulario},
  uFrmResultado in 'uFrmResultado.pas' {FormResultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormFormulario, FormFormulario);
  Application.CreateForm(TFormResultado, FormResultado);
  Application.Run;
end.
