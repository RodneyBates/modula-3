(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtBoxLayout;

FROM QtLayoutItem IMPORT QLayoutItem, QSpacerItem;
FROM QtSize IMPORT QSize;
FROM QtLayout IMPORT QLayout;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT AlignmentFlag, Orientations;
FROM QtRect IMPORT QRect;


TYPE T = QBoxLayout;


CONST                            (* Enum Direction *)
  LeftToRight = 0;
  RightToLeft = 1;
  TopToBottom = 2;
  BottomToTop = 3;
  Down        = 2;
  Up          = 3;

TYPE                             (* Enum Direction *)
  Direction = [0 .. 3];

TYPE
  QBoxLayout <: QBoxLayoutPublic;
  QBoxLayoutPublic = QLayout BRANDED OBJECT
                     METHODS
                       init_0 (arg1: Direction; parent: QWidget; ):
                               QBoxLayout;
                       init_1        (arg1: Direction; ): QBoxLayout;
                       direction     (): Direction;
                       setDirection  (arg1: Direction; );
                       addSpacing    (size: INTEGER; );
                       addStretch    (stretch: INTEGER; );
                       addStretch1   ();
                       addSpacerItem (spacerItem: QSpacerItem; );
                       addWidget (arg1     : QWidget;
                                  stretch  : INTEGER;
                                  alignment: AlignmentFlag; );
                       addWidget1    (arg1: QWidget; stretch: INTEGER; );
                       addWidget2    (arg1: QWidget; );
                       addLayout     (layout: QLayout; stretch: INTEGER; );
                       addLayout1    (layout: QLayout; );
                       addStrut      (arg1: INTEGER; );
                       addItem       (arg1: QLayoutItem; ); (* virtual *)
                       insertSpacing (index, size: INTEGER; );
                       insertStretch (index, stretch: INTEGER; );
                       insertStretch1 (index: INTEGER; );
                       insertSpacerItem (index     : INTEGER;
                                         spacerItem: QSpacerItem; );
                       insertWidget (index    : INTEGER;
                                     widget   : QWidget;
                                     stretch  : INTEGER;
                                     alignment: AlignmentFlag; );
                       insertWidget1 (index  : INTEGER;
                                      widget : QWidget;
                                      stretch: INTEGER; );
                       insertWidget2 (index: INTEGER; widget: QWidget; );
                       insertLayout (index  : INTEGER;
                                     layout : QLayout;
                                     stretch: INTEGER; );
                       insertLayout1 (index: INTEGER; layout: QLayout; );
                       spacing       (): INTEGER;
                       setSpacing    (spacing: INTEGER; );
                       setStretchFactor (w: QWidget; stretch: INTEGER; ):
                                         BOOLEAN;
                       setStretchFactor1 (l: QLayout; stretch: INTEGER; ):
                                          BOOLEAN;
                       setStretch        (index, stretch: INTEGER; );
                       stretch           (index: INTEGER; ): INTEGER;
                       sizeHint          (): QSize; (* virtual *)
                       minimumSize       (): QSize; (* virtual *)
                       maximumSize       (): QSize; (* virtual *)
                       hasHeightForWidth (): BOOLEAN; (* virtual *)
                       heightForWidth (arg1: INTEGER; ):
                                       INTEGER; (* virtual *)
                       minimumHeightForWidth (arg1: INTEGER; ):
                                              INTEGER; (* virtual *)
                       expandingDirections (): Orientations; (* virtual *)
                       invalidate          (); (* virtual *)
                       itemAt (arg1: INTEGER; ): QLayoutItem; (* virtual *)
                       takeAt (arg1: INTEGER; ): QLayoutItem; (* virtual *)
                       count  (): INTEGER; (* virtual *)
                       setGeometry (arg1: QRect; ); (* virtual *)
                       destroyCxx  ();
                     END;

  QHBoxLayout <: QHBoxLayoutPublic;
  QHBoxLayoutPublic = QBoxLayout BRANDED OBJECT
                      METHODS
                        init_0     (): QHBoxLayout;
                        init_1     (parent: QWidget; ): QHBoxLayout;
                        destroyCxx ();
                      END;

  QVBoxLayout <: QVBoxLayoutPublic;
  QVBoxLayoutPublic = QBoxLayout BRANDED OBJECT
                      METHODS
                        init_0     (): QVBoxLayout;
                        init_1     (parent: QWidget; ): QVBoxLayout;
                        destroyCxx ();
                      END;


END QtBoxLayout.
