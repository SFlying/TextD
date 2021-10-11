unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, Math, ExtCtrls, StrUtils;

type
  TfmMain = class(TForm)
    pnl1: TPanel;
    mmoText: TMemo;
    btn1: TButton;
    btn2: TButton;
    edt1: TEdit;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    edt2: TEdit;
    edt3: TEdit;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    mmoStandby: TMemo;
    btn16: TButton;
    btn17: TButton;
    btn18: TButton;
    btn19: TButton;
    btn20: TButton;
    btn21: TButton;
    btn22: TButton;
    btn23: TButton;
    btn24: TButton;
    btn25: TButton;
    btn26: TButton;
    btn27: TButton;
    btn28: TButton;
    btn29: TButton;
    btn30: TButton;
    btn31: TButton;
    btn32: TButton;
    btn33: TButton;
    xpmnfst1: TXPManifest;
    btn34: TButton;
    btn35: TButton;
    btn36: TButton;
    btn37: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn17Click(Sender: TObject);
    procedure btn18Click(Sender: TObject);
    procedure btn19Click(Sender: TObject);
    procedure btn20Click(Sender: TObject);
    procedure btn21Click(Sender: TObject);
    procedure btn22Click(Sender: TObject);
    procedure btn23Click(Sender: TObject);
    procedure btn24Click(Sender: TObject);
    procedure mmoTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn25Click(Sender: TObject);
    procedure btn26Click(Sender: TObject);
    procedure btn27Click(Sender: TObject);
    procedure btn28Click(Sender: TObject);
    procedure btn30Click(Sender: TObject);
    procedure btn31Click(Sender: TObject);
    procedure btn32Click(Sender: TObject);
    procedure btn33Click(Sender: TObject);
    procedure btn34Click(Sender: TObject);
    procedure btn35Click(Sender: TObject);
    procedure btn36Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn37Click(Sender: TObject);
  private
    function ConvertStr(s: string): string;
    procedure CopyText;
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

procedure TfmMain.btn1Click(Sender: TObject);
var
  i: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  if Length(sl[i]) > 0 then
    sl[i]:= UpperCase(sl[i][1]) + Copy(sl[i], 2, $7fffffff);
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn2Click(Sender: TObject);
var
  i: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  if Length(sl[i]) > 0 then
    sl[i]:= LowerCase(sl[i][1]) + Copy(sl[i], 2, $7fffffff);
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn3Click(Sender: TObject);
var
  i, iChar: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  ichar:= StrToIntDef(edt1.Text, 0) + 1;
  for i:= 0 to sl.Count - 1 do
  if Length(sl[i]) > 0 then
    sl[i]:= Copy(sl[i], iChar, $7fffffff);
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn4Click(Sender: TObject);
var
  i, iChar: Integer;
  sl: TStrings;
begin
  ichar:= StrToIntDef(edt1.Text, 0);
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  if Length(sl[i]) > 0 then
    sl[i]:= Copy(sl[i], 1, Length(sl[i]) - iChar);
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn5Click(Sender: TObject);
var
  i: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  if Length(sl[i]) > 0 then
    sl[i]:= ConvertStr(edt1.Text) + sl[i];
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn6Click(Sender: TObject);
var
  i: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= sl.Count - 1 downto 0 do
  if Length(sl[i]) > 0 then
    sl[i]:= sl[i] + ConvertStr(edt1.Text);
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

function TfmMain.ConvertStr(s: string): string;
var
  i, iLen: Integer;
begin
  Result:= '';
  i:= 1;
  iLen:= Length(s);
  while i <= iLen do
  if s[i] = '$' then
  begin
    Result:= Result + Chr(StrToInt(Copy(s, i, 3)));
    Inc(i, 3);
  end
  else
  begin
    Result:= Result + s[i];
    Inc(i);
  end;
  CopyText;
end;

procedure TfmMain.btn7Click(Sender: TObject);
var
  i: Integer;
begin
  for i:= 0 to mmoText.Lines.Count - 1 do
  if Length(mmoText.Lines[i]) > 0 then
    mmoText.Lines[i]:= mmoText.Lines[i] + IntToStr(i + StrToIntDef(edt1.Text, 0));
  CopyText;
end;

procedure TfmMain.CopyText;
begin
  mmoText.SelectAll;
  mmoText.CopyToClipboard;
  mmoText.SetFocus;
end;

procedure TfmMain.btn8Click(Sender: TObject);
begin
  mmoText.Text:= StringReplace(mmoText.Text, ConvertStr(edt2.Text),
    ConvertStr(edt3.Text), [rfReplaceAll]);
  CopyText;
end;

procedure TfmMain.btn9Click(Sender: TObject);
var
  i, iPos: Integer;
begin
  for i:= 0 to mmoText.Lines.Count - 1 do
  if Length(mmoText.Lines[i]) > 0 then
  begin
    iPos:= 1;
    while iPos <= Length(mmoText.Lines[i]) do
    if mmoText.Lines[i][iPos] in ['a'..'z'] then
      Inc(iPos)
    else
      Break;
    mmoText.Lines[i]:= Copy(mmoText.Lines[i], iPos, $7fffffff);
  end;
  CopyText;
end;

procedure TfmMain.btn10Click(Sender: TObject);
var
  i: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  if Length(sl[i]) > 0 then
    sl[i]:= TrimLeft(sl[i]);
  mmoText.Text:= sl.Text;
  CopyText;
end;

procedure TfmMain.btn11Click(Sender: TObject);
var
  i: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  if Length(sl[i]) > 0 then
    sl[i]:= TrimRight(sl[i]);
  mmoText.Text:= sl.Text;
  CopyText;
end;

procedure TfmMain.btn12Click(Sender: TObject);
var
  i, iPos: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  if Length(sl[i]) > 0 then
  begin
    iPos:= AnsiPos(edt1.Text, sl[i]);
    if iPos > 0 then
      sl[i]:= Copy(sl[i], iPos, $7fffffff);
  end;
  mmoText.Lines:= sl;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn13Click(Sender: TObject);
var
  i, iLen, iPos: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  iLen:= Length(edt1.Text) - 1;
  for i:= 0 to sl.Count - 1 do
  if Length(sl[i]) > 0 then
  begin
    iPos:= AnsiPos(edt1.Text, sl[i]);
    if iPos > 0 then
      sl[i]:= Copy(sl[i], 1, iPos + iLen);
  end;
  mmoText.Lines:= sl;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn14Click(Sender: TObject);
var
  i: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= sl.Count - 1 downto 0 do
  if Length(sl[i]) = 0 then
    sl.Delete(i);
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn15Click(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  s:= mmoText.Text;
  for i:= 1 to StrToIntDef(edt1.Text, 0) do
    mmoText.Lines.Add(s);
  CopyText;
end;

procedure TfmMain.btn16Click(Sender: TObject);
var
  s: string;
begin
  s:= mmoText.Text;
  mmoText.Text:= mmoStandby.Text;
  mmoStandby.Text:= s;
  CopyText;
end;

procedure TfmMain.btn17Click(Sender: TObject);
var
  i: Integer;
  sl: TStrings;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to Min(sl.Count, mmoStandby.Lines.Count) - 1 do
    sl[i]:= sl[i] + mmoStandby.Lines[i];
  if mmoStandby.Lines.Count > sl.Count then
  for i:= sl.Count to mmoStandby.Lines.Count - 1 do
    sl.Add(mmoStandby.Lines[i]);
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn18Click(Sender: TObject);
begin
  mmoText.Text:= UpperCase(mmoText.Text);
  CopyText;
end;

procedure TfmMain.btn19Click(Sender: TObject);
begin
  mmoText.Text:= LowerCase(mmoText.Text);
  CopyText;
end;

procedure TfmMain.btn20Click(Sender: TObject);
var
  i, j, iLen: Integer;
  sl: TStrings;
begin
  iLen:= 0;
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
    iLen:= Max(iLen, Length(sl[i]));
  for i:= 0 to sl.Count - 1 do
  for j:= Length(sl[i]) to iLen do
    sl[i]:= sl[i] + ' ';
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn21Click(Sender: TObject);
var
  i: Integer;
begin
  for i:= 0 to mmoText.Lines.Count - 1 do
  if i mod 2 = 0 then
    mmoText.Lines[i]:= '';
  CopyText;
end;

procedure TfmMain.btn22Click(Sender: TObject);
var
  i: Integer;
begin
  for i:= 0 to mmoText.Lines.Count - 1 do
  if i mod 2 = 1 then
    mmoText.Lines[i]:= '';
  CopyText;
end;

procedure TfmMain.btn23Click(Sender: TObject);
var
  i: Integer;
begin
  for i:= mmoText.Lines.Count - 1 downto 0 do
    mmoText.Lines.Insert(i, '');
  CopyText;
end;

procedure TfmMain.btn24Click(Sender: TObject);
var
  i: Integer;
begin
  for i:= mmoText.Lines.Count - 1 downto 0 do
    mmoText.Lines.Insert(i + 1, '');
  CopyText;
end;

procedure TfmMain.mmoTextKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = Ord('A')) then
    (Sender as TMemo).SelectAll;
end;

procedure TfmMain.btn25Click(Sender: TObject);
var
  i, j, iLen, iPos: Integer;
  sl: TStrings;
  s: string;
begin
  iLen:= 0;
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  // 取得最长的注释位置
  for i:= 0 to sl.Count - 1 do
  if Pos('//', sl[i]) > 0 then
  begin
    iPos:= Pos('//', sl[i]) - 1;
    for j:= iPos downto 1 do
    if (sl[i][j] = ' ') or (sl[i][j] = #9) then
      iPos:= j
    else
    begin
      Break;
    end;
    iLen:= Max(iLen, iPos);
  end;
  for i:= 0 to sl.Count - 1 do
  begin
    if Pos('//', sl[i]) > 0 then
    begin
      s:= Trim(Copy(sl[i], Pos('//', sl[i]) + 2, $7fffffff));
      sl[i]:= Copy(sl[i], 1, Pos('//', sl[i]) - 1);
    end
    else
      s:= '';
    sl[i]:= TrimRight(sl[i]);
    if s <> '' then
    begin
      for j:= Length(sl[i]) to iLen - 1 do
        sl[i]:= sl[i] + ' ';
      sl[i]:= sl[i] + '// ' + s;
    end;
  end;
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn26Click(Sender: TObject);
var
  i, j, iLen: Integer;
  sl: TStrings;
  s: string;
begin
  iLen:= 0;
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  if Pos('=', sl[i]) > 0 then
    iLen:= Max(iLen, Pos('=', sl[i]) - 1);
  for i:= 0 to sl.Count - 1 do
  begin
    if Pos('=', sl[i]) > 0 then
    begin
      s:= Copy(sl[i], Pos('=', sl[i]), $7fffffff);
      sl[i]:= Copy(sl[i], 1, Pos('=', sl[i]) - 1);
    end
    else
      s:= '';
    if s <> '' then
    begin
      for j:= Length(sl[i]) to iLen - 1 do
        sl[i]:= sl[i] + ' ';
      sl[i]:= sl[i] + s;
    end;
  end;
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn27Click(Sender: TObject);
var
  sl: TStrings;
  i, j: Integer;
  s: string;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  begin
    for j:= i to sl.Count - 1 do
      if LowerCase(sl[i]) > LowerCase(sl[j]) then
      begin
        s:= sl[i];
        sl[i]:= sl[j];
        sl[j]:= s;
      end;
  end;
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn28Click(Sender: TObject);
var
  sl: TStrings;
  i, j: Integer;
  s: string;
begin
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  begin
    for j:= i to sl.Count - 1 do
      if LowerCase(sl[i]) < LowerCase(sl[j]) then
      begin
        s:= sl[i];
        sl[i]:= sl[j];
        sl[j]:= s;
      end;
  end;
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn30Click(Sender: TObject);
var
  i, j, iLen: Integer;
  iPos: Integer;
  sl: TStrings;
  s1, s2: string;
begin
  iLen:= 0;
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  begin
    iPos:= Pos(':', sl[i]);
    if iPos > 0 then
    begin
      if (Length(sl[i]) >= iPos) and (sl[i][iPos + 1] <> '=') then
      begin
        s1:= Copy(sl[i], 1, iPos - 1);
        s2:= Copy(sl[i], iPos + 1, MaxInt);
        sl[i]:= TrimRight(s1) + ': ' + Trim(s2);
      end;
    end;
  end;
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn31Click(Sender: TObject);
var
  s, sTemp, sRet: string;
  iPos, iLast: Integer;
  iWidth: Integer;
begin
  iWidth:= StrToIntDef(edt1.Text, 80);
  s:= mmoText.Text;
  s:= StringReplace(s, ' ', '', [rfReplaceAll]);
  s:= Trim(StringReplace(s, #13#10, '', [rfReplaceAll]));
  iLast:= 0;
  sTemp:= '  ';
  sRet:= '';
  while s <> '' do
  begin
    iPos:= Pos(',', s);
    if iPos > 0 then
    begin
      if Length(sTemp) + iPos > iWidth then
      begin
        sRet:= sRet + sTemp + #13#10;
        sTemp:= '  ';
      end
      else
      begin
        sTemp:= sTemp + Copy(s, 1, iPos) + ' ';
        s:= Trim(Copy(s, iPos + 1, MaxInt));
      end;
    end
    else
    begin
      if Length(sTemp) + Length(s) > iWidth then
      begin
        sRet:= sRet + sTemp + #13#10 + '  ' + s;
      end
      else
      begin
        sRet:= sRet + sTemp + s;
      end;
      s:= '';
    end;
  end;
  mmoText.Text:= sRet + #13#10;
  CopyText;
end;

procedure TfmMain.btn32Click(Sender: TObject);
var
  i, j, iLen: Integer;
  iPos: Integer;
  sl: TStrings;
  s1, s2: string;
begin
  iLen:= 0;
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  begin
    iPos:= Pos(':', sl[i]);
    if iPos > 0 then
    begin
      if (Length(sl[i]) > iPos) and (sl[i][iPos + 1] = '=') then
      begin
        s1:= Copy(sl[i], 1, iPos - 1);
        s2:= Copy(sl[i], iPos + 2, MaxInt);
        sl[i]:= TrimRight(s1) + ':= ' + Trim(s2);
      end;
    end;
  end;
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn33Click(Sender: TObject);
var
  i, j, iLen: Integer;
  iPos: Integer;
  sl: TStrings;
  s1, s2, sCur: string;
  iEmpty: Integer;
  bFirst: Boolean;
begin
  btn30.Click;
  btn32.Click;
  bFirst:= True;
  iLen:= 0;
  sl:= TStringList.Create;
  sl.Text:= mmoText.Text;
  for i:= 0 to sl.Count - 1 do
  begin
    if bFirst then
    begin
      if Trim(sl[i]) = '' then
        Continue;
      iEmpty:= Length(sl[i]) - Length(TrimLeft(sl[i]));
      bFirst:= False;
    end;
    sCur:= Trim(sl[i]);
    if LowerCase(sCur) = 'end' then
      Dec(iEmpty, 2)
    else
    if LowerCase(sCur) = 'interface' then
      Dec(iEmpty, 2)
    else
    if LowerCase(sCur) = 'type' then
      Dec(iEmpty, 2)
    else
    if LowerCase(sCur) = 'uses' then
      Dec(iEmpty, 2)
    else
    if LowerCase(Copy(sCur, 1, 4)) = 'end ' then
      Dec(iEmpty, 2)
    else
    if LowerCase(sCur) = 'end;' then
      Dec(iEmpty, 2);
    iEmpty:= Max(iEmpty, 0);
    if iEmpty > 0 then
      sl[i]:= Format('%' + IntToStr(iEmpty) + 's', [' ']) + sCur
    else
      sl[i]:= sCur;
    if LowerCase(sCur) = 'begin' then
      Inc(iEmpty, 2)
    else
    if LowerCase(sCur) = 'interface' then
      Inc(iEmpty, 2)
    else
    if LowerCase(sCur) = 'type' then
      Inc(iEmpty, 2)
    else
    if LowerCase(sCur) = 'uses' then
      Inc(iEmpty, 2)
    else
    if LowerCase(Copy(sCur, 1, 5)) = 'case ' then
      Inc(iEmpty, 2);
  end;
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.btn34Click(Sender: TObject);
var
  sl: TStrings;
  i, j: Integer;
  s: string;
begin
  if mmoText.Lines.Count > 0 then
  begin
    sl:= TStringList.Create;
    sl.Text:= mmoText.Text;
    for i:= 0 to sl.Count - 1 do
    begin
      sl[i]:= '+ "' + sl[i] + '\r\n"';
    end;
    sl[sl.Count - 1]:= StringReplace(sl[sl.Count - 1], '\r\n', '', [rfReplaceAll]);
    mmoText.Text:= Trim(Copy(sl.Text, 2, Length(sl.Text) - 1));
    sl.Free;
  end;
  CopyText;
end;

procedure TfmMain.btn35Click(Sender: TObject);
begin
  mmoText.Text:= StringReplace(StringReplace(Copy(mmoText.Text, 2, Length(mmoText.Text) - 2), '\r\n"', '', [rfReplaceAll]), '+ "', '', [rfReplaceAll]);
  CopyText;
end;

procedure TfmMain.btn36Click(Sender: TObject);
var
  s: string;
  pos: Integer;
  endPos: Integer;
  i: Integer;
  sl: TStrings;
begin
  s:= StringReplace(mmoText.Text, #9, ' ', [rfReplaceAll]);
  s:= StringReplace(s, ' float ', ' double ', [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' timestamp ', ' long ', [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' date ', ' DateTime ', [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' datetime ', ' DateTime ', [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' bit ', ' bool ', [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' tinyint ', ' byte ', [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' float'#13, ' double'#13, [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' timestamp'#13, ' long'#13, [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' date'#13, ' DateTime'#13, [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' datetime'#13, ' DateTime'#13, [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' bit'#13, ' bool'#13, [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' tinyint'#13, ' byte'#13, [rfReplaceAll, rfIgnoreCase]);
  repeat
    pos:= PosEx(' varchar(', s);
    if pos > 0 then
    begin
      endPos:= PosEx(')', s, pos);
      s:= Copy(s, 1, pos) + 'string' + Copy(s, endPos + 1, MaxInt);
    end;
  until pos <= 0;
  repeat
    pos:= PosEx(' char(', s);
    if pos > 0 then
    begin
      endPos:= PosEx(')', s, pos);
      s:= Copy(s, 1, pos) + 'string' + Copy(s, endPos + 1, MaxInt);
    end;
  until pos <= 0;
  repeat
    pos:= PosEx(' nchar(', s);
    if pos > 0 then
    begin
      endPos:= PosEx(')', s, pos);
      s:= Copy(s, 1, pos) + 'string' + Copy(s, endPos + 1, MaxInt);
    end;
  until pos <= 0;
  repeat
    pos:= PosEx(' nvarchar(', s);
    if pos > 0 then
    begin
      endPos:= PosEx(')', s, pos);
      s:= Copy(s, 1, pos) + 'string' + Copy(s, endPos + 1, MaxInt);
    end;
  until pos <= 0;
  s:= StringReplace(s, ' varchar ', ' string ', [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' nvarchar ', ' string ', [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' varchar'#13, ' string'#13, [rfReplaceAll, rfIgnoreCase]);
  s:= StringReplace(s, ' nvarchar'#13, ' string'#13, [rfReplaceAll, rfIgnoreCase]);
  sl:= TStringList.Create;
  sl.Text:= s;
  for i:= sl.Count - 1 downto 0 do
    sl.Insert(i, '[DBField]');
  mmoText.Text:= sl.Text;
  sl.Free;
  CopyText;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  if ParamCount > 0 then
    mmoText.Text:= ParamStr(1);
  if ParamCount > 1 then
    mmoStandby.Text:= ParamStr(2);
end;

procedure TfmMain.btn37Click(Sender: TObject);
var
  sl: TStrings;
  i, j: Integer;
  s: string;
begin
  if mmoText.Lines.Count > 0 then
  begin
    sl:= TStringList.Create;
    sl.Text:= mmoText.Text;
    for i:= 0 to sl.Count - 1 do
    begin
      sl[i]:= ' "' + sl[i] + '" & vbCrLf & _';
    end;
    sl[sl.Count - 1]:= StringReplace(sl[sl.Count - 1], ' & vbCrLf & _', '', [rfReplaceAll]);
    mmoText.Text:= Trim(Copy(sl.Text, 2, Length(sl.Text) - 1));
    sl.Free;
  end;
  CopyText;
end;

end.
