unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
var       nabsen,ntugas,nmid,nfinal,proses : real;

begin     nabsen := StrToFloat (Edit1.Text)* 0.1;
          ntugas := StrToFloat (Edit2.Text)* 0.2;
          nmid   := StrToFloat (Edit3.Text)* 0.3;
          nfinal := StrToFloat (Edit4.Text)* 0.4;

          proses := nabsen + ntugas + nmid + nfinal;

          Edit5.Text := FloatToStr (proses);

          if (proses >= 90) then Edit6.Text := ' A    (sangat baik)'
          else if (proses >= 80) then Edit6.Text := ' B     (baik)'
          else if (proses >= 70) then Edit6.Text := ' C     (kurang)'
          else if (proses >= 65) then Edit6.Text := ' D     (di tunda)'
          else Edit6.Text := ' E     (EROR)';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
end;

end.
