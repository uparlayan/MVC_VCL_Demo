unit Model_Kisi_;

interface

uses
  System.Classes;

type
  TNotifier = procedure(Sender: TObject; aEvent: string) of object;
  TKisi_Class = class
    type
      TCins = (csErkek, csKadin);
    private
      FAd                   : String;
      FSoyad                : string;
      FCinsiyet             : TCins;
      FDogumYili            : Integer;
      FOnNotifyModel        : TNotifier;
      procedure SetAd       ( const Value: String);
      procedure SetSoyad    ( const Value: string);
      procedure SetCinsiyet ( const Value: TCins);
      procedure SetDogumYili( const Value: Integer);
      procedure Notify      ( const aEvent: String);
    public
      property Ad           : String    read  FAd             write SetAd;
      property Soyad        : string    read  FSoyad          write SetSoyad;
      property Cinsiyet     : TCins     read  FCinsiyet       write SetCinsiyet;
      property DogumYili    : Integer   read  FDogumYili      write SetDogumYili;
      property OnNotifyModel: TNotifier read  FOnNotifyModel  write FOnNotifyModel;
      function Isim: string;
  end;

implementation

{ TKisi_Class }

function TKisi_Class.Isim: string;
begin
  Result := FAd + ' ' + FSoyad;
end;

procedure TKisi_Class.Notify(const aEvent: String);
begin
  if Assigned(FOnNotifyModel) then FOnNotifyModel(Self, aEvent);
end;

procedure TKisi_Class.SetAd(const Value: String);
begin
  FAd := Value;
  Notify('Ad');
end;

procedure TKisi_Class.SetCinsiyet(const Value: TCins);
begin
  FCinsiyet := Value;
  Notify('Cinsiyet');
end;

procedure TKisi_Class.SetDogumYili(const Value: Integer);
begin
  FDogumYili := Value;
  Notify('Doðum Yýlý');
end;

procedure TKisi_Class.SetSoyad(const Value: string);
begin
  FSoyad := Value;
  Notify('Soyad');
end;

end.
