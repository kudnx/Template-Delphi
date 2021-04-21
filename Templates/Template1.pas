unit Template1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, acPNG,
  Vcl.StdCtrls;

type
  TLTECard = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lbTextTitle: TLabel;
    lbTextValue: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Image1: TImage;
  private
    FTextTitle: String;
    FTextValue: Currency;
    FProgressValue: Integer;
    FBackgroundPanel1: TColor;
    FBackgroundPanel2: TColor;
    procedure SetTextTitle(const Value: String);
    procedure SetTextValue(const Value: Currency);
    procedure SetProgressValue(const Value: Integer);
    procedure SetBackgroundPanel1(const Value: TColor);
    procedure SetBackgroundPanel2(const Value: TColor);
    { Private declarations }
  public
    { Public declarations }
  published
    property TextTitle : String read FTextTitle write SetTextTitle;
    property TextValue : Currency read FTextValue write SetTextValue;
    property ProgressValue: Integer read FProgressValue write SetProgressValue;
    property BackgroundPanel1: TColor read FBackgroundPanel1 write SetBackgroundPanel1;
    property BackgroundPanel2: TColor read FBackgroundPanel2 write SetBackgroundPanel2;
  end;

procedure Register;

implementation

{$R *.dfm}

procedure Register;
begin
  RegisterComponents('LTE components', [TLTECard]);
end;

{ TLTECard }

procedure TLTECard.SetBackgroundPanel1(const Value: TColor);
begin
  FBackgroundPanel1 := Value;
  Panel2.Color := FBackgroundPanel1;
end;

procedure TLTECard.SetBackgroundPanel2(const Value: TColor);
begin
  FBackgroundPanel2 := Value;
  Panel3.Color := FBackgroundPanel2;
end;

procedure TLTECard.SetProgressValue(const Value: Integer);
begin
  FProgressValue := Value;
  Shape2.Width := Round(Value * (Shape1.Width / 100));
end;

procedure TLTECard.SetTextTitle(const Value: String);
begin
  FTextTitle := Value;
  lbTextTitle.Caption := FTextTitle;
end;

procedure TLTECard.SetTextValue(const Value: Currency);
begin
  FTextValue := Value;
  lbTextValue.Caption := FormatCurr('#,##0.00', FTextValue);
end;

end.
