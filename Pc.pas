unit Pc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure MakeListTab(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  mn: integer;
  TS: TStringList;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
var
 np:TTabSheet;
 nb:TButton;
 n:integer;
begin
 CheckBox1.Checked:=true;
 CheckBox2.Checked:=true;
 mn:=3;
 PageControl1.MultiLine:=true;
 //удаление всех страниц блокнота
 for n:=0 to mn do
  begin
   np:=TTabSheet.Create(Self);
   np.PageControl:=PageControl1;
   np.Caption:='Лист '+IntToStr(n+1);
   nb:=TButton.Create(Self);
   nb.Caption:='Кнопка '+IntToStr(n+1);
   nb.Parent:=np;
  end;
 //формирование списка страниц блокнота
 TS:=TStringList.Create;
 MakeListTab(Sender);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 inc(mn);
 //добавление страницы выполнено без объявл. спец. переменной
 with TTabSheet.Create(Self) do
  begin
   PageControl:=PageControl1;
   Caption:='Лист '+IntToStr(mn+1);
  end;
 //формирование списка страниц блокнота заново
 MakeListTab(Sender);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if PageControl1.PageCount<=0 then Exit;
 PageControl1.Pages[PageControl1.ActivePage.PageIndex].Free;
 //формирование списка страниц блокнота заново
 MakeListTab(Sender);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 PageControl1.ActivePage:=TTabSheet(TS.Objects[StrToInt(Edit1.Text)-1]);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 PageControl1.SelectNextPage(true);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 PageControl1.SelectNextPage(false);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 if CheckBox1.Checked
  then PageControl1.Pages[StrToInt(Edit1.Text)-1].TabVisible:=true
  else PageControl1.Pages[StrToInt(Edit1.Text)-1].TabVisible:=false;
 if CheckBox2.Checked
  then PageControl1.Pages[StrToInt(Edit1.Text)-1].TabVisible:=true
  else PageControl1.Pages[StrToInt(Edit1.Text)-1].TabVisible:=false;
end;

procedure TForm1.MakeListTab(Sender: TObject);
var
 n:integer;
begin
 //формирование списка страниц блокнота
 TS.Clear;
 for n:=0 to PageControl1.PageCount-1 do
  TS.AddObject(PageControl1.Pages[n].Name,PageControl1.Pages[n]);
end;

end.
