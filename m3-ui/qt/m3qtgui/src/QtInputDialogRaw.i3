(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtInputDialogRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QInputDialog0 *>
PROCEDURE New_QInputDialog0 (parent: ADDRESS; flags: C.int; ):
  QInputDialog;

<* EXTERNAL New_QInputDialog1 *>
PROCEDURE New_QInputDialog1 (parent: ADDRESS; ): QInputDialog;

<* EXTERNAL New_QInputDialog2 *>
PROCEDURE New_QInputDialog2 (): QInputDialog;

<* EXTERNAL Delete_QInputDialog *>
PROCEDURE Delete_QInputDialog (self: QInputDialog; );

<* EXTERNAL QInputDialog_setInputMode *>
PROCEDURE QInputDialog_setInputMode (self: QInputDialog; mode: C.int; );

<* EXTERNAL QInputDialog_inputMode *>
PROCEDURE QInputDialog_inputMode (self: QInputDialog; ): C.int;

<* EXTERNAL QInputDialog_setLabelText *>
PROCEDURE QInputDialog_setLabelText (self: QInputDialog; text: ADDRESS; );

<* EXTERNAL QInputDialog_labelText *>
PROCEDURE QInputDialog_labelText (self: QInputDialog; ): ADDRESS;

<* EXTERNAL QInputDialog_setOption *>
PROCEDURE QInputDialog_setOption
  (self: QInputDialog; option: C.int; on: BOOLEAN; );

<* EXTERNAL QInputDialog_setOption1 *>
PROCEDURE QInputDialog_setOption1 (self: QInputDialog; option: C.int; );

<* EXTERNAL QInputDialog_testOption *>
PROCEDURE QInputDialog_testOption (self: QInputDialog; option: C.int; ):
  BOOLEAN;

<* EXTERNAL QInputDialog_setOptions *>
PROCEDURE QInputDialog_setOptions (self: QInputDialog; options: C.int; );

<* EXTERNAL QInputDialog_options *>
PROCEDURE QInputDialog_options (self: QInputDialog; ): C.int;

<* EXTERNAL QInputDialog_setTextValue *>
PROCEDURE QInputDialog_setTextValue (self: QInputDialog; text: ADDRESS; );

<* EXTERNAL QInputDialog_textValue *>
PROCEDURE QInputDialog_textValue (self: QInputDialog; ): ADDRESS;

<* EXTERNAL QInputDialog_setTextEchoMode *>
PROCEDURE QInputDialog_setTextEchoMode (self: QInputDialog; mode: C.int; );

<* EXTERNAL QInputDialog_textEchoMode *>
PROCEDURE QInputDialog_textEchoMode (self: QInputDialog; ): C.int;

<* EXTERNAL QInputDialog_setComboBoxEditable *>
PROCEDURE QInputDialog_setComboBoxEditable
  (self: QInputDialog; editable: BOOLEAN; );

<* EXTERNAL QInputDialog_isComboBoxEditable *>
PROCEDURE QInputDialog_isComboBoxEditable (self: QInputDialog; ): BOOLEAN;

<* EXTERNAL QInputDialog_setComboBoxItems *>
PROCEDURE QInputDialog_setComboBoxItems
  (self: QInputDialog; items: ADDRESS; );

<* EXTERNAL QInputDialog_comboBoxItems *>
PROCEDURE QInputDialog_comboBoxItems (self: QInputDialog; ): ADDRESS;

<* EXTERNAL QInputDialog_setIntValue *>
PROCEDURE QInputDialog_setIntValue (self: QInputDialog; value: C.int; );

<* EXTERNAL QInputDialog_intValue *>
PROCEDURE QInputDialog_intValue (self: QInputDialog; ): C.int;

<* EXTERNAL QInputDialog_setIntMinimum *>
PROCEDURE QInputDialog_setIntMinimum (self: QInputDialog; min: C.int; );

<* EXTERNAL QInputDialog_intMinimum *>
PROCEDURE QInputDialog_intMinimum (self: QInputDialog; ): C.int;

<* EXTERNAL QInputDialog_setIntMaximum *>
PROCEDURE QInputDialog_setIntMaximum (self: QInputDialog; max: C.int; );

<* EXTERNAL QInputDialog_intMaximum *>
PROCEDURE QInputDialog_intMaximum (self: QInputDialog; ): C.int;

<* EXTERNAL QInputDialog_setIntRange *>
PROCEDURE QInputDialog_setIntRange (self: QInputDialog; min, max: C.int; );

<* EXTERNAL QInputDialog_setIntStep *>
PROCEDURE QInputDialog_setIntStep (self: QInputDialog; step: C.int; );

<* EXTERNAL QInputDialog_intStep *>
PROCEDURE QInputDialog_intStep (self: QInputDialog; ): C.int;

<* EXTERNAL QInputDialog_setDoubleValue *>
PROCEDURE QInputDialog_setDoubleValue
  (self: QInputDialog; value: C.double; );

<* EXTERNAL QInputDialog_doubleValue *>
PROCEDURE QInputDialog_doubleValue (self: QInputDialog; ): C.double;

<* EXTERNAL QInputDialog_setDoubleMinimum *>
PROCEDURE QInputDialog_setDoubleMinimum
  (self: QInputDialog; min: C.double; );

<* EXTERNAL QInputDialog_doubleMinimum *>
PROCEDURE QInputDialog_doubleMinimum (self: QInputDialog; ): C.double;

<* EXTERNAL QInputDialog_setDoubleMaximum *>
PROCEDURE QInputDialog_setDoubleMaximum
  (self: QInputDialog; max: C.double; );

<* EXTERNAL QInputDialog_doubleMaximum *>
PROCEDURE QInputDialog_doubleMaximum (self: QInputDialog; ): C.double;

<* EXTERNAL QInputDialog_setDoubleRange *>
PROCEDURE QInputDialog_setDoubleRange
  (self: QInputDialog; min, max: C.double; );

<* EXTERNAL QInputDialog_setDoubleDecimals *>
PROCEDURE QInputDialog_setDoubleDecimals
  (self: QInputDialog; decimals: C.int; );

<* EXTERNAL QInputDialog_doubleDecimals *>
PROCEDURE QInputDialog_doubleDecimals (self: QInputDialog; ): C.int;

<* EXTERNAL QInputDialog_setOkButtonText *>
PROCEDURE QInputDialog_setOkButtonText
  (self: QInputDialog; text: ADDRESS; );

<* EXTERNAL QInputDialog_okButtonText *>
PROCEDURE QInputDialog_okButtonText (self: QInputDialog; ): ADDRESS;

<* EXTERNAL QInputDialog_setCancelButtonText *>
PROCEDURE QInputDialog_setCancelButtonText
  (self: QInputDialog; text: ADDRESS; );

<* EXTERNAL QInputDialog_cancelButtonText *>
PROCEDURE QInputDialog_cancelButtonText (self: QInputDialog; ): ADDRESS;

<* EXTERNAL QInputDialog_open0_0 *>
PROCEDURE QInputDialog_open0_0 (self: QInputDialog; );

<* EXTERNAL QInputDialog_open1 *>
PROCEDURE QInputDialog_open1
  (self: QInputDialog; receiver: ADDRESS; member: C.char_star; );

<* EXTERNAL QInputDialog_minimumSizeHint *>
PROCEDURE QInputDialog_minimumSizeHint (self: QInputDialog; ): ADDRESS;

<* EXTERNAL QInputDialog_sizeHint *>
PROCEDURE QInputDialog_sizeHint (self: QInputDialog; ): ADDRESS;

<* EXTERNAL QInputDialog_setVisible *>
PROCEDURE QInputDialog_setVisible (self: QInputDialog; visible: BOOLEAN; );

<* EXTERNAL GetText *>
PROCEDURE GetText (    parent, title, label: ADDRESS;
                       echo                : C.int;
                       text                : ADDRESS;
                   VAR ok                  : BOOLEAN;
                       flags               : C.int;   ): ADDRESS;

<* EXTERNAL GetText1 *>
PROCEDURE GetText1 (    parent, title, label: ADDRESS;
                        echo                : C.int;
                        text                : ADDRESS;
                    VAR ok                  : BOOLEAN; ): ADDRESS;

<* EXTERNAL GetText2 *>
PROCEDURE GetText2
  (parent, title, label: ADDRESS; echo: C.int; text: ADDRESS; ): ADDRESS;

<* EXTERNAL GetText3 *>
PROCEDURE GetText3 (parent, title, label: ADDRESS; echo: C.int; ): ADDRESS;

<* EXTERNAL GetText4 *>
PROCEDURE GetText4 (parent, title, label: ADDRESS; ): ADDRESS;

<* EXTERNAL GetItem *>
PROCEDURE GetItem (    parent, title, label, items: ADDRESS;
                       current                    : C.int;
                       editable                   : BOOLEAN;
                   VAR ok                         : BOOLEAN;
                       flags                      : C.int;   ): ADDRESS;

<* EXTERNAL GetItem1 *>
PROCEDURE GetItem1 (    parent, title, label, items: ADDRESS;
                        current                    : C.int;
                        editable                   : BOOLEAN;
                    VAR ok                         : BOOLEAN; ): ADDRESS;

<* EXTERNAL GetItem2 *>
PROCEDURE GetItem2 (parent, title, label, items: ADDRESS;
                    current                    : C.int;
                    editable                   : BOOLEAN; ): ADDRESS;

<* EXTERNAL GetItem3 *>
PROCEDURE GetItem3
  (parent, title, label, items: ADDRESS; current: C.int; ): ADDRESS;

<* EXTERNAL GetItem4 *>
PROCEDURE GetItem4 (parent, title, label, items: ADDRESS; ): ADDRESS;

<* EXTERNAL GetText5 *>
PROCEDURE GetText5 (    parent, title, label   : ADDRESS;
                        echo                   : C.int;
                        text                   : ADDRESS;
                    VAR ok                     : BOOLEAN;
                        flags, inputMethodHints: C.int;   ): ADDRESS;

<* EXTERNAL GetItem5 *>
PROCEDURE GetItem5 (    parent, title, label, items: ADDRESS;
                        current                    : C.int;
                        editable                   : BOOLEAN;
                    VAR ok                         : BOOLEAN;
                        flags, inputMethodHints    : C.int;   ): ADDRESS;

<* EXTERNAL GetInt *>
PROCEDURE GetInt (    parent, title, label           : ADDRESS;
                      value, minValue, maxValue, step: C.int;
                  VAR ok                             : BOOLEAN;
                      flags                          : C.int;   ): C.int;

<* EXTERNAL GetInt1 *>
PROCEDURE GetInt1 (    parent, title, label           : ADDRESS;
                       value, minValue, maxValue, step: C.int;
                   VAR ok                             : BOOLEAN; ): C.int;

<* EXTERNAL GetInt2 *>
PROCEDURE GetInt2 (parent, title, label           : ADDRESS;
                   value, minValue, maxValue, step: C.int;   ): C.int;

<* EXTERNAL GetInt3 *>
PROCEDURE GetInt3
  (parent, title, label: ADDRESS; value, minValue, maxValue: C.int; ):
  C.int;

<* EXTERNAL GetInt4 *>
PROCEDURE GetInt4
  (parent, title, label: ADDRESS; value, minValue: C.int; ): C.int;

<* EXTERNAL GetInt5 *>
PROCEDURE GetInt5 (parent, title, label: ADDRESS; value: C.int; ): C.int;

<* EXTERNAL GetInt6 *>
PROCEDURE GetInt6 (parent, title, label: ADDRESS; ): C.int;

<* EXTERNAL GetDouble *>
PROCEDURE GetDouble (    parent, title, label     : ADDRESS;
                         value, minValue, maxValue: C.double;
                         decimals                 : C.int;
                     VAR ok                       : BOOLEAN;
                         flags                    : C.int;    ): C.double;

<* EXTERNAL GetDouble1 *>
PROCEDURE GetDouble1 (    parent, title, label     : ADDRESS;
                          value, minValue, maxValue: C.double;
                          decimals                 : C.int;
                      VAR ok                       : BOOLEAN;  ): C.double;

<* EXTERNAL GetDouble2 *>
PROCEDURE GetDouble2 (parent, title, label     : ADDRESS;
                      value, minValue, maxValue: C.double;
                      decimals                 : C.int;    ): C.double;

<* EXTERNAL GetDouble3 *>
PROCEDURE GetDouble3
  (parent, title, label: ADDRESS; value, minValue, maxValue: C.double; ):
  C.double;

<* EXTERNAL GetDouble4 *>
PROCEDURE GetDouble4
  (parent, title, label: ADDRESS; value, minValue: C.double; ): C.double;

<* EXTERNAL GetDouble5 *>
PROCEDURE GetDouble5 (parent, title, label: ADDRESS; value: C.double; ):
  C.double;

<* EXTERNAL GetDouble6 *>
PROCEDURE GetDouble6 (parent, title, label: ADDRESS; ): C.double;

<* EXTERNAL GetInteger *>
PROCEDURE GetInteger (    parent, title, label           : ADDRESS;
                          value, minValue, maxValue, step: C.int;
                      VAR ok                             : BOOLEAN;
                          flags                          : C.int;   ):
  C.int;

<* EXTERNAL GetInteger1 *>
PROCEDURE GetInteger1 (    parent, title, label           : ADDRESS;
                           value, minValue, maxValue, step: C.int;
                       VAR ok                             : BOOLEAN; ):
  C.int;

<* EXTERNAL GetInteger2 *>
PROCEDURE GetInteger2 (parent, title, label           : ADDRESS;
                       value, minValue, maxValue, step: C.int;   ): C.int;

<* EXTERNAL GetInteger3 *>
PROCEDURE GetInteger3
  (parent, title, label: ADDRESS; value, minValue, maxValue: C.int; ):
  C.int;

<* EXTERNAL GetInteger4 *>
PROCEDURE GetInteger4
  (parent, title, label: ADDRESS; value, minValue: C.int; ): C.int;

<* EXTERNAL GetInteger5 *>
PROCEDURE GetInteger5 (parent, title, label: ADDRESS; value: C.int; ):
  C.int;

<* EXTERNAL GetInteger6 *>
PROCEDURE GetInteger6 (parent, title, label: ADDRESS; ): C.int;

<* EXTERNAL QInputDialog_done *>
PROCEDURE QInputDialog_done (self: QInputDialog; result: C.int; );

TYPE QInputDialog = ADDRESS;

END QtInputDialogRaw.
