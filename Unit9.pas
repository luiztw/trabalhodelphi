unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tfrm_S = class(TForm)
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_S: Tfrm_S;

implementation

{$R *.dfm}
uses Unit2, Unit3, Unit4, unit5, unit6, unit7, unit8, unit10;

end.
