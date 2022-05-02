unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  Tfrm_principal = class(TForm)
    barra: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    botao: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure botaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, unit5, unit6, unit7, unit8, unit9, unit10;



procedure Tfrm_principal.botaoClick(Sender: TObject);
begin
frm_principal.Visible:=false;
frm_D.Visible:=true;
end;

procedure Tfrm_principal.Timer1Timer(Sender: TObject);
begin
barra.Position:= barra.position + 5;

if barra.Position = 100  then
begin
 frm_principal.Visible:=false;
  frm_tela.Visible:=true;


end;

end;
end.
