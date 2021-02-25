unit View_Kisi_;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TKisi_View = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edAd: TEdit;
    edSoyad: TEdit;
    cbCinsiyet: TComboBox;
    edDogumYili: TEdit;
    btOK: TButton;
    btCancel: TButton;
  private
    { Private declarations }
    function GetAd        : string;
    function GetSoyad     : string;
    function GetCinsiyet  : string;
    function GetDogumYili : Integer;
    procedure SetAd       ( const Value: string);
    procedure SetSoyad    ( const Value: string);
    procedure SetCinsiyet ( const Value: string);
    procedure SetDogumYili( const Value: Integer);
  public
    { Public declarations }
    property Ad          : string  read GetAd          write  SetAd        ;
    property Soyad       : string  read GetSoyad       write  SetSoyad     ;
    property Cinsiyet    : string  read GetCinsiyet    write  SetCinsiyet  ;
    property DogumYili   : Integer read GetDogumYili   write  SetDogumYili ;
  end;

var
  Kisi_View: TKisi_View;

implementation

{$R *.dfm}

{ TKisi_View }

function TKisi_View.GetAd: string;
begin
  Result := edAd.Text;
end;

function TKisi_View.GetCinsiyet: string;
begin
  Result := cbCinsiyet.Text;
end;

function TKisi_View.GetDogumYili: Integer;
begin
  Result := StrToIntDef(edDogumYili.Text, 0);
end;

function TKisi_View.GetSoyad: string;
begin
  Result := edSoyad.Text;
end;

procedure TKisi_View.SetAd(const Value: string);
begin
  edAd.Text := Value;
end;

procedure TKisi_View.SetCinsiyet(const Value: string);
begin
  cbCinsiyet.Text := Value;
end;

procedure TKisi_View.SetDogumYili(const Value: Integer);
begin
  edDogumYili.Text := Value.ToString;
end;

procedure TKisi_View.SetSoyad(const Value: string);
begin
  edSoyad.Text := Value;
end;

end.
