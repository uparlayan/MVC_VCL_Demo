program MVC_VCL_Demo;

uses
  Vcl.Forms,
  Ana_ in 'GUI\Ana_.pas' {Ana},
  Model_Kisi_ in 'Models\Model_Kisi_.pas',
  View_Kisi_ in 'Views\View_Kisi_.pas' {Kisi_View},
  Controller_Kisi_ in 'Controllers\Controller_Kisi_.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAna, Ana);
  Application.CreateForm(TKisi_View, Kisi_View);
  Application.Run;
end.
