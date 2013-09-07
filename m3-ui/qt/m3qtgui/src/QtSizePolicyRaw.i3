(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtSizePolicyRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QSizePolicy0 *>
PROCEDURE New_QSizePolicy0 (): QSizePolicy;

<* EXTERNAL New_QSizePolicy1 *>
PROCEDURE New_QSizePolicy1 (horizontal, vertical: C.int; ): QSizePolicy;

<* EXTERNAL New_QSizePolicy2 *>
PROCEDURE New_QSizePolicy2 (horizontal, vertical, type: C.int; ):
  QSizePolicy;

<* EXTERNAL QSizePolicy_horizontalPolicy *>
PROCEDURE QSizePolicy_horizontalPolicy (self: QSizePolicy; ): C.int;

<* EXTERNAL QSizePolicy_verticalPolicy *>
PROCEDURE QSizePolicy_verticalPolicy (self: QSizePolicy; ): C.int;

<* EXTERNAL QSizePolicy_controlType *>
PROCEDURE QSizePolicy_controlType (self: QSizePolicy; ): C.int;

<* EXTERNAL QSizePolicy_setHorizontalPolicy *>
PROCEDURE QSizePolicy_setHorizontalPolicy (self: QSizePolicy; d: C.int; );

<* EXTERNAL QSizePolicy_setVerticalPolicy *>
PROCEDURE QSizePolicy_setVerticalPolicy (self: QSizePolicy; d: C.int; );

<* EXTERNAL QSizePolicy_setControlType *>
PROCEDURE QSizePolicy_setControlType (self: QSizePolicy; type: C.int; );

<* EXTERNAL QSizePolicy_expandingDirections *>
PROCEDURE QSizePolicy_expandingDirections (self: QSizePolicy; ): C.int;

<* EXTERNAL QSizePolicy_setHeightForWidth *>
PROCEDURE QSizePolicy_setHeightForWidth (self: QSizePolicy; b: BOOLEAN; );

<* EXTERNAL QSizePolicy_hasHeightForWidth *>
PROCEDURE QSizePolicy_hasHeightForWidth (self: QSizePolicy; ): BOOLEAN;

<* EXTERNAL QSizePolicy_setWidthForHeight *>
PROCEDURE QSizePolicy_setWidthForHeight (self: QSizePolicy; b: BOOLEAN; );

<* EXTERNAL QSizePolicy_hasWidthForHeight *>
PROCEDURE QSizePolicy_hasWidthForHeight (self: QSizePolicy; ): BOOLEAN;

<* EXTERNAL QSizePolicy_horizontalStretch *>
PROCEDURE QSizePolicy_horizontalStretch (self: QSizePolicy; ): C.int;

<* EXTERNAL QSizePolicy_verticalStretch *>
PROCEDURE QSizePolicy_verticalStretch (self: QSizePolicy; ): C.int;

<* EXTERNAL QSizePolicy_setHorizontalStretch *>
PROCEDURE QSizePolicy_setHorizontalStretch
  (self: QSizePolicy; stretchFactor: C.unsigned_char; );

<* EXTERNAL QSizePolicy_setVerticalStretch *>
PROCEDURE QSizePolicy_setVerticalStretch
  (self: QSizePolicy; stretchFactor: C.unsigned_char; );

<* EXTERNAL QSizePolicy_transpose *>
PROCEDURE QSizePolicy_transpose (self: QSizePolicy; );

<* EXTERNAL Delete_QSizePolicy *>
PROCEDURE Delete_QSizePolicy (self: QSizePolicy; );

TYPE QSizePolicy <: ADDRESS;

END QtSizePolicyRaw.
