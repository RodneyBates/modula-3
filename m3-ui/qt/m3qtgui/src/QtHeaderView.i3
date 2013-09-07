(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtHeaderView;

FROM QtSize IMPORT QSize;
FROM QtAbstractItemModel IMPORT QAbstractItemModel;
FROM QtPoint IMPORT QPoint;
FROM QtNamespace IMPORT Orientation, AlignmentFlag, SortOrder;


FROM QtAbstractItemView IMPORT QAbstractItemView;

TYPE T = QHeaderView;


CONST                            (* Enum ResizeMode *)
  Interactive      = 0;
  Stretch          = 1;
  Fixed            = 2;
  ResizeToContents = 3;
  Custom           = 2;

TYPE                             (* Enum ResizeMode *)
  ResizeMode = [0 .. 3];

TYPE
  QHeaderView <: QHeaderViewPublic;
  QHeaderViewPublic =
    QAbstractItemView BRANDED OBJECT
    METHODS
      setModel                (model: QAbstractItemModel; ); (* virtual *)
      orientation             (): Orientation;
      offset                  (): INTEGER;
      length                  (): INTEGER;
      sizeHint                (): QSize; (* virtual *)
      sectionSizeHint         (logicalIndex: INTEGER; ): INTEGER;
      visualIndexAt           (position: INTEGER; ): INTEGER;
      logicalIndexAt          (position: INTEGER; ): INTEGER;
      logicalIndexAt1         (x, y: INTEGER; ): INTEGER;
      logicalIndexAt2         (pos: QPoint; ): INTEGER;
      sectionSize             (logicalIndex: INTEGER; ): INTEGER;
      sectionPosition         (logicalIndex: INTEGER; ): INTEGER;
      sectionViewportPosition (logicalIndex: INTEGER; ): INTEGER;
      moveSection             (from, to: INTEGER; );
      swapSections            (first, second: INTEGER; );
      resizeSection           (logicalIndex, size: INTEGER; );
      resizeSections          (mode: ResizeMode; );
      isSectionHidden         (logicalIndex: INTEGER; ): BOOLEAN;
      setSectionHidden        (logicalIndex: INTEGER; hide: BOOLEAN; );
      hiddenSectionCount      (): INTEGER;
      hideSection             (logicalIndex: INTEGER; );
      showSection             (logicalIndex: INTEGER; );
      count                   (): INTEGER;
      visualIndex             (logicalIndex: INTEGER; ): INTEGER;
      logicalIndex            (visualIndex: INTEGER; ): INTEGER;
      setMovable              (movable: BOOLEAN; );
      isMovable               (): BOOLEAN;
      setClickable            (clickable: BOOLEAN; );
      isClickable             (): BOOLEAN;
      setHighlightSections    (highlight: BOOLEAN; );
      highlightSections       (): BOOLEAN;
      setResizeMode           (mode: ResizeMode; );
      setResizeMode1          (logicalIndex: INTEGER; mode: ResizeMode; );
      resizeMode              (logicalIndex: INTEGER; ): ResizeMode;
      stretchSectionCount     (): INTEGER;
      setSortIndicatorShown   (show: BOOLEAN; );
      isSortIndicatorShown    (): BOOLEAN;
      setSortIndicator        (logicalIndex: INTEGER; order: SortOrder; );
      sortIndicatorSection    (): INTEGER;
      sortIndicatorOrder      (): SortOrder;
      stretchLastSection      (): BOOLEAN;
      setStretchLastSection   (stretch: BOOLEAN; );
      cascadingSectionResizes (): BOOLEAN;
      setCascadingSectionResizes (enable: BOOLEAN; );
      defaultSectionSize         (): INTEGER;
      setDefaultSectionSize      (size: INTEGER; );
      minimumSectionSize         (): INTEGER;
      setMinimumSectionSize      (size: INTEGER; );
      defaultAlignment           (): AlignmentFlag;
      setDefaultAlignment        (alignment: AlignmentFlag; );
      doItemsLayout              (); (* virtual *)
      sectionsMoved              (): BOOLEAN;
      sectionsHidden             (): BOOLEAN;
      reset                      (); (* virtual *)
      setOffset                  (offset: INTEGER; );
      setOffsetToSectionPosition (visualIndex: INTEGER; );
      setOffsetToLastSection     ();
      headerDataChanged (orientation              : Orientation;
                         logicalFirst, logicalLast: INTEGER;     );
      destroyCxx ();
    END;


END QtHeaderView.
