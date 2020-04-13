unit uFrmResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormResultado = class(TForm)
    PanelResultado: TPanel;
    LabelResultado: TLabel;
    LabelCondicoes: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResultado: TFormResultado;

implementation

{$R *.dfm}

end.
