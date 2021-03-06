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
    btn_saibamais: TButton;
    lb_porcentagemD: TLabel;
    lb_porcentagemI: TLabel;
    lb_porcentagemS: TLabel;
    lb_porcentagemC: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_saibamaisClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  labelA:string;
  labelB:string;
  labelC:string;
  labelD:string;

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

procedure Tfrm_tela5.btn_saibamaisClick(Sender: TObject);
begin
if (Aresultado > Bresultado) and (Aresultado>Cresultado) and (Aresultado > Dresultado) then

begin
  frm_tela5.Visible:=false;
  frm_D.Visible:=true;
end;

if (Bresultado > Aresultado) and (Bresultado>Cresultado) and (Bresultado > Dresultado) then

begin
  frm_tela5.Visible:=false;
  frm_I.Visible:=true;
end;

if (Cresultado > Aresultado) and (Cresultado>Bresultado) and (Cresultado > Dresultado) then

begin
  frm_tela5.Visible:=false;
  frm_S.Visible:=true;
end;

if (Dresultado > Aresultado) and (Dresultado>Bresultado) and (Dresultado > Cresultado) then

begin
  frm_tela5.Visible:=false;
  frm_C.Visible:=true;
end;

end;



procedure Tfrm_tela5.FormShow(Sender: TObject);
begin
lb_porcentagemD.Caption:= ( floatToStr(((Aresultado) * 150) /100)) + '%';
lb_porcentagemI.Caption:= ( floatToStr(((Bresultado) * 150) /100)) + '%';
lb_porcentagemS.Caption:= ( floatToStr(((Cresultado) * 150) /100)) + '%';
lb_porcentagemC.Caption:= ( floatToStr(((Dresultado) * 150) /100)) + '%';

end;

end.
