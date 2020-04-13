unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uFrmResultado,
  Vcl.Imaging.pngimage;

type
  TFormFormulario = class(TForm)
    PanelFormulario: TPanel;
    EditAltura: TEdit;
    EditPeso: TEdit;
    LAltura: TLabel;
    LPeso: TLabel;
    BCalcular: TButton;
    PanelTitulo: TPanel;
    procedure BCalcularClick(Sender: TObject);
    procedure EditPesoKeyPress(Sender: TObject; var Key: Char);
    procedure EditAlturaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFormulario: TFormFormulario;

implementation

{$R *.dfm}

Function CalculoResult(Peso, Altura: Real): Real;
begin
  Result := Peso / (Altura*Altura);
end;


procedure TFormFormulario.BCalcularClick(Sender: TObject);
var Peso, Altura, Imc: Real;
begin
  if EditPeso.Text = '' then
  begin
    MessageDlg('Informe seu peso', mtInformation, [mbOK], 0);
  end
  else
  if EditAltura.Text = '' then
  begin
    MessageDlg('Informe sua altura', mtInformation, [mbOK], 0);
  end
  else
  begin
  Peso := StrToFloat(EditPeso.Text);
  Altura := StrToFloat(EditAltura.Text);

  FormResultado.LabelResultado.Caption := FloatToStr(CalculoResult(Peso, Altura));

  Imc := StrToFloat(FormResultado.LabelResultado.Caption);

  if Imc < 18.5 then
  Begin
    FormResultado.PanelResultado.Color := clAqua;
    FormResultado.LabelCondicoes.Caption := 'Abaixo do peso';
  end
  else
  if (Imc >= 18.6) and (Imc <= 24.9) then
  Begin
    FormResultado.PanelResultado.Color := clLime;
    FormResultado.LabelCondicoes.Caption := 'Peso ideal';
  end
  else
  if (Imc >= 25) and (Imc <= 29.9) then
  Begin
    FormResultado.PanelResultado.Color := clYellow;
    FormResultado.LabelCondicoes.Caption := 'Levemente acima do peso';
  end
  else
  if (Imc >= 30) and (Imc <= 34.9) then
  Begin
    FormResultado.PanelResultado.Color := clOlive;
    FormResultado.LabelCondicoes.Caption := 'Obesidade grau 1';
  end
  else
  if (Imc >= 35) and (Imc <= 39.9) then
  Begin
    FormResultado.PanelResultado.Color := clMaroon;
    FormResultado.LabelCondicoes.Caption := 'Obesidade grau 2';
  end
  else
  if Imc >= 40 then
  Begin
    FormResultado.PanelResultado.Color := clRed;
    FormResultado.LabelCondicoes.Caption := 'Obesidade grau 3';
  end;

  FormResultado.LabelResultado.Caption := FloatToStrF(Imc, ffFixed, 4,2);

  FormResultado.ShowModal;

  EditPeso.Clear;
  EditAltura.Clear;

end;
end;

procedure TFormFormulario.EditAlturaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', ',', '.', Chr(8)]) then
  begin
    MessageDlg('Voçê não digitou valores numéricos', mtError, [mbOK], 0);
    EditAltura.Clear;
  end;
end;

procedure TFormFormulario.EditPesoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9', ',', '.', Chr(8)]) then
  begin
    MessageDlg('Voçê não digitou valores numéricos', mtError, [mbOK], 0);
    EditPeso.Clear;
  end;

end;

end.
