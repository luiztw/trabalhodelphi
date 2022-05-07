unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tfrm_tela4 = class(TForm)
    btn_fechar: TButton;
    btn_finalizar: TButton;
    cb_1: TComboBox;
    cb_2: TComboBox;
    cb_4: TComboBox;
    cb_3: TComboBox;
    cb_6: TComboBox;
    cb_7: TComboBox;
    cb_8: TComboBox;
    cb_9: TComboBox;
    cb_11: TComboBox;
    cb_12: TComboBox;
    cb_13: TComboBox;
    cb_14: TComboBox;
    cb_16: TComboBox;
    cb_17: TComboBox;
    cb_18: TComboBox;
    cb_19: TComboBox;
    Image1: TImage;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_finalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela4: Tfrm_tela4;
  a1,b1,c1,d1:integer;
   a2,b2,c2,d2:integer;
   a3,b3,c3,d3:integer;
   a4,b4,c4,d4:integer;
   a5,b5,c5,d5:integer;
   A4total:integer;
   B4total:integer;
   C4total:integer;
   D4total:integer;

implementation

{$R *.dfm}

uses unit1, unit2, unit3, unit4, unit6, unit7, unit8, unit9, unit10;

procedure Tfrm_tela4.btn_fecharClick(Sender: TObject);
begin
//frm_tela4.close;
Application.Terminate;
end;

procedure Tfrm_tela4.btn_finalizarClick(Sender: TObject);

begin

a1:= StrToInt(cb_1.Text);
a2:= StrToInt(cb_2.Text);
a3:= StrToInt(cb_3.Text);
a4:= StrToInt(cb_4.Text);


b1 := StrToInt(cb_6.Text);
b2 := StrToInt(cb_7.Text);
b3 := StrToInt(cb_8.Text);
b4 := StrToInt(cb_9.Text);


c1 := StrToInt(cb_11.Text);
c2 := StrToInt(cb_12.Text);
c3 := StrToInt(cb_13.Text);
c4 := StrToInt(cb_14.Text);


d1 := StrToInt(cb_16.Text);
d2 := StrToInt(cb_17.Text);
d3 := StrToInt(cb_18.Text);
d4:= StrToInt(cb_19.Text);


A4total:= a1 + a2 + a3 + a4 ;
B4total:= b1 + b2 + b3 + b4 ;
C4total:= c1 + c2 + c3 + c4 ;
D4total:= d1 + d2 + d3 + d4 ;


if (Strtoint (cb_1.Text) = Strtoint (cb_6.Text))  or
    (Strtoint (cb_1.Text) = Strtoint (cb_11.Text)) or
    (Strtoint (cb_1.Text) = Strtoint (cb_16.Text)) or
    (Strtoint (cb_6.Text) = Strtoint (cb_1.Text)) or
    (Strtoint (cb_6.Text) = Strtoint (cb_11.Text)) or
    (Strtoint (cb_6.Text) = Strtoint (cb_16.Text)) or
    (Strtoint (cb_11.Text) = Strtoint (cb_1.Text)) or
    (Strtoint (cb_11.Text) = Strtoint (cb_6.Text)) or
    (Strtoint (cb_11.Text) = Strtoint (cb_16.Text)) or
    (Strtoint (cb_16.Text) = Strtoint (cb_1.Text)) or
    (Strtoint (cb_16.Text) = Strtoint (cb_6.Text)) or
    (Strtoint (cb_16.Text) = Strtoint (cb_11.Text))  then

 begin
showmessage ('ERRO. Revise suas respostas da primeira linha  ');
 end



 else if (Strtoint (cb_2.Text) = Strtoint (cb_7.Text)) or
(Strtoint (cb_2.Text) = Strtoint (cb_12.Text)) or
(Strtoint (cb_2.Text) = Strtoint (cb_17.Text))  or
(Strtoint (cb_7.Text) = Strtoint (cb_2.Text)) or
(Strtoint (cb_7.Text) = Strtoint (cb_12.Text)) or
(Strtoint (cb_7.Text) = Strtoint (cb_17.Text)) or
(Strtoint (cb_12.Text) = Strtoint (cb_17.Text))or
(Strtoint (cb_12.Text) = Strtoint (cb_7.Text))or
(Strtoint (cb_12.Text) = Strtoint (cb_2.Text)) or
(Strtoint (cb_17.Text) = Strtoint (cb_2.Text)) or
(Strtoint (cb_17.Text) = Strtoint (cb_7.Text)) or
(Strtoint (cb_17.Text) = Strtoint (cb_12.Text))  then

begin
showmessage ('ERRO. Revise suas respostas da segunda linha ');
end


else if (Strtoint (cb_3.Text) = Strtoint (cb_8.Text)) or
( Strtoint (cb_3.Text) = Strtoint (cb_13.Text)) or
(Strtoint (cb_3.Text) = Strtoint (cb_18.Text)) or
(Strtoint (cb_13.Text) = Strtoint (cb_3.Text)) or
(Strtoint (cb_13.Text) = Strtoint (cb_18.Text)) or
(Strtoint (cb_13.Text) = Strtoint (cb_8.Text))  or
(Strtoint (cb_8.Text) = Strtoint (cb_3.Text))or
( Strtoint (cb_8.Text) = Strtoint (cb_18.Text))or
(Strtoint (cb_8.Text) = Strtoint (cb_13.Text)) or
(Strtoint (cb_18.Text) = Strtoint (cb_13.Text)) or
 (Strtoint (cb_18.Text) = Strtoint (cb_3.Text)) or
  (Strtoint (cb_18.Text) = Strtoint (cb_8.Text)) then

  begin
showmessage ('ERRO. Revise suas respostas da terceira linha ');
  end

else if(Strtoint (cb_4.Text) = Strtoint (cb_9.Text))or
(Strtoint (cb_4.Text) = Strtoint (cb_14.Text)) or
(Strtoint (cb_4.Text) = Strtoint (cb_19.Text))  or
(Strtoint (cb_9.Text) = Strtoint (cb_4.Text))  or
(Strtoint (cb_9.Text) = Strtoint (cb_14.Text))  or
 (Strtoint (cb_9.Text) = Strtoint (cb_19.Text)) or
 (Strtoint (cb_14.Text) = Strtoint (cb_4.Text)) or
 (Strtoint (cb_14.Text) = Strtoint (cb_9.Text)) or
 (Strtoint (cb_14.Text) = Strtoint (cb_19.Text)) or
 (Strtoint (cb_19.Text) = Strtoint (cb_4.Text)) or
 (Strtoint (cb_19.Text) = Strtoint (cb_14.Text)) or
 (Strtoint (cb_19.Text) = Strtoint (cb_9.Text)) then

 begin
showmessage ('ERRO. Revise suas respostas da quarta linha ') ;
 end


else
    begin
frm_tela4.Visible:= false;
frm_tela5.Visible:= true;
    end;

end;
end.
