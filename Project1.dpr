program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frm_principal},
  Unit2 in 'Unit2.pas' {frm_tela},
  Unit3 in 'Unit3.pas' {frm_tela2},
  Unit4 in 'Unit4.pas' {frm_tela3},
  Unit5 in 'Unit5.pas' {frm_tela4},
  Unit6 in 'Unit6.pas' {frm_tela5},
  Unit7 in 'Unit7.pas' {frm_D},
  Unit8 in 'Unit8.pas' {frm_I},
  Unit9 in 'Unit9.pas' {frm_S},
  Unit10 in 'Unit10.pas' {frm_C};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tfrm_tela, frm_tela);
  Application.CreateForm(Tfrm_tela2, frm_tela2);
  Application.CreateForm(Tfrm_tela3, frm_tela3);
  Application.CreateForm(Tfrm_tela4, frm_tela4);
  Application.CreateForm(Tfrm_tela5, frm_tela5);
  Application.CreateForm(Tfrm_D, frm_D);
  Application.CreateForm(Tfrm_I, frm_I);
  Application.CreateForm(Tfrm_S, frm_S);
  Application.CreateForm(Tfrm_C, frm_C);
  Application.Run;
end.
