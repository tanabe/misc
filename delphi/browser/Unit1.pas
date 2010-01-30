unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    K1: TMenuItem;
    K2: TMenuItem;
    Show1: TMenuItem;
    K3: TMenuItem;
    Comu1: TMenuItem;
    K4: TMenuItem;
    Image1: TImage;
    Panel1: TPanel;
    Exit1: TMenuItem;
    ComboBox1: TComboBox;
    Image2: TImage;
    K5: TMenuItem;
    K6: TMenuItem;
    K7: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure K5Click(Sender: TObject);
    procedure K6Click(Sender: TObject);
    procedure K7Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;
  a:integer;
  b:integer;
implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  Randomize;
  for I := 1 to 20 do begin
    { ウィンドウのランダムな位置に書き込みます }
    canvas.font.color:=clblack;
    canvas.font.size:=20;
    canvas.brush.style:=bsclear;
    Canvas.TextOut(Random(Width), Random(Height), 'ブラ');
  end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
top:=0;
left:=0;
image2.canvas.brush.style:=bsclear;
image2.canvas.brush.color:=clbtnface;

image2.canvas.pen.style:=psclear;
image2.canvas.rectangle(0,0,640,430);
a:=15;
b:=0;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
image2.canvas.brush.style:=bsclear;
image2.canvas.brush.color:=clbtnface;

image2.canvas.pen.style:=psclear;
image2.canvas.rectangle(0,0,640,430);
end;

procedure TForm1.K5Click(Sender: TObject);
begin
a:=25
end;

procedure TForm1.K6Click(Sender: TObject);
begin
a:=8
end;

procedure TForm1.K7Click(Sender: TObject);
begin
a:=15
end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  I: Integer;
begin
if b=1 then begin
  Randomize;
  for I := 1 to 5 do begin
    { ウィンドウのランダムな位置に書き込みます }
    image2.canvas.font.color:=clblack;

    image2.canvas.font.size:=a;
    image2.canvas.brush.style:=bsclear;
    image2.Canvas.TextOut(Random(Width), Random(Height), 'ブラ');
  end;

end;
end;
procedure TForm1.ComboBox1Change(Sender: TObject);
begin
b:=1
end;

end.
{copyright tanablog@gmail.com}
