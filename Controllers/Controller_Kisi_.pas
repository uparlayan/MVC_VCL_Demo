unit Controller_Kisi_;

interface

uses
    Model_Kisi_
  , View_Kisi_
  , System.Classes
  , Vcl.Forms
  ;

type
  TKisi_Controller = class
    private
      FModel : TKisi_Class;
      FView  : TKisi_View;
    public
      constructor New;
      destructor Destroy; override;
      procedure UpdateModel;
      procedure UpdateView;
      procedure LoadData; // örnek / dummy / sample data...
      procedure SaveAction(Sender: TObject);
      procedure CancelAction(Sender: TObject);
      procedure NotifyFromModel(Sender: TObject; aEvent: String);
  end;

implementation

uses
    System.SysUtils
  , Vcl.Dialogs
  ;

{ TKisi_Controller }

constructor TKisi_Controller.New;
begin
  inherited Create;
  FModel    := TKisi_Class.Create;
  FModel.OnNotifyModel := NotifyFromModel;
  FView     := TKisi_View.Create(Application);
  FView.btOK.OnClick := Self.SaveAction;
  FView.btCancel.OnClick := Self.CancelAction;
  LoadData;
  UpdateView;
  FView.ShowModal;
end;

destructor TKisi_Controller.Destroy;
begin
  FreeAndNil(FModel);
  FreeAndNil(FView);
  inherited Destroy;
end;

procedure TKisi_Controller.LoadData;
begin
  FModel.Ad         := 'Bill';
  FModel.Soyad      := 'Gates';
  FModel.Cinsiyet   := csErkek;
  FModel.DogumYili  := 1955;
end;

procedure TKisi_Controller.NotifyFromModel(Sender: TObject; aEvent: String);
begin
  ShowMessage('Notify from > ' + Sender.ClassName + ' of Event = ' + aEvent);
end;

procedure TKisi_Controller.UpdateModel;
begin
  FModel.Ad := FView.Ad;
  FModel.Soyad := FView.Soyad;
  if (FView.Cinsiyet = 'Erkek') then FModel.Cinsiyet := csErkek else
  if (FView.Cinsiyet = 'Kadýn') then FModel.Cinsiyet := csKadin;
  FModel.DogumYili := FView.DogumYili;
end;

procedure TKisi_Controller.UpdateView;
begin
  FView.Ad := FModel.Ad;
  FView.Soyad := FModel.Soyad;
  case FModel.Cinsiyet of
    csErkek: FView.Cinsiyet := 'Erkek';
    csKadin: FView.Cinsiyet := 'Kadýn';
  end;
  FView.DogumYili := FModel.DogumYili;
end;

procedure TKisi_Controller.SaveAction(Sender: TObject);
begin
  ShowMessage('Önce = ' + FModel.Isim);
  UpdateModel;
  ShowMessage('Sonra = ' + FModel.Isim);
  FView.Close;
end;

procedure TKisi_Controller.CancelAction(Sender: TObject);
begin
  ShowMessage('Vazgeçildi.');
  FView.Close;
end;

end.
