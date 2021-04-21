unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Template1, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LTECard1: TLTECard;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  LTECard1.ProgressValue := 0;
  for I := 0 to 100 do
  begin
    LTECard1.ProgressValue := I;
    Application.ProcessMessages;
    Sleep(200);
  end;
end;

end.
