unit LBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, Frm1;

type
  TForm1 = class(TForm)
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel9: TBevel;
    Bevel20: TBevel;
    Bevel34: TBevel;
    Bevel35: TBevel;
    Bevel36: TBevel;
    Bevel43: TBevel;  
    ListBox1: TListBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    UpDown1: TUpDown;
    ComboBox1: TComboBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ComboBox2: TComboBox;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ListBox2: TListBox;
    ListBox3: TListBox;
    Button13: TButton;
    Button14: TButton;
    ListBox4: TListBox;
    Button15: TButton;
    Button19: TButton;
    Button20: TButton;
    ListBox5: TListBox;
    Label2: TLabel;
    Button21: TButton;
    Button22: TButton;
    Label3: TLabel;
    Button16: TButton;
    Button17: TButton;
    Label4: TLabel;
    Bevel2: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Label5: TLabel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Button18: TButton;
    Button24: TButton;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    CheckBox2: TCheckBox;
    RadioButton2: TRadioButton;
    Bevel16: TBevel;
    RadioGroup1: TRadioGroup;
    Bevel19: TBevel;
    Bevel15: TBevel;
    Bevel17: TBevel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    Button23: TButton;
    Button25: TButton;
    Bevel18: TBevel;
    Label6: TLabel;
    Bevel21: TBevel;
    Label7: TLabel;
    Frame11: TFrame1;
    Bevel22: TBevel;
    Bevel23: TBevel;
    ComboBox3: TComboBox;
    RichEdit1: TRichEdit;
    Label8: TLabel;
    Edit1: TEdit;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Edit2: TEdit;
    Bevel24: TBevel;
    Button31: TButton;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure ListBox5Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Frame11Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Number1, Number2;

var
 i:integer=1;
{$R *.DFM}
{$R Wf.res}

procedure TForm1.Button1Click(Sender: TObject);
begin
 ListBox1.Columns:=0;
 SendMessage(ListBox1.Handle,LB_SetHorizontalExtent,1000,0);
//100 и меньше - только вертикальная полоса
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 ListBox1.Columns:=4;
// SendMessage(ListBox1.Handle,LB_SetHorizontalExtent,1000,0);
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
 ListBox1.TopIndex:=UpDown1.Position;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 ComboBox1.DroppedDown:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 ComboBox1.DroppedDown:=false;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
 n:integer;
begin
 for n:=0 to ListBox1.Items.Count-1 do
 ListBox1.Items[n]:='Str. № '+IntToStr(n);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 ComboBox2.Items.Add('Driver 2');
end;

procedure TForm1.Button7Click(Sender: TObject);
var
 n:integer;
begin
 n:=PageControl1.PageCount;
 for n:=0 to {PageControl1.PageCount}n-1 do
 ListBox3.Items.AddObject(PageControl1.Pages[n].Name,PageControl1.Pages[n]);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
{ if not ListBox3.Items.Equals(ListBox2.Items) then
  begin
   ListBox3.Clear;
   ListBox3.Items.AddStrings(ListBox2.Items);
  end;}
 if not ListBox3.Items.Equals(ListBox2.Items) then
 ListBox3.Items.Assign(ListBox2.Items);
end;

procedure TForm1.Button9Click(Sender: TObject);
var
 i:integer;
begin
// ComboBox2.Items.Delete(3);//удал. четвертого элемента
 i:=ComboBox2.ItemIndex;
 ComboBox2.Items.Delete(i);
 ComboBox2.SetFocus;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
 ComboBox2.Items.Clear;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 ComboBox2.Items.SaveToFile(ExtractFilePath(Application.ExeName)+'release.txt');
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 ListBox3.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'release.txt');
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
 ComboBox1.Sorted:=true;
 ComboBox2.Sorted:=true;
 ListBox3.Sorted:=true;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
 Button14.Caption:='String № '+IntToStr(ListBox4.ItemIndex);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
 ListBox4.ItemIndex:=2;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
 ListBox5.Multiselect:=true;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
 ListBox5.Multiselect:=false;
end;

procedure TForm1.Button21Click(Sender: TObject);
var
 i:integer;
begin
 for i:=0 to ListBox5.Items.Count-1 do
 if ListBox5.Selected[i]
 then ListBox5.Items[i]:='Строка выбрана';
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
 ListBox5.Selected[1]:=true;
 ListBox5.Selected[10]:=true;
end;

procedure TForm1.ListBox5Click(Sender: TObject);
begin
 Label3.Caption:=ListBox5.Items[ListBox5.ItemIndex];
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
 Form2.Show;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
 Form3.Show;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
 Close;//Cancel--True
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
 if Memo1.Modified
  then Close{Button24.ModalResult:=mrOK}
  else Button24.ModalResult:=mrNone;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
  MessageDlg('R-R-R-R!!!!!',mtError,[mbOK],0);
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
 case CheckBox2.State of
  cbUnChecked: CheckBox2.Caption:='AAA';
  cbChecked: CheckBox2.Caption:='BBB';
  cbGrayed: CheckBox2.Caption:='CCC';
 end;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
 ScrollBox1.ScrollInView(Button23);
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
 ScrollBox1.ScrollInView(Button23);
end;

procedure TForm1.Frame11Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 ComboBox3.Items:=Screen.Fonts;
 ComboBox3.Text:=Screen.Fonts[0];
 Label10.caption:=label3.caption+#13'111111111111'+#13'222222222222'
                                                     +#13'666  666  666';
end;

procedure TForm1.ComboBox3Click(Sender: TObject);
begin
 RichEdit1.SelAttributes.Name:=ComboBox3.Items[ComboBox3.ItemIndex];
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
 Screen.Cursors[1]:=LoadCursor(HInstance,'WOLF');
 Screen.Cursor:=i;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
 dec(i);
 if i<-22 then Close
 else
  begin
   Edit1.Text:=IntToStr(i);
   Screen.Cursor:=i;
  end;
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
 Screen.Cursor:=crHourGlass;
 Sleep(3000);
 Screen.Cursor:=crDefault;
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
 ListBox3.Perform(LB_SETHORIZONTALEXTENT, 1000, Longint(0));
 // 1000 - ширина прокрутки в точках
end;

procedure TForm1.Button30Click(Sender: TObject);
var
 s:string;
begin
 s:=Edit2.Text;
 with ListBox1 do
 ItemIndex:=Perform(LB_SELECTSTRING, ItemIndex, LongInt(S));
/////////////////
 s:=Edit2.Text;
 with ListBox5 do
 ItemIndex:=Perform(LB_SELECTSTRING, ItemIndex, LongInt(S));
end;

procedure TForm1.Button31Click(Sender: TObject);
var
 hMenuHandle:HMENU;
begin
 hMenuHandle:=GetSystemMenu(Handle, FALSE);
 if (hMenuHandle<>0) then
  DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;

end.
