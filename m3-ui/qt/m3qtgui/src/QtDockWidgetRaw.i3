(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtDockWidgetRaw;




IMPORT Ctypes AS C;


<* EXTERNAL New_QDockWidget0 *>
PROCEDURE New_QDockWidget0 (title, parent: ADDRESS; flags: C.int; ):
  QDockWidget;

<* EXTERNAL New_QDockWidget1 *>
PROCEDURE New_QDockWidget1 (title, parent: ADDRESS; ): QDockWidget;

<* EXTERNAL New_QDockWidget2 *>
PROCEDURE New_QDockWidget2 (title: ADDRESS; ): QDockWidget;

<* EXTERNAL New_QDockWidget3 *>
PROCEDURE New_QDockWidget3 (parent: ADDRESS; flags: C.int; ): QDockWidget;

<* EXTERNAL New_QDockWidget4 *>
PROCEDURE New_QDockWidget4 (parent: ADDRESS; ): QDockWidget;

<* EXTERNAL New_QDockWidget5 *>
PROCEDURE New_QDockWidget5 (): QDockWidget;

<* EXTERNAL Delete_QDockWidget *>
PROCEDURE Delete_QDockWidget (self: QDockWidget; );

<* EXTERNAL QDockWidget_widget *>
PROCEDURE QDockWidget_widget (self: QDockWidget; ): ADDRESS;

<* EXTERNAL QDockWidget_setWidget *>
PROCEDURE QDockWidget_setWidget (self: QDockWidget; widget: ADDRESS; );

<* EXTERNAL QDockWidget_setFeatures *>
PROCEDURE QDockWidget_setFeatures (self: QDockWidget; features: C.int; );

<* EXTERNAL QDockWidget_features *>
PROCEDURE QDockWidget_features (self: QDockWidget; ): C.int;

<* EXTERNAL QDockWidget_setFloating *>
PROCEDURE QDockWidget_setFloating (self: QDockWidget; floating: BOOLEAN; );

<* EXTERNAL QDockWidget_isFloating *>
PROCEDURE QDockWidget_isFloating (self: QDockWidget; ): BOOLEAN;

<* EXTERNAL QDockWidget_setAllowedAreas *>
PROCEDURE QDockWidget_setAllowedAreas (self: QDockWidget; areas: C.int; );

<* EXTERNAL QDockWidget_allowedAreas *>
PROCEDURE QDockWidget_allowedAreas (self: QDockWidget; ): C.int;

<* EXTERNAL QDockWidget_setTitleBarWidget *>
PROCEDURE QDockWidget_setTitleBarWidget
  (self: QDockWidget; widget: ADDRESS; );

<* EXTERNAL QDockWidget_titleBarWidget *>
PROCEDURE QDockWidget_titleBarWidget (self: QDockWidget; ): ADDRESS;

<* EXTERNAL QDockWidget_isAreaAllowed *>
PROCEDURE QDockWidget_isAreaAllowed (self: QDockWidget; area: C.int; ):
  BOOLEAN;

<* EXTERNAL QDockWidget_toggleViewAction *>
PROCEDURE QDockWidget_toggleViewAction (self: QDockWidget; ): ADDRESS;

TYPE QDockWidget = ADDRESS;

END QtDockWidgetRaw.
