{ $Id$}
{
 *****************************************************************************
 *                              QtWSStdCtrls.pp                              * 
 *                              ---------------                              * 
 *                                                                           *
 *                                                                           *
 *****************************************************************************

 *****************************************************************************
 *                                                                           *
 *  This file is part of the Lazarus Component Library (LCL)                 *
 *                                                                           *
 *  See the file COPYING.modifiedLGPL.txt, included in this distribution,    *
 *  for details about the copyright.                                         *
 *                                                                           *
 *  This program is distributed in the hope that it will be useful,          *
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of           *
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                     *
 *                                                                           *
 *****************************************************************************
}
unit QtWSStdCtrls;

{$mode objfpc}{$H+}

interface

{$I qtdefines.inc}

uses
  // Bindings
  qt4,
  qtprivate, qtwidgets, qtproc, QtWsControls,
  // RTL
  math,
  // LCL
  Classes, Types, StdCtrls, Controls, Forms, SysUtils, InterfaceBase, LCLType,
  // Widgetset
  WSProc, WSStdCtrls, WSLCLClasses;

type

  { TQtWSScrollBar }

  TQtWSScrollBar = class(TWSScrollBar)
  published
    class function  CreateHandle(const AWinControl: TWinControl;
      const AParams: TCreateParams): TLCLIntfHandle; override;
    class procedure SetParams(const AScrollBar: TCustomScrollBar); override;
    class procedure ShowHide(const AWinControl: TWinControl); override;
  end;

  { TQtWSCustomGroupBox }

  TQtWSCustomGroupBox = class(TWSCustomGroupBox)
  published
    class function  CreateHandle(const AWinControl: TWinControl;
      const AParams: TCreateParams): TLCLIntfHandle; override;
    class function GetDefaultClientRect(const AWinControl: TWinControl;
             const aLeft, aTop, aWidth, aHeight: integer; var aClientRect: TRect
             ): boolean; override;
  end;

  { TQtWSGroupBox }

  TQtWSGroupBox = class(TWSGroupBox)
  published
  end;

  { TQtWSCustomComboBox }

  TQtWSCustomComboBox = class(TWSCustomComboBox)
  published
    class function  CreateHandle(const AWinControl: TWinControl;
      const AParams: TCreateParams): TLCLIntfHandle; override;
    class function GetDroppedDown(const ACustomComboBox: TCustomComboBox
       ): Boolean; override;
    class function GetItemIndex(const ACustomComboBox: TCustomComboBox): integer; override;
    class function GetItems(const ACustomComboBox: TCustomComboBox): TStrings; override;
    class function GetMaxLength(const ACustomComboBox: TCustomComboBox): integer; override;
    class procedure GetPreferredSize(const AWinControl: TWinControl;
      var PreferredWidth, PreferredHeight: integer; WithThemeSpace: Boolean); override;
    class function GetSelStart(const ACustomComboBox: TCustomComboBox): integer; override;
    class function GetSelLength(const ACustomComboBox: TCustomComboBox): integer; override;
    class procedure SetSelStart(const ACustomComboBox: TCustomComboBox; NewStart: integer); override;
    class procedure SetSelLength(const ACustomComboBox: TCustomComboBox; NewLength: integer); override;

    class procedure SetArrowKeysTraverseList(const ACustomComboBox: TCustomComboBox;
      NewTraverseList: boolean); override;
    class procedure SetDropDownCount(const ACustomComboBox: TCustomComboBox; NewCount: Integer); override;
    class procedure SetDroppedDown(const ACustomComboBox: TCustomComboBox;
       ADroppedDown: Boolean); override;
    class procedure SetItemIndex(const ACustomComboBox: TCustomComboBox; NewIndex: integer); override;
    class procedure SetMaxLength(const ACustomComboBox: TCustomComboBox; NewLength: integer); override;
    class procedure SetStyle(const ACustomComboBox: TCustomComboBox; NewStyle: TComboBoxStyle); override;

    class procedure Sort(const ACustomComboBox: TCustomComboBox; AList: TStrings; IsSorted: boolean); override;
  end;

  { TQtWSComboBox }

  TQtWSComboBox = class(TWSComboBox)
  published
  end;

  { TQtWSCustomListBox }

  TQtWSCustomListBox = class(TWSCustomListBox)
  published
    class function  CreateHandle(const AWinControl: TWinControl;
     const AParams: TCreateParams): TLCLIntfHandle; override;
    class function GetIndexAtXY(const ACustomListBox: TCustomListBox; X, Y: integer): integer; override;
    class function GetItemIndex(const ACustomListBox: TCustomListBox): integer; override;
    class function GetItemRect(const ACustomListBox: TCustomListBox; Index: integer; var ARect: TRect): boolean; override;
    class function GetSelCount(const ACustomListBox: TCustomListBox): integer; override;
    class function GetSelected(const ACustomListBox: TCustomListBox; const AIndex: integer): boolean; override;
    class function GetStrings(const ACustomListBox: TCustomListBox): TStrings; override;
    class function GetTopIndex(const ACustomListBox: TCustomListBox): integer; override;

    class procedure SelectItem(const ACustomListBox: TCustomListBox; AIndex: integer; ASelected: boolean); override;
    class procedure SetBorder(const ACustomListBox: TCustomListBox); override;
    class procedure SetColumnCount(const ACustomListBox: TCustomListBox; ACount: Integer); override;
    class procedure SetItemIndex(const ACustomListBox: TCustomListBox; const AIndex: integer); override;
    class procedure SetSelectionMode(const ACustomListBox: TCustomListBox; const AExtendedSelect, AMultiSelect: boolean); override;
    class procedure SetSorted(const ACustomListBox: TCustomListBox; AList: TStrings; ASorted: boolean); override;
    class procedure SetStyle(const ACustomListBox: TCustomListBox); override;
    class procedure SetTopIndex(const ACustomListBox: TCustomListBox; const NewTopIndex: integer); override;
  end;

  { TQtWSListBox }

  TQtWSListBox = class(TWSListBox)
  published
  end;

  { TQtWSCustomEdit }

  TQtWSCustomEdit = class(TWSCustomEdit)
  published
    class function CreateHandle(const AWinControl: TWinControl;
          const AParams: TCreateParams): HWND; override;
    class procedure SetAlignment(const ACustomEdit: TCustomEdit; const AAlignment: TAlignment); override;
    class function GetCaretPos(const ACustomEdit: TCustomEdit): TPoint; override;
    class function GetCanUndo(const ACustomEdit: TCustomEdit): Boolean; override;
    class procedure SetCaretPos(const ACustomEdit: TCustomEdit; const NewPos: TPoint); override;
    class procedure SetEchoMode(const ACustomEdit: TCustomEdit; NewMode: TEchoMode); override;
    class procedure SetMaxLength(const ACustomEdit: TCustomEdit; NewLength: integer); override;
    class procedure SetReadOnly(const ACustomEdit: TCustomEdit; NewReadOnly: boolean); override;
    class function GetSelStart(const ACustomEdit: TCustomEdit): integer; override;
    class function GetSelLength(const ACustomEdit: TCustomEdit): integer; override;
    class procedure SetSelStart(const ACustomEdit: TCustomEdit; NewStart: integer); override;
    class procedure SetSelLength(const ACustomEdit: TCustomEdit; NewLength: integer); override;

    //class procedure SetPasswordChar(const ACustomEdit: TCustomEdit; NewChar: char); override;
    class procedure Cut(const ACustomEdit: TCustomEdit); override;
    class procedure Copy(const ACustomEdit: TCustomEdit); override;
    class procedure Paste(const ACustomEdit: TCustomEdit); override;
    class procedure Undo(const ACustomEdit: TCustomEdit); override;
  end;

  { TQtWSCustomMemo }

  TQtWSCustomMemo = class(TWSCustomMemo)
  published
    class function CreateHandle(const AWinControl: TWinControl;
          const AParams: TCreateParams): HWND; override;
    class procedure AppendText(const ACustomMemo: TCustomMemo; const AText: string); override;
    class function GetStrings(const ACustomMemo: TCustomMemo): TStrings; override;
    class procedure SetAlignment(const ACustomEdit: TCustomEdit; const AAlignment: TAlignment); override;
    class procedure SetScrollbars(const ACustomMemo: TCustomMemo; const NewScrollbars: TScrollStyle); override;
    class procedure SetWantReturns(const ACustomMemo: TCustomMemo; const NewWantReturns: boolean); override;
    class procedure SetWantTabs(const ACustomMemo: TCustomMemo; const NewWantTabs: boolean); override;
    class procedure SetWordWrap(const ACustomMemo: TCustomMemo; const NewWordWrap: boolean); override;
  end;

  { TQtWSEdit }

  TQtWSEdit = class(TWSEdit)
  published
  end;

  { TQtWSMemo }

  TQtWSMemo = class(TWSMemo)
  published
  end;

  { TQtWSButtonControl }

  TQtWSButtonControl = class(TWSButtonControl)
  published
  end;

  { TQtWSButton }

  TQtWSButton = class(TWSButton)
  published
    class function  CreateHandle(const AWinControl: TWinControl; const AParams: TCreateParams): TLCLIntfHandle; override;
    class procedure SetDefault(const AButton: TCustomButton; ADefault: Boolean); override;
    class procedure SetShortcut(const AButton: TCustomButton; const OldShortcut, NewShortcut: TShortcut); override;
  end;

  { TQtWSCustomCheckBox }

  TQtWSCustomCheckBox = class(TWSCustomCheckBox)
  published
    class function  CreateHandle(const AWinControl: TWinControl;
      const AParams: TCreateParams): TLCLIntfHandle; override;

    class procedure SetShortCut(const ACustomCheckBox: TCustomCheckBox;
      const OldShortCut, NewShortCut: TShortCut); override;
    class procedure SetState(const ACustomCheckBox: TCustomCheckBox; const NewState: TCheckBoxState); override;

    class function RetrieveState(const ACustomCheckBox: TCustomCheckBox): TCheckBoxState; override;
  end;

  { TQtWSCheckBox }

  TQtWSCheckBox = class(TWSCheckBox)
  published
  end;

  { TQtWSToggleBox }

  TQtWSToggleBox = class(TWSToggleBox)
  published
    class function  CreateHandle(const AWinControl: TWinControl;
      const AParams: TCreateParams): TLCLIntfHandle; override;

    class procedure SetShortCut(const ACustomCheckBox: TCustomCheckBox;
      const OldShortCut, NewShortCut: TShortCut); override;
    class procedure SetState(const ACustomCheckBox: TCustomCheckBox; const NewState: TCheckBoxState); override;

    class function  RetrieveState(const ACustomCheckBox: TCustomCheckBox): TCheckBoxState; override;
  end;

  { TQtWSRadioButton }

  TQtWSRadioButton = class(TWSRadioButton)
  published
    class function  CreateHandle(const AWinControl: TWinControl;
      const AParams: TCreateParams): TLCLIntfHandle; override;

    class procedure SetShortCut(const ACustomCheckBox: TCustomCheckBox;
      const OldShortCut, NewShortCut: TShortCut); override;
    class procedure SetState(const ACustomCheckBox: TCustomCheckBox; const NewState: TCheckBoxState); override;

    class function RetrieveState(const ACustomCheckBox: TCustomCheckBox): TCheckBoxState; override;
  end;

  { TQtWSCustomStaticText }

  TQtWSCustomStaticText = class(TWSCustomStaticText)
  published
    class function CreateHandle(const AWinControl: TWinControl; const AParams: TCreateParams): TLCLIntfHandle; override;

    class procedure SetAlignment(const ACustomStaticText: TCustomStaticText; const NewAlignment: TAlignment); override;
    class procedure SetStaticBorderStyle(const ACustomStaticText: TCustomStaticText; const NewBorderStyle: TStaticBorderStyle); override;
  end;

  { TQtWSStaticText }

  TQtWSStaticText = class(TWSStaticText)
  published
  end;


implementation

const
  QtMaxEditLength = 32767;
  WordWrapMap: array[Boolean] of QTextEditLineWrapMode =
  (
    QTextEditNoWrap,
    QTextEditWidgetWidth
  );

  StaticBorderFrameShapeMap: array[TStaticBorderStyle] of QFrameShape =
  (
    QFrameNoFrame,
    QFrameStyledPanel,
    QFramePanel
  );

  StaticBorderFrameShadowMap: array[TStaticBorderStyle] of QFrameShadow =
  (
    QFramePlain,
    QFramePlain,
    QFrameSunken
  );



{ TQtWSScrollBar }

{------------------------------------------------------------------------------
  Method: TQtWSCustomScrollBar.CreateHandle
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSScrollBar.CreateHandle(const AWinControl: TWinControl; const AParams: TCreateParams): TLCLIntfHandle;
var
  QtScrollBar: TQtScrollBar;
begin
  QtScrollBar := TQtScrollBar.Create(AWinControl, AParams);

  QtScrollBar.AttachEvents;
  
  case TScrollBar(AWinControl).Kind of
    sbHorizontal: QtScrollBar.SetOrientation(QtHorizontal);
    sbVertical: QtScrollBar.SetOrientation(QtVertical);
  end;
  
  Result := TLCLIntfHandle(QtScrollbar);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomScrollBar.SetParams
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSScrollBar.SetParams(const AScrollBar: TCustomScrollBar);
var
  QtScrollBar: TQtScrollBar;
begin
  QtScrollBar := TQtScrollBar(AScrollBar.Handle);	

  QtScrollBar.BeginUpdate;
  try
    if (QtScrollBar.getMin <> AScrollBar.Min) or
      (QtScrollBar.getMax <> AScrollbar.Max) then
      QtScrollBar.setRange(AScrollBar.Min, AScrollBar.Max);
    if QtScrollBar.getPageStep <> AScrollBar.PageSize then
    begin
      QtScrollBar.setPageStep(AScrollBar.PageSize);
      QtScrollBar.setSingleStep((AScrollBar.PageSize div 6) + 1);
    end;
    if QtScrollbar.getValue <> AScrollBar.Position then
      QtScrollBar.setValue(AScrollBar.Position);

    case AScrollBar.Kind of
      sbHorizontal:
      begin
        if QtScrollBar.getOrientation <> QtHorizontal then
          QtScrollBar.SetOrientation(QtHorizontal);
        if QtScrollBar.getInvertedAppereance then
          QtScrollBar.setInvertedAppereance(False);
        if QtScrollbar.getInvertedControls then
          QtScrollBar.setInvertedControls(False);
      end;
      sbVertical:
      begin
        if QtScrollBar.getOrientation <> QtVertical then
          QtScrollBar.SetOrientation(QtVertical);
        if QtScrollBar.getInvertedAppereance then
          QtScrollBar.setInvertedAppereance(False);
        if not QtScrollbar.getInvertedControls then
          QtScrollBar.setInvertedControls(True);
      end;
    end;
  finally
    QtScrollbar.EndUpdate;
  end;
end;

class procedure TQtWSScrollBar.ShowHide(const AWinControl: TWinControl);
var
  Widget: TQtWidget;
begin
  if not WSCheckHandleAllocated(AWincontrol, 'ShowHide') then
    Exit;

  Widget := TQtWidget(AWinControl.Handle);

  {reapply params just before visible since slider isn't updated
   properly sometimes.}
  if AWinControl.HandleObjectShouldBeVisible then
    SetParams(TCustomScrollBar(AWinControl));

  Widget.BeginUpdate;
  Widget.setVisible(AWinControl.HandleObjectShouldBeVisible);
  Widget.EndUpdate;
end;

{ TQtWSCustomListBox }

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.CreateHandle
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomListBox.CreateHandle(const AWinControl: TWinControl; const AParams: TCreateParams): TLCLIntfHandle;
var
  QtListWidget: TQtListWidget;
  SelMode: QAbstractItemViewSelectionMode;
begin
  QtListWidget := TQtListWidget.Create(AWinControl, AParams);
  
  if TCustomListBox(AWinControl).MultiSelect then
    if TCustomListBox(AWinControl).ExtendedSelect then
      SelMode := QAbstractItemViewExtendedSelection
    else
      SelMode := QAbstractItemViewMultiSelection
  else
    SelMode := QAbstractItemViewSingleSelection;

  QtListWidget.setSelectionMode(SelMode);

  //Set BorderStyle according to the provided Params
  if (AParams.ExStyle and WS_EX_CLIENTEDGE) > 0 then
    QtListWidget.setFrameShape(QFrameStyledPanel)
  else
    QtListWidget.setFrameShape(QFrameNoFrame);

  QtListWidget.AttachEvents;
  
  // create our FList helper
  QtListWidget.FList := TQtListStrings.Create(AWinControl, QtListWidget);

  QtListWidget.OwnerDrawn := TCustomListBox(AWinControl).Style in [lbOwnerDrawFixed, lbOwnerDrawVariable];

  Result := TLCLIntfHandle(QtListWidget);
end;

class function TQtWSCustomListBox.GetIndexAtXY(
  const ACustomListBox: TCustomListBox; X, Y: integer): integer;
var
  APoint: TQtPoint;
begin
  APoint := QtPoint(X, Y);
  Result := TQtListWidget(ACustomListBox.Handle).indexAt(@APoint);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.GetSelCount
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomListBox.GetSelCount(const ACustomListBox: TCustomListBox): integer;
var
  QtListWidget: TQtListWidget;
begin
  QtListWidget := TQtListWidget(ACustomListBox.Handle);
  Result := QtListWidget.getSelCount;
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.GetSelected
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomListBox.GetSelected(const ACustomListBox: TCustomListBox; const AIndex: integer): boolean;
var
  QtListWidget: TQtListWidget;
  ListItem: QListWidgetItemH;
begin
  QtListWidget := TQtListWidget(ACustomListBox.Handle);
  ListItem := QtListWidget.getItem(AIndex);
  Result := QtListWidget.getItemSelected(ListItem);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.GetStrings
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomListBox.GetStrings(const ACustomListBox: TCustomListBox): TStrings;
var
  ListWidget: TQtListWidget;
begin
  ListWidget := TQtListWidget(ACustomListBox.Handle);
  if not Assigned(ListWidget.FList) then
    ListWidget.FList := TQtListStrings.Create(ACustomListBox, ListWidget);

  Result := ListWidget.FList;
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.GetItemIndex
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomListBox.GetItemIndex(const ACustomListBox: TCustomListBox): integer;
begin
  Result := TQtListWidget(ACustomListBox.Handle).currentRow;
end;

class function TQtWSCustomListBox.GetItemRect(
  const ACustomListBox: TCustomListBox; Index: integer; var ARect: TRect
  ): boolean;
var
  QtListWidget: TQtListWidget;
  Item: QListWidgetItemH;
begin
  QtListWidget := TQtListWidget(ACustomListBox.Handle);
  Item := QtListWidget.getItem(Index);
  Result := Item <> nil;
  if Result then
    ARect := QtListWidget.getVisualItemRect(Item)
  else
    ARect := Rect(-1,-1,-1,-1);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.GetTopIndex
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomListBox.GetTopIndex(const ACustomListBox: TCustomListBox): integer;
begin
  Result := 0;
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.SelectItem
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomListBox.SelectItem(const ACustomListBox: TCustomListBox;
  AIndex: integer; ASelected: boolean);
var
  QtListWidget: TQtListWidget;
  ListItem: QListWidgetItemH;
begin
  QtListWidget := TQtListWidget(ACustomListBox.Handle);
  ListItem := QtListWidget.getItem(AIndex);
  if ListItem <> nil then
    QtListWidget.setItemSelected(ListItem, ASelected);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.SetBorder
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomListBox.SetBorder(const ACustomListBox: TCustomListBox);
begin
  if not WSCheckHandleAllocated(ACustomListBox, 'SetBorder') then
    Exit;
  TQtWSWinControl.SetBorderStyle(ACustomListBox, ACustomListBox.BorderStyle);
end;

class procedure TQtWSCustomListBox.SetColumnCount(const ACustomListBox: TCustomListBox;
  ACount: Integer);
{var
  QtListWidget: TQtListWidget;
  AModel: QAbstractItemModelH;}
begin
  {$note implement TQtWSCustomListBox.SetColumnCount}
{  QtListWidget := TQtListWidget(ACustomListBox.Handle);
  AModel := QtListWidget.getModel;

  if QAbstractItemModel_columnCount(AModel) <> ACount then
    QAbstractItemModel_insertColumns(AModel, 0, ACount);
}
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.SetItemIndex
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomListBox.SetItemIndex(const ACustomListBox: TCustomListBox;
  const AIndex: integer);
begin
  TQtListWidget(ACustomListBox.Handle).setCurrentRow(AIndex);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.SetSelectionMode
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomListBox.SetSelectionMode(
  const ACustomListBox: TCustomListBox; const AExtendedSelect, AMultiSelect: boolean);
var
  QtListWidget: TQtListWidget;
  SelMode: QAbstractItemViewSelectionMode;
begin
  if not WSCheckHandleAllocated(ACustomListBox, 'SetSelectionMode') then
    Exit;
  QtListWidget := TQtListWidget(ACustomListBox.Handle);

  if AMultiSelect then
    if AExtendedSelect then
      SelMode := QAbstractItemViewExtendedSelection
    else
      SelMode := QAbstractItemViewMultiSelection
  else
    SelMode := QAbstractItemViewSingleSelection;

  QtListWidget.setSelectionMode(SelMode);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.SetSorted
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomListBox.SetSorted(const ACustomListBox: TCustomListBox;
  AList: TStrings; ASorted: boolean);
begin
  TQtListStrings(AList).Sorted := ASorted;
end;

class procedure TQtWSCustomListBox.SetStyle(const ACustomListBox: TCustomListBox);
begin
  TQtListWidget(ACustomListBox.Handle).OwnerDrawn :=
    ACustomListBox.Style in [lbOwnerDrawFixed, lbOwnerDrawVariable];
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomListBox.SetTopIndex
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomListBox.SetTopIndex(const ACustomListBox: TCustomListBox;
  const NewTopIndex: integer);
begin
  TQtListWidget(ACustomListBox.Handle).scrollToItem(NewTopIndex,
    QAbstractItemViewPositionAtTop);
end;

{ TQtWSCustomMemo }

{------------------------------------------------------------------------------
  Method: TQtWSCustomMemo.CreateHandle
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomMemo.CreateHandle(const AWinControl: TWinControl;
  const AParams: TCreateParams): HWND;
var
  QtTextEdit: TQtTextEdit;
begin
  QtTextEdit := TQtTextEdit.Create(AWinControl, AParams);
  QtTextEdit.ClearText;
  QtTextEdit.setBorder(TCustomMemo(AWinControl).BorderStyle = bsSingle);
  QtTextEdit.setReadOnly(TCustomMemo(AWinControl).ReadOnly);
  QtTextEdit.setLineWrapMode(WordWrapMap[TCustomMemo(AWinControl).WordWrap]);
  // create our FList helper
  QtTextEdit.FList := TQtMemoStrings.Create(TCustomMemo(AWinControl));
  QtTextEdit.setScrollStyle(TCustomMemo(AWinControl).ScrollBars);
  QtTextEdit.setTabChangesFocus(not TCustomMemo(AWinControl).WantTabs);

  QtTextEdit.AttachEvents;

  Result := TLCLIntfHandle(QtTextEdit);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomMemo.AppendText
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomMemo.AppendText(const ACustomMemo: TCustomMemo; const AText: string);
var
  AStr: WideString;
begin
  if not WSCheckHandleAllocated(ACustomMemo, 'AppendText') or (Length(AText) = 0) then
    Exit;
  AStr := GetUtf8String(AText);
  TQtTextEdit(ACustomMemo.Handle).BeginUpdate;
  TQtTextEdit(ACustomMemo.Handle).Append(AStr);
  TQtTextEdit(ACustomMemo.Handle).EndUpdate;
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomMemo.GetStrings
  Params:  None
  Returns: Memo Contents as TStrings
 ------------------------------------------------------------------------------}
class function TQtWSCustomMemo.GetStrings(const ACustomMemo: TCustomMemo): TStrings;
begin
  if not WSCheckHandleAllocated(ACustomMemo, 'GetStrings') then
    Exit;
  if not Assigned(TQtTextEdit(ACustomMemo.Handle).FList) then
    TQtTextEdit(ACustomMemo.Handle).FList := TQtMemoStrings.Create(ACustomMemo);
  
  Result := TQtTextEdit(ACustomMemo.Handle).FList;
end;

class procedure TQtWSCustomMemo.SetAlignment(const ACustomEdit: TCustomEdit;
  const AAlignment: TAlignment);
begin
  if not WSCheckHandleAllocated(ACustomEdit, 'SetAlignment') then
    Exit;
  TQtTextEdit(ACustomEdit.Handle).setAlignment(AlignmentMap[AAlignment]);
end;

class procedure TQtWSCustomMemo.SetScrollbars(const ACustomMemo: TCustomMemo;
  const NewScrollbars: TScrollStyle);
begin
  if not WSCheckHandleAllocated(ACustomMemo, 'SetScrollBars') then
    Exit;
  TQtTextEdit(ACustomMemo.Handle).setScrollStyle(NewScrollBars);
end;

class procedure TQtWSCustomMemo.SetWantReturns(const ACustomMemo: TCustomMemo;
  const NewWantReturns: boolean);
begin
  if not WSCheckHandleAllocated(ACustomMemo, 'SetWantReturns') then
    Exit;
  with TQtTextEdit(ACustomMemo.Handle) do
  begin
    if NewWantReturns then
      KeysToEat := KeysToEat - [VK_RETURN]
    else
      KeysToEat := KeysToEat + [VK_RETURN];
  end;
end;

class procedure TQtWSCustomMemo.SetWantTabs(const ACustomMemo: TCustomMemo;
  const NewWantTabs: boolean);
begin
  if not WSCheckHandleAllocated(ACustomMemo, 'SetWantTabs') then
    Exit;
  with TQtTextEdit(ACustomMemo.Handle) do
  begin
    setTabChangesFocus(not NewWantTabs);
    if NewWantTabs then
      KeysToEat := KeysToEat - [VK_TAB]
    else
      KeysToEat := KeysToEat + [VK_TAB];
  end;
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomMemo.SetWordWrap
  Params:  NewWordWrap boolean
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomMemo.SetWordWrap(const ACustomMemo: TCustomMemo; const NewWordWrap: boolean);
begin
  if not WSCheckHandleAllocated(ACustomMemo, 'SetWordWrap') then
    Exit;
  TQtTextEdit(ACustomMemo.Handle).setLineWrapMode(WordWrapMap[NewWordWrap]);
end;

{ TQtWSCustomEdit }

{------------------------------------------------------------------------------
  Method: TQtWSCustomEdit.CreateHandle
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomEdit.CreateHandle(const AWinControl: TWinControl;
  const AParams: TCreateParams): HWND;
var
  QtLineEdit: TQtLineEdit;
begin
  QtLineEdit := TQtLineEdit.Create(AWinControl, AParams);
  QtLineEdit.setBorder(TCustomEdit(AWinControl).BorderStyle = bsSingle);
  QtLineEdit.setAlignment(AlignmentMap[TCustomEdit(AWinControl).Alignment]);
  QtLineEdit.AttachEvents;

  Result := TLCLIntfHandle(QtLineEdit);
end;

class procedure TQtWSCustomEdit.SetAlignment(const ACustomEdit: TCustomEdit;
  const AAlignment: TAlignment);
begin
  if not WSCheckHandleAllocated(ACustomEdit, 'SetAlignment') then
    Exit;
  TQtLineEdit(ACustomEdit.Handle).setAlignment(AlignmentMap[AAlignment]);
end;

class function TQtWSCustomEdit.GetCaretPos(const ACustomEdit: TCustomEdit
  ): TPoint;
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  Result := Point(0,0);
  if not WSCheckHandleAllocated(ACustomEdit, 'GetCaretPos') then
    Exit;
  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    Result.X := QtEdit.getCursorPosition;
end;

class function TQtWSCustomEdit.GetCanUndo(const ACustomEdit: TCustomEdit): Boolean;
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  Result := False;
  if not WSCheckHandleAllocated(ACustomEdit, 'GetCanUndo') then
    Exit;
  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    Result := QtEdit.isUndoAvailable;
end;

class procedure TQtWSCustomEdit.SetCaretPos(const ACustomEdit: TCustomEdit;
  const NewPos: TPoint);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  if not WSCheckHandleAllocated(ACustomEdit, 'SetCaretPos') then
    Exit;
  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.setCursorPosition(NewPos.X);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomEdit.SetEchoMode
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomEdit.SetEchoMode(const ACustomEdit: TCustomEdit; NewMode: TEchoMode);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  if not WSCheckHandleAllocated(ACustomEdit, 'SetEchoMode') then
    Exit;

  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.setEchoMode(QLineEditEchoMode(Ord(NewMode)));
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomEdit.SetMaxLength
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomEdit.SetMaxLength(const ACustomEdit: TCustomEdit; NewLength: integer);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
  MaxLength: Integer;
begin
  if not WSCheckHandleAllocated(ACustomEdit, 'SetMaxLength') then
    Exit;

  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
  begin
    // qt doesn't accept -1
    MaxLength := QtEdit.getMaxLength;
    if (NewLength <= 0) or (NewLength > QtMaxEditLength) then
      NewLength := QtMaxEditLength;
    if NewLength <> MaxLength then
      QtEdit.setMaxLength(NewLength);
  end;
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomEdit.SetReadOnly
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomEdit.SetReadOnly(const ACustomEdit: TCustomEdit; NewReadOnly: boolean);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  if not WSCheckHandleAllocated(ACustomEdit, 'SetReadOnly') then
    Exit;

  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.setReadOnly(NewReadOnly);
end;

class function TQtWSCustomEdit.GetSelStart(const ACustomEdit: TCustomEdit): integer;
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  Result := 0;
  if not WSCheckHandleAllocated(ACustomEdit, 'GetSelStart') then
    Exit;

  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    Result := QtEdit.getSelectionStart;
end;

class function TQtWSCustomEdit.GetSelLength(const ACustomEdit: TCustomEdit): integer;
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  Result := 0;
  if not WSCheckHandleAllocated(ACustomEdit, 'GetSelLength') then
    Exit;

  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    Result := QtEdit.getSelectionLength;
end;

class procedure TQtWSCustomEdit.SetSelStart(const ACustomEdit: TCustomEdit;
  NewStart: integer);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
  ALength: Integer;
begin
  if not WSCheckHandleAllocated(ACustomEdit, 'SetSelStart') then
    Exit;

  Widget := TQtWidget(ACustomEdit.Handle);
  ALength := GetSelLength(ACustomEdit);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.setSelection(NewStart, ALength);
end;

class procedure TQtWSCustomEdit.SetSelLength(const ACustomEdit: TCustomEdit;
  NewLength: integer);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
  AStart: Integer;
begin
  if not WSCheckHandleAllocated(ACustomEdit, 'SetSelLength') then
    Exit;

  Widget := TQtWidget(ACustomEdit.Handle);
  AStart := GetSelStart(ACustomEdit);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.setSelection(AStart, NewLength);
end;

class procedure TQtWSCustomEdit.Cut(const ACustomEdit: TCustomEdit);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.Cut;
end;

class procedure TQtWSCustomEdit.Copy(const ACustomEdit: TCustomEdit);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.Copy;
end;

class procedure TQtWSCustomEdit.Paste(const ACustomEdit: TCustomEdit);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.Paste;
end;

class procedure TQtWSCustomEdit.Undo(const ACustomEdit: TCustomEdit);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  if not WSCheckHandleAllocated(ACustomEdit, 'Undo') then
    Exit;
  Widget := TQtWidget(ACustomEdit.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.Undo;
end;

{ TQtWSStaticText }

{------------------------------------------------------------------------------
  Method: TQtWSCustomStaticText.CreateHandle
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomStaticText.CreateHandle(const AWinControl: TWinControl;
  const AParams: TCreateParams): TLCLIntfHandle;
var
  QtStaticText: TQtStaticText;
begin
  QtStaticText := TQtStaticText.Create(AWinControl, AParams);
  QtStaticText.AttachEvents;
  
  QtStaticText.setAlignment(AlignmentMap[TCustomStaticText(AWinControl).Alignment]);
  QtStaticText.setFrameShape(StaticBorderFrameShapeMap[TCustomStaticText(AWinControl).BorderStyle]);
  QtStaticText.setFrameShadow(StaticBorderFrameShadowMap[TCustomStaticText(AWinControl).BorderStyle]);

  // Returns the Handle
  Result := TLCLIntfHandle(QtStaticText);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomStaticText.SetAlignment
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomStaticText.SetAlignment(
  const ACustomStaticText: TCustomStaticText; const NewAlignment: TAlignment);
begin
  TQtStaticText(ACustomStaticText.Handle).setAlignment(AlignmentMap[NewAlignment]);
end;

class procedure TQtWSCustomStaticText.SetStaticBorderStyle(
  const ACustomStaticText: TCustomStaticText;
  const NewBorderStyle: TStaticBorderStyle);
begin
  TQtStaticText(ACustomStaticText.Handle).setFrameShape(StaticBorderFrameShapeMap[NewBorderStyle]);
  TQtStaticText(ACustomStaticText.Handle).setFrameShadow(StaticBorderFrameShadowMap[NewBorderStyle]);
end;

{ TQtWSButton }

{------------------------------------------------------------------------------
  Function: TQtWSButton.CreateHandle
  Params:  None
  Returns: Nothing

  Allocates memory and resources for the control and shows it
 ------------------------------------------------------------------------------}
class function TQtWSButton.CreateHandle(const AWinControl: TWinControl;
  const AParams: TCreateParams): TLCLIntfHandle;
var
  QtPushButton: TQtPushButton;
begin
  QtPushButton := TQtPushButton.Create(AWinControl, AParams);
  QtPushButton.AttachEvents;

  // Returns the Handle
  Result := TLCLIntfHandle(QtPushButton);
end;

class procedure TQtWSButton.SetDefault(const AButton: TCustomButton;
  ADefault: Boolean);
var
  QtPushButton: TQtPushButton;
begin
  if not WSCheckHandleAllocated(AButton, 'SetDefault') then Exit;
  QtPushButton := TQtPushButton(AButton.Handle);
  QtPushButton.SetDefault(ADefault);
end;

class procedure TQtWSButton.SetShortcut(const AButton: TCustomButton;
  const OldShortcut, NewShortcut: TShortcut);
begin
  if not WSCheckHandleAllocated(AButton, 'SetShortcut') then Exit;
  
  TQtPushButton(AButton.Handle).setShortcut(NewShortcut);
end;

{ TQtWSCustomCheckBox }

{------------------------------------------------------------------------------
  Method: TQtWSCustomCheckBox.RetrieveState
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSCustomCheckBox.RetrieveState(const ACustomCheckBox: TCustomCheckBox): TCheckBoxState;
begin
  case TQtCheckBox(ACustomCheckBox.Handle).CheckState of
    QtPartiallyChecked: Result := cbGrayed;
    QtChecked: Result := cbChecked;
  else
    Result := cbUnchecked;
  end;
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomCheckBox.SetShortCut
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomCheckBox.SetShortCut(const ACustomCheckBox: TCustomCheckBox;
  const OldShortCut, NewShortCut: TShortCut);
begin
  if not WSCheckHandleAllocated(ACustomCheckBox, 'SetShortcut') then Exit;

  TQtCheckBox(ACustomCheckBox.Handle).setShortcut(NewShortcut);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomCheckBox.SetState
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomCheckBox.SetState(const ACustomCheckBox: TCustomCheckBox; const NewState: TCheckBoxState);
var
  QtCheckBox: TQtCheckBox;
begin
  //enclose the call between Begin/EndUpdate to avoid send LM_CHANGE message
  QtCheckBox := TQtCheckBox(ACustomCheckBox.Handle);
  QtCheckBox.BeginUpdate;
  case NewState of
    cbGrayed: QtCheckBox.setCheckState(QtPartiallyChecked);
    cbChecked: QtCheckBox.setCheckState(QtChecked);
  else
    QtCheckBox.setCheckState(QtUnchecked);
  end;
  QtCheckBox.EndUpdate;
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomCheckBox.CreateHandle
  Params:  None
  Returns: Nothing

  Allocates memory and resources for the control and shows it
 ------------------------------------------------------------------------------}
class function TQtWSCustomCheckBox.CreateHandle(const AWinControl: TWinControl; const AParams: TCreateParams): TLCLIntfHandle;
var
  QtCheckBox: TQtCheckBox;
begin
  QtCheckBox := TQtCheckBox.Create(AWinControl, AParams);
  QtCheckBox.AttachEvents;

  Result := TLCLIntfHandle(QtCheckBox);
end;

{ TQtWSRadioButton }

{------------------------------------------------------------------------------
  Method: TQtWSRadioButton.RetrieveState
  Params:  None
  Returns: The state of the control
 ------------------------------------------------------------------------------}
class function TQtWSRadioButton.RetrieveState(const ACustomCheckBox: TCustomCheckBox): TCheckBoxState;
begin
  if TQtRadioButton(ACustomCheckBox.Handle).isChecked then
    Result := cbChecked
  else
    Result := cbUnchecked;
end;

{------------------------------------------------------------------------------
  Method: TQtWSRadioButton.SetShortCut
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSRadioButton.SetShortCut(const ACustomCheckBox: TCustomCheckBox;
  const OldShortCut, NewShortCut: TShortCut);
begin
  TQtRadioButton(ACustomCheckBox.Handle).setShortcut(NewShortCut);
end;

{------------------------------------------------------------------------------
  Method: TQtWSRadioButton.SetState
  Params:  None
  Returns: Nothing

  Sets the state of the control
 ------------------------------------------------------------------------------}
class procedure TQtWSRadioButton.SetState(const ACustomCheckBox: TCustomCheckBox; const NewState: TCheckBoxState);
var
  QtRadioButton: TQtRadioButton;
begin
  //enclose the call between Begin/EndUpdate to avoid send LM_CHANGE message
  QtRadioButton := TQtRadioButton(ACustomCheckBox.Handle);
  QtRadioButton.BeginUpdate;
  QtRadioButton.setChecked(NewState = cbChecked);
  QtRadioButton.EndUpdate;
end;

{------------------------------------------------------------------------------
  Method: TQtWSRadioButton.CreateHandle
  Params:  None
  Returns: Nothing

  Allocates memory and resources for the control and shows it
 ------------------------------------------------------------------------------}
class function TQtWSRadioButton.CreateHandle(const AWinControl: TWinControl;
  const AParams: TCreateParams): TLCLIntfHandle;
var
  QtRadioButton: TQtRadioButton;
begin
  QtRadioButton := TQtRadioButton.Create(AWinControl, AParams);
  QtRadioButton.AttachEvents;

  Result := TLCLIntfHandle(QtRadioButton);
end;

{ TQtWSCustomGroupBox }

{------------------------------------------------------------------------------
  Method: TQtWSCustomGroupBox.CreateHandle
  Params:  None
  Returns: Nothing

  Allocates memory and resources for the control and shows it
 ------------------------------------------------------------------------------}
class function TQtWSCustomGroupBox.CreateHandle(const AWinControl: TWinControl;
  const AParams: TCreateParams): TLCLIntfHandle;
var
  QtGroupBox: TQtGroupBox;
begin
  QtGroupBox := TQtGroupBox.Create(AWinControl, AParams);
  QtGroupBox.AttachEvents;

  Result := TLCLIntfHandle(QtGroupBox);
end;

class function TQtWSCustomGroupBox.GetDefaultClientRect(
  const AWinControl: TWinControl; const aLeft, aTop, aWidth, aHeight: integer;
  var aClientRect: TRect): boolean;
var
  dx, dy: integer;
begin
  Result:=false;
  if AWinControl.HandleAllocated then
  begin
  end else
  begin
    dx := QStyle_pixelMetric(QApplication_style(), QStylePM_LayoutLeftMargin) +
          QStyle_pixelMetric(QApplication_style(), QStylePM_LayoutRightMargin);
    dy := QStyle_pixelMetric(QApplication_style(), QStylePM_LayoutTopMargin) +
          QStyle_pixelMetric(QApplication_style(), QStylePM_LayoutBottomMargin);

    aClientRect:=Rect(0,0,
                 Max(0, aWidth - dx),
                 Max(0, aHeight - dy));
    Result:=true;
  end;
end;

{ TQtWSCustomComboBox }

{------------------------------------------------------------------------------
  Method: TQtWSCustomComboBox.CreateHandle
  Params:  None
  Returns: Nothing

  Allocates memory and resources for the control and shows it
 ------------------------------------------------------------------------------}
class function TQtWSCustomComboBox.CreateHandle(const AWinControl: TWinControl;
  const AParams: TCreateParams): TLCLIntfHandle;
var
  QtComboBox: TQtComboBox;
  ItemIndex: Integer;
  Text: String;
begin
  QtComboBox := TQtComboBox.Create(AWinControl, AParams);

  // create our FList helper
  QtComboBox.FList := TQtComboStrings.Create(AWinControl, QtComboBox);
  QtComboBox.setMaxVisibleItems(TCustomComboBox(AWinControl).DropDownCount);

  // load combo data imediatelly and set LCLs itemIndex and Text otherwise
  // qt will set itemindex to 0 if lcl itemindex = -1.
  ItemIndex := TCustomComboBox(AWinControl).ItemIndex;
  Text := TCustomComboBox(AWinControl).Text;
  QtComboBox.FList.Assign(TCustomComboBox(AWinControl).Items);
  QtComboBox.setCurrentIndex(ItemIndex);
  QtComboBox.setText(GetUTF8String(Text));
  QtComboBox.setEditable(AParams.Style and CBS_DROPDOWN <> 0);

  QtComboBox.AttachEvents;
  QtComboBox.OwnerDrawn := (AParams.Style and CBS_OWNERDRAWFIXED <> 0) or
    (AParams.Style and CBS_OWNERDRAWVARIABLE <> 0);

  Result := TLCLIntfHandle(QtComboBox);
end;

class function TQtWSCustomComboBox.GetDroppedDown(
  const ACustomComboBox: TCustomComboBox): Boolean;
var
  QtComboBox: TQtComboBox;
begin
  Result := False;
  if not ACustomComboBox.HandleAllocated then
    exit;
  QtComboBox := TQtComboBox(ACustomComboBox.Handle);
  Result := QtComboBox.getDroppedDown;
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomComboBox.GetItemIndex
  Params:  None
  Returns: The state of the control
 ------------------------------------------------------------------------------}
class function TQtWSCustomComboBox.GetItemIndex(
  const ACustomComboBox: TCustomComboBox): integer;
var
  QtComboBox: TQtComboBox;
  WStr: WideString;
  i: Integer;
begin
  Result := -1;
  if not WSCheckHandleAllocated(ACustomComboBox, 'GetItemIndex') then
    Exit;
  QtComboBox := TQtComboBox(ACustomComboBox.Handle);
  if QtComboBox.getEditable then
  begin
    WStr := QtComboBox.getText;
    i := QComboBox_findText(QComboBoxH(QtComboBox.Widget), @WStr);
    Result := i;
  end else
    Result := TQtComboBox(ACustomComboBox.Handle).currentIndex;
end;

class function TQtWSCustomComboBox.GetMaxLength(
  const ACustomComboBox: TCustomComboBox): integer;
var
  LineEdit: TQtLineEdit;
begin
  LineEdit := TQtComboBox(ACustomComboBox.Handle).LineEdit;
  if LineEdit <> nil then
  begin
    Result := LineEdit.getMaxLength;
    if Result = QtMaxEditLength then
      Result := 0;
  end
  else
    Result := 0;
end;

{------------------------------------------------------------------------------
  Set's the size of a TComboBox when autosized
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomComboBox.GetPreferredSize(
  const AWinControl: TWinControl; var PreferredWidth, PreferredHeight: integer;
  WithThemeSpace: Boolean);
begin
  if AWinControl.HandleAllocated then
    TQtWidget(AWinControl.Handle).PreferredSize(PreferredWidth,
      PreferredHeight, WithThemeSpace);

  // The correct behavior for the LCL is not forcing any specific value for
  // TComboBox.Width, so we set it to zero to signal that here
  PreferredWidth := 0;
end;

class function TQtWSCustomComboBox.GetSelStart(const ACustomComboBox: TCustomComboBox): integer;
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  Result := 0;
  if not WSCheckHandleAllocated(ACustomComboBox, 'GetSelStart') then
    Exit;

  Widget := TQtWidget(ACustomComboBox.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    Result := QtEdit.getSelectionStart;
end;

class function TQtWSCustomComboBox.GetSelLength(const ACustomComboBox: TCustomComboBox): integer;
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
begin
  Result := 0;
  if not WSCheckHandleAllocated(ACustomComboBox, 'GetSelLength') then
    Exit;

  Widget := TQtWidget(ACustomComboBox.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
    Result := QtEdit.getSelectionLength;
end;

class procedure TQtWSCustomComboBox.SetSelStart(const ACustomComboBox: TCustomComboBox;
   NewStart: integer);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
  ALength: Integer;
begin
  if not WSCheckHandleAllocated(ACustomComboBox, 'SetSelStart') then
    Exit;

  Widget := TQtWidget(ACustomComboBox.Handle);
  ALength := GetSelLength(ACustomComboBox);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.setSelection(NewStart, ALength);
end;

class procedure TQtWSCustomComboBox.SetSelLength(
  const ACustomComboBox: TCustomComboBox; NewLength: integer);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
  AStart: Integer;
begin
  if not WSCheckHandleAllocated(ACustomComboBox, 'SetSelLength') then
    Exit;

  Widget := TQtWidget(ACustomComboBox.Handle);
  AStart := GetSelStart(ACustomComboBox);
  if Supports(Widget, IQtEdit, QtEdit) then
    QtEdit.setSelection(AStart, NewLength);
end;

class procedure TQtWSCustomComboBox.SetArrowKeysTraverseList(
  const ACustomComboBox: TCustomComboBox; NewTraverseList: boolean);
begin
  {$note implement TQtWSCustomComboBox.SetArrowKeysTraverseList}
end;

class procedure TQtWSCustomComboBox.SetDropDownCount(
  const ACustomComboBox: TCustomComboBox; NewCount: Integer);
begin
  TQtComboBox(ACustomComboBox.Handle).setMaxVisibleItems(NewCount);
end;

class procedure TQtWSCustomComboBox.SetDroppedDown(
  const ACustomComboBox: TCustomComboBox; ADroppedDown: Boolean);
var
  QtComboBox: TQtComboBox;
begin
  QtComboBox := TQtComboBox(ACustomComboBox.Handle);
  QtComboBox.setDroppedDown(ADroppedDown);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomComboBox.SetItemIndex
  Params:  None
  Returns: The state of the control
 ------------------------------------------------------------------------------}
class procedure TQtWSCustomComboBox.SetItemIndex(const ACustomComboBox: TCustomComboBox; NewIndex: integer);
begin
  TQtComboBox(ACustomComboBox.Handle).setCurrentIndex(NewIndex);
end;

class procedure TQtWSCustomComboBox.SetMaxLength(
  const ACustomComboBox: TCustomComboBox; NewLength: integer);
var
  Widget: TQtWidget;
  QtEdit: IQtEdit;
  MaxLength: Integer;
begin
  if not WSCheckHandleAllocated(ACustomComboBox, 'SetMaxLength') then
    Exit;

  Widget := TQtWidget(ACustomComboBox.Handle);
  if Supports(Widget, IQtEdit, QtEdit) then
  begin
    // qt doesn't accept -1
    MaxLength := QtEdit.getMaxLength;
    if (NewLength <= 0) or (NewLength > QtMaxEditLength) then
      NewLength := QtMaxEditLength;
    if NewLength <> MaxLength then
      QtEdit.setMaxLength(NewLength);
  end;
end;

class procedure TQtWSCustomComboBox.SetStyle(
  const ACustomComboBox: TCustomComboBox; NewStyle: TComboBoxStyle);
begin
  TQtComboBox(ACustomComboBox.Handle).setEditable(NewStyle = csDropDown);
  TQtComboBox(ACustomComboBox.Handle).OwnerDrawn := NewStyle in
                                                   [csOwnerDrawFixed,
                                                    csOwnerDrawVariable];
  // TODO: implement styles: csSimple
  inherited SetStyle(ACustomComboBox, NewStyle);
end;

{------------------------------------------------------------------------------
  Method: TQtWSCustomComboBox.GetItems
  Params:  None
  Returns: ComboBox items
 ------------------------------------------------------------------------------}
class function TQtWSCustomComboBox.GetItems(const ACustomComboBox: TCustomComboBox): TStrings;
var
  ComboBox: TQtComboBox;
begin
  ComboBox := TQtComboBox(ACustomComboBox.Handle);
  if not Assigned(ComboBox.FList) then
  begin
    ComboBox.BeginUpdate;
    ComboBox.FList := TQtComboStrings.Create(ACustomComboBox, ComboBox);
    ComboBox.EndUpdate;
  end;
  Result := ComboBox.FList;
end;

class procedure TQtWSCustomComboBox.Sort(
  const ACustomComboBox: TCustomComboBox; AList: TStrings; IsSorted: boolean);
begin
  TQtComboStrings(AList).Sorted := IsSorted;
end;


{ TQtWSToggleBox }

{------------------------------------------------------------------------------
  Method: TQtWSToggleBox.RetrieveState
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class function TQtWSToggleBox.RetrieveState(const ACustomCheckBox: TCustomCheckBox): TCheckBoxState;
begin
  if not WSCheckHandleAllocated(ACustomCheckBox, 'RetrieveState') then
    Exit;
  if TQtToggleBox(ACustomCheckBox.Handle).isChecked then
    Result := cbChecked
  else
    Result := cbUnChecked;
end;

{------------------------------------------------------------------------------
  Method: TQtWSToggleBox.SetShortCut
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSToggleBox.SetShortCut(const ACustomCheckBox: TCustomCheckBox;
  const OldShortCut, NewShortCut: TShortCut);
begin
  if not WSCheckHandleAllocated(ACustomCheckBox, 'SetShortCut') then
    Exit;
  TQtToggleBox(ACustomCheckBox.Handle).setShortcut(NewShortCut);
end;

{------------------------------------------------------------------------------
  Method: TQtWSToggleBox.SetState
  Params:  None
  Returns: Nothing
 ------------------------------------------------------------------------------}
class procedure TQtWSToggleBox.SetState(const ACustomCheckBox: TCustomCheckBox; const NewState: TCheckBoxState);
begin
  if not WSCheckHandleAllocated(ACustomCheckBox, 'SetState') then
    Exit;
  TQtToggleBox(ACustomCheckBox.Handle).BeginUpdate;
  TQtToggleBox(ACustomCheckBox.Handle).setChecked(NewState = cbChecked);
  TQtToggleBox(ACustomCheckBox.Handle).EndUpdate;
end;

{------------------------------------------------------------------------------
  Method: TQtWSToggleBox.CreateHandle
  Params:  None
  Returns: Nothing

  Allocates memory and resources for the control and shows it
 ------------------------------------------------------------------------------}
class function TQtWSToggleBox.CreateHandle(const AWinControl: TWinControl; const AParams: TCreateParams): TLCLIntfHandle;
var
  QtToggleBox: TQtToggleBox;
begin
  QtToggleBox := TQtToggleBox.Create(AWinControl, AParams);
  QtToggleBox.setCheckable(True);
  QtToggleBox.AttachEvents;
  
  Result := TLCLIntfHandle(QtToggleBox);
end;

end.
