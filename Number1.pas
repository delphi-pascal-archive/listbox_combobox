unit Number1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Form2: TForm2;
 Sel,NoSel:TBitmap;

implementation

{$R *.DFM}

procedure TForm2.FormCreate(Sender: TObject);
begin
 //�������� �������� �� ������
 Sel:=TBitmap.Create;
 NoSel:=TBitmap.Create;
 Sel.LoadFromFile('A1.bmp');
 NoSel.LoadFromFile('A2.bmp');
 //��������� ��������. ������ ��-�
 ListBox1.Multiselect:=true;
 //�����. �����, ����. �����. ���������� ��-�
 ListBox1.Style:=lbOwnerDrawFixed;
 //������ ��-� ������ � ������ ������
 ListBox1.Font.Height:=220;{Sel.Height;}//������ ������
 ListBox1.ItemHeight:=ListBox1.Font.Height+4;//������ ������
 ListBox1.IntegralHeight:=false;//���� ������ � ����
 //���������� ������
 ListBox1.Items.Add('1 ���.');
 ListBox1.Items.Add('2 ���.');
 ListBox1.Items.Add('3 ���.');
 ListBox1.Items.Add('4 ���.');
 ListBox1.Items.Add('5 ���.');
end;

//����������� ���������� ��-� ������
procedure TForm2.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
 r:Trect;//��������������� ������� ���������� ��-�
begin
 if TListBox(Control).Selected[Index] then//���� ������� ������
  begin
   TListBox(Control).Canvas.Font.Color:=clYellow;
   TListBox(Control).Canvas.BrushCopy(Bounds(Rect.Left+2,Rect.Top,Sel.Width,
    Sel.Height),Sel,Bounds(0,0,Sel.Width,Sel.Height),clRed);
  end
 else
  begin
   TListBox(Control).Canvas.Font.Color:=clBlack;
   TListBox(Control).Canvas.BrushCopy(Bounds(Rect.Left+2,Rect.Top,NoSel.Width,
   NoSel.Height),NoSel,Bounds(0,0,NoSel.Width,NoSel.Height),clBlue);
  end;
 r:=Rect;
 r.Left:=r.Left+Sel.Width+6;
 TlistBox(Control).Canvas.FillRect(r);
 TlistBox(Control).Canvas.TextOut(r.Left,Rect.Top,(Control as TListBox).Items[Index]);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Sel.Free;
 NoSel.Free;
end;

procedure TForm2.ListBox1Click(Sender: TObject);
begin
//����������� ������ ��� ������ ��� ������ ������ ��������
 ListBox1.Refresh;
end;

end.
