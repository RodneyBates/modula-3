(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtApplication;

FROM QtFontMetrics IMPORT QFontMetrics;
FROM QtIcon IMPORT QIcon;
FROM QtSize IMPORT QSize;
FROM QtFont IMPORT QFont;
FROM QtStyle IMPORT QStyle;
FROM QtPalette IMPORT QPalette;
FROM QtCursor IMPORT QCursor;
FROM QtWidget IMPORT QWidget;
FROM QtPoint IMPORT QPoint;
FROM QtInputContext IMPORT QInputContext;
FROM QtNamespace IMPORT MouseButtonFlags, UIEffect, KeyboardModifierFlags,
                        LayoutDirection;


TYPE T = QApplication;


TYPE                             (* Enum Type *)
  Type = {Tty, GuiClient, GuiServer};
PROCEDURE AppType (): Type;

PROCEDURE Style (): QStyle;

PROCEDURE SetStyle (arg1: QStyle; );

PROCEDURE SetStyle1 (arg1: TEXT; ): QStyle;


CONST                            (* Enum ColorSpec *)
  NormalColor = 0;
  CustomColor = 1;
  ManyColor   = 2;

TYPE                             (* Enum ColorSpec *)
  ColorSpec = [0 .. 2];
PROCEDURE GetColorSpec (): INTEGER;

PROCEDURE SetColorSpec (arg1: INTEGER; );

PROCEDURE SetGraphicsSystem (arg1: TEXT; );

PROCEDURE OverrideCursor (): QCursor;

PROCEDURE SetOverrideCursor (arg1: QCursor; );

PROCEDURE ChangeOverrideCursor (arg1: QCursor; );

PROCEDURE RestoreOverrideCursor ();

PROCEDURE Palette (): QPalette;

PROCEDURE Palette1 (arg1: QWidget; ): QPalette;

PROCEDURE Palette2 (className: TEXT; ): QPalette;

PROCEDURE SetPalette (arg1: QPalette; className: TEXT; );

PROCEDURE SetPalette1 (arg1: QPalette; );

PROCEDURE Font (): QFont;

PROCEDURE Font1 (arg1: QWidget; ): QFont;

PROCEDURE Font2 (className: TEXT; ): QFont;

PROCEDURE SetFont (arg1: QFont; className: TEXT; );

PROCEDURE SetFont1 (arg1: QFont; );

PROCEDURE FontMetrics (): QFontMetrics;

PROCEDURE SetWindowIcon (icon: QIcon; );

PROCEDURE WindowIcon (): QIcon;

PROCEDURE ActivePopupWidget (): QWidget;

PROCEDURE ActiveModalWidget (): QWidget;

PROCEDURE FocusWidget (): QWidget;

PROCEDURE ActiveWindow (): QWidget;

PROCEDURE SetActiveWindow (act: QWidget; );

PROCEDURE WidgetAt (p: QPoint; ): QWidget;

PROCEDURE WidgetAt1 (x, y: INTEGER; ): QWidget;

PROCEDURE TopLevelAt (p: QPoint; ): QWidget;

PROCEDURE TopLevelAt1 (x, y: INTEGER; ): QWidget;

PROCEDURE SyncX ();

PROCEDURE Beep ();

PROCEDURE Alert (widget: QWidget; duration: INTEGER; );

PROCEDURE Alert1 (widget: QWidget; );

PROCEDURE KeyboardModifiers (): KeyboardModifierFlags;

PROCEDURE QueryKeyboardModifiers (): KeyboardModifierFlags;

PROCEDURE MouseButtons (): MouseButtonFlags;

PROCEDURE SetDesktopSettingsAware (arg1: BOOLEAN; );

PROCEDURE DesktopSettingsAware (): BOOLEAN;

PROCEDURE SetCursorFlashTime (arg1: INTEGER; );

PROCEDURE CursorFlashTime (): INTEGER;

PROCEDURE SetDoubleClickInterval (arg1: INTEGER; );

PROCEDURE DoubleClickInterval (): INTEGER;

PROCEDURE SetKeyboardInputInterval (arg1: INTEGER; );

PROCEDURE KeyboardInputInterval (): INTEGER;

PROCEDURE SetWheelScrollLines (arg1: INTEGER; );

PROCEDURE WheelScrollLines (): INTEGER;

PROCEDURE SetGlobalStrut (arg1: QSize; );

PROCEDURE GlobalStrut (): QSize;

PROCEDURE SetStartDragTime (ms: INTEGER; );

PROCEDURE StartDragTime (): INTEGER;

PROCEDURE SetStartDragDistance (l: INTEGER; );

PROCEDURE StartDragDistance (): INTEGER;

PROCEDURE SetLayoutDirection (direction: LayoutDirection; );

PROCEDURE AppLayoutDirection (): LayoutDirection;

PROCEDURE IsRightToLeft (): BOOLEAN;

PROCEDURE IsLeftToRight (): BOOLEAN;

PROCEDURE IsEffectEnabled (arg1: UIEffect; ): BOOLEAN;

PROCEDURE SetEffectEnabled (arg1: UIEffect; enable: BOOLEAN; );

PROCEDURE SetEffectEnabled1 (arg1: UIEffect; );

PROCEDURE KeyboardInputDirection (): LayoutDirection;

PROCEDURE Exec (): INTEGER;

PROCEDURE SetQuitOnLastWindowClosed (quit: BOOLEAN; );

PROCEDURE QuitOnLastWindowClosed (): BOOLEAN;

PROCEDURE CloseAllWindows ();

PROCEDURE AboutQt ();


TYPE
  QApplication <: QApplicationPublic;
  QApplicationPublic = BRANDED OBJECT
                         cxxObj: ADDRESS;
                       METHODS
                         init_0 (         argc: INTEGER;
                                 READONLY argv: ARRAY OF TEXT;
                                          arg3: INTEGER;       ):
                                 QApplication;
                         init_1 (         argc: INTEGER;
                                 READONLY argv: ARRAY OF TEXT; ):
                                 QApplication;
                         init_2 (         argc      : INTEGER;
                                 READONLY argv      : ARRAY OF TEXT;
                                          GUIenabled: BOOLEAN;
                                          arg4      : INTEGER;       ):
                                 QApplication;
                         init_3 (         argc      : INTEGER;
                                 READONLY argv      : ARRAY OF TEXT;
                                          GUIenabled: BOOLEAN;       ):
                                 QApplication;
                         init_4 (         argc: INTEGER;
                                 READONLY argv: ARRAY OF TEXT;
                                          arg3: Type;
                                          arg4: INTEGER;       ):
                                 QApplication;
                         init_5 (         argc: INTEGER;
                                 READONLY argv: ARRAY OF TEXT;
                                          arg3: Type;          ):
                                 QApplication;
                         isSessionRestored (): BOOLEAN;
                         sessionId         (): TEXT;
                         sessionKey        (): TEXT;
                         setInputContext   (arg1: QInputContext; );
                         inputContext      (): QInputContext;
                         styleSheet        (): TEXT;
                         setStyleSheet     (sheet: TEXT; );
                         setAutoSipEnabled (enabled: BOOLEAN; );
                         autoSipEnabled    (): BOOLEAN;
                         destroyCxx        ();
                       END;


END QtApplication.
