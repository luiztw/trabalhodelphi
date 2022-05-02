unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  Tfrm_tela5 = class(TForm)
    barra1: TProgressBar;
    barra2: TProgressBar;
    barra3: TProgressBar;
    barra4: TProgressBar;
    Timer1: TTimer;
    btn_fechar: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela5: Tfrm_tela5;
  Dresultado:integer;
  Aresultado:integer;
  Bresultado:integer;
  Cresultado:integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, unit7, unit8, unit9, unit10;

procedure Tfrm_tela5.btn_fecharClick(Sender: TObject);
begin
application.terminate;
end;

procedure Tfrm_tela5.Timer1Timer(Sender: TObject);
begin

Aresultado:= Atotal + A2total + A3total + A4total;
Bresultado:= Btotal + B2total + B3total + B4total;
Cresultado:= Ctotal + C2total + C3total + C4total;
Dresultado:= Dtotal + D2total + D3total + D4total;

barra1.Position:= Aresultado;
barra2.position:= Bresultado;
barra3.Position:= Cresultado;
barra4.Position:= Dresultado;



end;

end.
