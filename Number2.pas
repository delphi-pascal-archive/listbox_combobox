unit Number2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm3 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.DFM}

procedure TForm3.FormCreate(Sender: TObject);
begin
 Label1.FocusControl:=ListBox1;
 Label2.FocusControl:=ListBox2;
 //отключение сортировки элементов
 ListBox1.Sorted:=false;
 ListBox2.Sorted:=false;
 //включение множественного выбора элементов
 ListBox1.MultiSelect:=true;
 ListBox2.MultiSelect:=true;
 //разрешение выбора элем-в с помощью клавитуры
 ListBox1.ExtendedSelect:=true;
 ListBox2.ExtendedSelect:=true;
 //заполнение первого списка
 ListBox1.Clear;
 ListBox1.Items.Add('Январь');
 ListBox1.Items.Add('Февраль');
 ListBox1.Items.Add('Март');
 ListBox1.Items.Add('Апрель');
 ListBox1.Items.Add('Май');
 ListBox1.Items.Add('Июнь');
 ListBox1.Items.Add('Июль');
 ListBox1.Items.Add('Август');
 ListBox1.Items.Add('Сентябрь');
 ListBox1.Items.Add('Октябрь');
 ListBox1.Items.Add('Ноябрь');
 ListBox1.Items.Add('Декабрь');
 //очистка второго списка
 ListBox2.Clear;
 //разрешение автоматич. начала операции перемещ. эл-в мышью
 ListBox1.DragMode:=dmAutomatic;
 ListBox2.DragMode:=dmAutomatic;   
end;
//перенос эл-в во второй список
procedure TForm3.Button1Click(Sender: TObject);
var
 i:integer;
begin
 for i:=ListBox1.Items.Count-1 downto 0 do
  if ListBox1.Selected[i] then
   begin
    ListBox2.Items.Add(ListBox1.Items[i]);
    ListBox1.Items.Delete(i);
   end;
 ListBox1.SetFocus;
end;
//перенос эл-в в первый список
procedure TForm3.Button2Click(Sender: TObject);
var
 i:integer;
begin
 for i:=ListBox2.Items.Count-1 downto 0 do
  if ListBox2.Selected[i] then
   begin
    ListBox1.Items.Add(ListBox2.Items[i]);
    ListBox2.Items.Delete(i);
   end;
 ListBox2.SetFocus;
end;

procedure TForm3.ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
 if Source=ListBox1 then Accept:=true
 else
 Accept:=false;
end;

procedure TForm3.ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
{ with Source as TListBox do
  begin
   ListBox2.Items.Add(Items[ItemIndex]);
   Items.Delete(ItemIndex);
  end;}
 Button1.Click;
end;

procedure TForm3.ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
 if Source=ListBox2 then Accept:=true
 else
 Accept:=false;
end;

procedure TForm3.ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
{ with Source as TListBox do
  begin
   ListBox1.Items.Add(Items[ItemIndex]);
   Items.Delete(ItemIndex);
  end;}
 Button2.Click;  
end;

end.
