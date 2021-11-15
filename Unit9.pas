unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  antoni,cristina,mark: Uint64;

implementation

{$R *.dfm}

function szyfer(v:String; z:UInt64):String;
var
i:Integer;
s:String;
x:UInt64;
begin
   if (Length(v) > 0 ) then
   begin
      s := v;
      x:=z;
     for i := 1 to length(s) do
     begin
     x := ( antoni * x + cristina) mod mark;
      //duze litery
      if s[i] in ['A'..'Z'] then s[i] := chr(65 + (ord(s[i]) - 65 + x mod 26) mod 26);
      if s[i] in ['A'..'Z'] then s[i] := chr(65 + (ord(s[i]) - 62) mod 26);
      //male litery
      if s[i] in ['a'..'z'] then s[i] := chr(97 + (ord(s[i]) - 97 + x mod 26) mod 26);
      if s[i] in ['a'..'z'] then s[i] := chr(97 + (ord(s[i]) - 94) mod 26);
      //liczby
      if s[i] in ['0'..'9'] then s[i] := chr(48 + (ord(s[i]) - 48 + x mod 10) mod 10);
      if s[i] in ['0'..'9'] then s[i] := chr(48 + (ord(s[i]) - 45) mod 10);
      //znaki specjalne
      if s[i] in [#32..#47] then s[i] := chr(32 + (ord(s[i]) - 32 + x mod 16) mod 16);
      if s[i] in [#58..#64] then s[i] := chr(58 + (ord(s[i]) - 58 + x mod 7) mod 7);
      if s[i] in [#91..#96] then s[i] := chr(91 + (ord(s[i]) - 91 + x mod 6) mod 6);
      if s[i] in [#123..#126] then s[i] := chr(123 + (ord(s[i]) - 123 + x mod 4) mod 4);
      end;
   end;
   Result:= s;
end;


function deszyfer(v:String; z:UInt64):String;
var
i:Integer;
s:String;
key:UInt64;
begin
   if (Length(v) > 0 ) then
   begin
      s := v;
      key:=z;
     for i := 1 to length(s) do
     begin
     key := ( antoni * key + cristina) mod mark;
      if s[i] in ['A'..'Z'] then s[i] := chr(65 + (ord(s[i]) - 39 - key mod 26) mod 26);
      if s[i] in ['A'..'Z'] then s[i] := chr(65 + (ord(s[i]) - 42) mod 26);
      //ma³e litery
      if s[i] in ['a'..'z'] then s[i] := chr(97 + (ord(s[i]) - 71 - key mod 26) mod 26);
      if s[i] in ['a'..'z'] then s[i] := chr(97 + (ord(s[i]) - 74) mod 26);
      //liczby
      if s[i] in ['0'..'9'] then s[i] := chr(48 + (ord(s[i]) - 38 - key mod 10) mod 10);
      if s[i] in ['0'..'9'] then s[i] := chr(48 + (ord(s[i]) - 41) mod 10);
      //Znaki specjalne
      if s[i] in [#32..#47] then s[i] := chr(32 + (ord(s[i]) - 16 - key mod 16) mod 16);
      if s[i] in [#58..#64] then s[i] := chr(58 + (ord(s[i]) - 51 - key mod 7) mod 7);
      if s[i] in [#91..#96] then s[i] := chr(91 + (ord(s[i]) - 85 - key mod 6) mod 6);
      if s[i] in [#123..#126] then s[i] := chr(123 + (ord(s[i]) - 119 - key mod 4) mod 4);
      end;
   end;
   Result:= s;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
if ((labelededit1.Text<>'') and (labelededit2.Text<>'') and (labelededit3.Text<>'') and (labelededit4.Text<>'')) then
  begin
  if ( (length(labelededit1.Text) > 0 ) and ( length(labelededit1.Text) < 9)) then
  begin
  antoni:=strtoint(labelededit1.Text);
  end;
  if ( (length(labelededit2.Text) > 0 ) and ( length(labelededit2.Text) < 9)) then
  begin
  cristina:=strtoint(labelededit2.Text);
  end;
  if ( (length(labelededit3.Text) > 0 ) and ( length(labelededit3.Text) < 9)) then
  begin
  mark:=strtoint(labelededit3.Text);
  end;

  memo2.Lines.Text:= szyfer(memo1.Lines.Text,strtoint(labelededit4.Text));
  memo1.Lines.Clear;
  end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
if ((labelededit1.Text<>'') and (labelededit2.Text<>'') and (labelededit3.Text<>'') and (labelededit4.Text<>'')) then
  begin
    antoni:=strtoint(labelededit1.Text);
  cristina:=strtoint(labelededit2.Text);
  mark:=strtoint(labelededit3.Text);
  memo1.Lines.Text:= deszyfer(memo2.Lines.Text,strtoint(labelededit4.Text));
  memo2.Lines.Clear;
  end;
end;

end.
