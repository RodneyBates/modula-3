(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtAbstractScrollAreaRaw;




IMPORT Ctypes AS C;


<* EXTERNAL New_QAbstractScrollArea0 *>
PROCEDURE New_QAbstractScrollArea0 (parent: ADDRESS; ):
  QAbstractScrollArea;

<* EXTERNAL New_QAbstractScrollArea1 *>
PROCEDURE New_QAbstractScrollArea1 (): QAbstractScrollArea;

<* EXTERNAL Delete_QAbstractScrollArea *>
PROCEDURE Delete_QAbstractScrollArea (self: QAbstractScrollArea; );

<* EXTERNAL QAbstractScrollArea_verticalScrollBarPolicy *>
PROCEDURE QAbstractScrollArea_verticalScrollBarPolicy
  (self: QAbstractScrollArea; ): C.int;

<* EXTERNAL QAbstractScrollArea_setVerticalScrollBarPolicy *>
PROCEDURE QAbstractScrollArea_setVerticalScrollBarPolicy
  (self: QAbstractScrollArea; arg2: C.int; );

<* EXTERNAL QAbstractScrollArea_verticalScrollBar *>
PROCEDURE QAbstractScrollArea_verticalScrollBar
  (self: QAbstractScrollArea; ): ADDRESS;

<* EXTERNAL QAbstractScrollArea_setVerticalScrollBar *>
PROCEDURE QAbstractScrollArea_setVerticalScrollBar
  (self: QAbstractScrollArea; scrollbar: ADDRESS; );

<* EXTERNAL QAbstractScrollArea_horizontalScrollBarPolicy *>
PROCEDURE QAbstractScrollArea_horizontalScrollBarPolicy
  (self: QAbstractScrollArea; ): C.int;

<* EXTERNAL QAbstractScrollArea_setHorizontalScrollBarPolicy *>
PROCEDURE QAbstractScrollArea_setHorizontalScrollBarPolicy
  (self: QAbstractScrollArea; arg2: C.int; );

<* EXTERNAL QAbstractScrollArea_horizontalScrollBar *>
PROCEDURE QAbstractScrollArea_horizontalScrollBar
  (self: QAbstractScrollArea; ): ADDRESS;

<* EXTERNAL QAbstractScrollArea_setHorizontalScrollBar *>
PROCEDURE QAbstractScrollArea_setHorizontalScrollBar
  (self: QAbstractScrollArea; scrollbar: ADDRESS; );

<* EXTERNAL QAbstractScrollArea_cornerWidget *>
PROCEDURE QAbstractScrollArea_cornerWidget (self: QAbstractScrollArea; ):
  ADDRESS;

<* EXTERNAL QAbstractScrollArea_setCornerWidget *>
PROCEDURE QAbstractScrollArea_setCornerWidget
  (self: QAbstractScrollArea; widget: ADDRESS; );

<* EXTERNAL QAbstractScrollArea_addScrollBarWidget *>
PROCEDURE QAbstractScrollArea_addScrollBarWidget
  (self: QAbstractScrollArea; widget: ADDRESS; alignment: C.int; );

<* EXTERNAL QAbstractScrollArea_scrollBarWidgets *>
PROCEDURE QAbstractScrollArea_scrollBarWidgets
  (self: QAbstractScrollArea; alignment: C.int; ): ADDRESS;

<* EXTERNAL QAbstractScrollArea_viewport *>
PROCEDURE QAbstractScrollArea_viewport (self: QAbstractScrollArea; ):
  ADDRESS;

<* EXTERNAL QAbstractScrollArea_setViewport *>
PROCEDURE QAbstractScrollArea_setViewport
  (self: QAbstractScrollArea; widget: ADDRESS; );

<* EXTERNAL QAbstractScrollArea_maximumViewportSize *>
PROCEDURE QAbstractScrollArea_maximumViewportSize
  (self: QAbstractScrollArea; ): ADDRESS;

<* EXTERNAL QAbstractScrollArea_minimumSizeHint *>
PROCEDURE QAbstractScrollArea_minimumSizeHint
  (self: QAbstractScrollArea; ): ADDRESS;

<* EXTERNAL QAbstractScrollArea_sizeHint *>
PROCEDURE QAbstractScrollArea_sizeHint (self: QAbstractScrollArea; ):
  ADDRESS;

TYPE QAbstractScrollArea = ADDRESS;

END QtAbstractScrollAreaRaw.
