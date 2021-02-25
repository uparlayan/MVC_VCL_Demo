unit Ana_;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAna = class(TForm)
    btTEST: TButton;
    procedure btTESTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ana: TAna;

implementation

uses
    System.Threading
  , Controller_Kisi_
  ;
{$R *.dfm}

procedure TAna.btTESTClick(Sender: TObject);
begin
  { EN :
    This point is very important;
    In real world adaptations, you should not use the TTASK class and RUN method in such a way that it affects the GUI.
    The example here is purely cosmetic.

    TR :
    Bu nokta çok önemli;
    Gerçek dünya uyarlamalarýnda TTASK sýnýfýný ve RUN metodunu bu þekilde GUI'yi etkileyecek þekilde kullanmamalýsýnýz.
    Buradaki örnek tamamen kozmetiktir.
  }
  TTask.Run
    ( procedure
      begin
        TKisi_Controller.New.Free;
      end
    );
end;

end.
