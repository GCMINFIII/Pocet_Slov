unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var subor:textfile; riadok:string; pocet,i:integer;
begin
pocet:=0;
assignfile(subor,'TxT.txt');
reset(subor);
while not eof(subor) do begin
        readln(subor,riadok);
        for i:= 1 to length(riadok) do
        if riadok[i]=' ' then
        inc(pocet);
        end;
        pocet:=pocet+1;
showmessage(inttostr(pocet)+' slov');
        end;

end.
