(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtSlider;


IMPORT QtSliderRaw;
FROM QtSize IMPORT QSize;
FROM QtEvent IMPORT QEvent;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT Orientation;


IMPORT WeakRef;

PROCEDURE New_QSlider0 (self: QSlider; parent: QWidget; ): QSlider =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtSliderRaw.New_QSlider0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QSlider);

    RETURN self;
  END New_QSlider0;

PROCEDURE New_QSlider1 (self: QSlider; ): QSlider =
  VAR result: ADDRESS;
  BEGIN
    result := QtSliderRaw.New_QSlider1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QSlider);

    RETURN self;
  END New_QSlider1;

PROCEDURE New_QSlider2
  (self: QSlider; orientation: Orientation; parent: QWidget; ): QSlider =
  VAR
    result : ADDRESS;
    arg2tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtSliderRaw.New_QSlider2(ORD(orientation), arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QSlider);

    RETURN self;
  END New_QSlider2;

PROCEDURE New_QSlider3 (self: QSlider; orientation: Orientation; ):
  QSlider =
  VAR result: ADDRESS;
  BEGIN
    result := QtSliderRaw.New_QSlider3(ORD(orientation));

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QSlider);

    RETURN self;
  END New_QSlider3;

PROCEDURE Delete_QSlider (self: QSlider; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtSliderRaw.Delete_QSlider(selfAdr);
  END Delete_QSlider;

PROCEDURE QSlider_sizeHint (self: QSlider; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtSliderRaw.QSlider_sizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QSlider_sizeHint;

PROCEDURE QSlider_minimumSizeHint (self: QSlider; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtSliderRaw.QSlider_minimumSizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QSlider_minimumSizeHint;

PROCEDURE QSlider_setTickPosition
  (self: QSlider; position: TickPosition; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtSliderRaw.QSlider_setTickPosition(selfAdr, ORD(position));
  END QSlider_setTickPosition;

PROCEDURE QSlider_tickPosition (self: QSlider; ): TickPosition =
  VAR
    ret    : INTEGER;
    result : TickPosition;
    selfAdr: ADDRESS      := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtSliderRaw.QSlider_tickPosition(selfAdr);
    result := VAL(ret, TickPosition);
    RETURN result;
  END QSlider_tickPosition;

PROCEDURE QSlider_setTickInterval (self: QSlider; ti: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtSliderRaw.QSlider_setTickInterval(selfAdr, ti);
  END QSlider_setTickInterval;

PROCEDURE QSlider_tickInterval (self: QSlider; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtSliderRaw.QSlider_tickInterval(selfAdr);
  END QSlider_tickInterval;

PROCEDURE QSlider_event (self: QSlider; event: QEvent; ): BOOLEAN =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(event.cxxObj, ADDRESS);
  BEGIN
    RETURN QtSliderRaw.QSlider_event(selfAdr, arg2tmp);
  END QSlider_event;

PROCEDURE Cleanup_QSlider
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QSlider := ref;
  BEGIN
    Delete_QSlider(obj);
  END Cleanup_QSlider;

PROCEDURE Destroy_QSlider (self: QSlider) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QSlider);
  END Destroy_QSlider;

REVEAL
  QSlider = QSliderPublic BRANDED OBJECT
            OVERRIDES
              init_0          := New_QSlider0;
              init_1          := New_QSlider1;
              init_2          := New_QSlider2;
              init_3          := New_QSlider3;
              sizeHint        := QSlider_sizeHint;
              minimumSizeHint := QSlider_minimumSizeHint;
              setTickPosition := QSlider_setTickPosition;
              tickPosition    := QSlider_tickPosition;
              setTickInterval := QSlider_setTickInterval;
              tickInterval    := QSlider_tickInterval;
              event           := QSlider_event;
              destroyCxx      := Destroy_QSlider;
            END;


BEGIN
END QtSlider.
