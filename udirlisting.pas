unit udirlisting;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, strutils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, shellapi;

procedure dir(path: string; l: TStringList);
procedure lookforfile(dir: string; list: TStringList; lb: Tlistbox);
procedure append(dirstring: string; l: TStringList; listbox: Tlistbox);
function modifie(item: string): string;
procedure unselect(lb: Tlistbox);
function deleteremoved(list: TStringList; listbox: Tlistbox): boolean;
procedure moveleft(listbox: TListbox; index: integer);
function getselected(lists: array of TListbox): string;
implementation

function getselected(lists: array of TListbox): string;
var i, size: integer;
list: TListbox;
res: String;
begin
try
  size := length(lists);
  for i  := 0 to size -1 do begin
    list := lists[i];
    if list.SelCount = 0 then continue
    else                                        begin
      res := list.Items.Strings[list.ItemIndex];
      exit;
    end;
  end;
finally
 Result := res;
end;



end;

procedure moveleft(listbox: TListbox; index: integer);
var i, size: integer;
item: string;
begin
  size := listbox.count;
  for i := index to size - 2 do begin
    listbox.Items[index] := listbox.Items[index + 1];
  end;
  listbox.Items.Delete(index);
end;

procedure dir(path: string; l: TStringList);
var
  sr: TSearchRec;
  position: integer;
  name: string;
begin
  if FindFirst(path + '\*', faAnyFile and not faDirectory, sr) = 0 then
    try
      repeat
        name := sr.name;
        if l.find(Name, position) then
          continue;
        l.Add(sr.name);
      until FindNext(sr) <> 0;
    finally
      FindClose(sr);
    end;
end;

procedure lookforfile(dir: string; list: TStringList; lb: Tlistbox);

begin
  append(dir, list, lb);
end;

function deleteremoved(list: TStringList; listbox: Tlistbox): boolean;
var
  listitem, boxitem, limitedboxitem: string;
  index, size: integer;
  contains: boolean;
begin
  size := listbox.Count;
  for index := 0 to listbox.count -1 do begin
    contains := false;
    try
    boxitem := listbox.Items.Strings[index];
    except exit;

    end;
    limitedboxitem := trim(copy(boxitem, pos(':', boxitem) + 1, Length(boxitem)));
    for listitem in list do begin
      if listitem = limitedboxitem then begin
        contains := true;
        continue;
      end;
    end;
    if not contains then   begin
      moveleft(listbox, index);
      size := size - 1;
      listbox.update;
    end;
  end;
end;

procedure append(dirstring: string; l: TStringList; listbox: Tlistbox);
var
  item: string;
  moditem: string;
begin
  dir(dirstring, l);
  for item in l do
  begin
    moditem := modifie(item);
    if listbox.Items.IndexOf(moditem) >= 0 then
      continue;
    listbox.Items.append(moditem);
  end;
end;

function modifie(item: string): string;
begin
try
  if AnsiStartsText('scan', LowerCase(item)) then begin
    item := 'gescannt: ' + item;
    exit;
  end;
  if AnsiEndsStr('eml', LowerCase(item)) then
  begin
    item := 'Email: ' + item;
    exit;
  end;
  if AnsiEndsStr('tif', LowerCase(item)) or AnsiEndsStr('jpg', LowerCase(item))
  then
  begin
    item := 'Bild: ' + item;
    exit;
  end;
  if AnsiEndsStr('pdf', LowerCase(item)) then
  begin
    item := 'PDF: ' + item;
    exit;
  end;
finally
  Result := item;
end;

end;

procedure unselect(lb: Tlistbox);
var
  index, size: integer;
begin
  size := lb.Count;
  for index := 0 to size - 1 do
  begin
    lb.selected[index] := false;
  end;
end;

end.
