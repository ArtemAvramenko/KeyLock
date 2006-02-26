unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{  KBDLLHOOKSTRUCT = packed record
    vkCode: DWORD;
    scanCode: DWORD;
    flags: DWORD;
    time: DWORD ;
    dwExtraInfo: Pointer;
  end;
}
var
  MainForm: TMainForm;

implementation
const
   WH_KEYBOARD_LL = 13;
var
  SysHook : HHook = 0;
  Wnd : Hwnd = 0;

function SysMsgProc(code : integer; wParam : word; lParam : longint) : longint; stdcall;
begin
  if code < 0 then
    Result := CallNextHookEx(SysHook, Code, wParam, lParam)
  else
    Result:=1;
end;

procedure Hook(switch : Boolean) export; stdcall;
begin
  if switch=true then begin
    SysHook := SetWindowsHookEx(WH_KEYBOARD_LL, @SysMsgProc, HInstance, 0);
  end
  else begin
    UnhookWindowsHookEx(SysHook);
    SysHook := 0;
  end;
end;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Hook(True);
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Hook(False);
end;

end.
 