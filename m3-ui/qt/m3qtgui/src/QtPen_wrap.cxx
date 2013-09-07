/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 * 
 * This file is not intended to be easily readable and contains a number of 
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG 
 * interface file instead. 
 * ----------------------------------------------------------------------------- */

#define SWIGMODULA3


#ifdef __cplusplus
/* SwigValueWrapper is described in swig.swg */
template<typename T> class SwigValueWrapper {
  struct SwigMovePointer {
    T *ptr;
    SwigMovePointer(T *p) : ptr(p) { }
    ~SwigMovePointer() { delete ptr; }
    SwigMovePointer& operator=(SwigMovePointer& rhs) { T* oldptr = ptr; ptr = 0; delete oldptr; ptr = rhs.ptr; rhs.ptr = 0; return *this; }
  } pointer;
  SwigValueWrapper& operator=(const SwigValueWrapper<T>& rhs);
  SwigValueWrapper(const SwigValueWrapper<T>& rhs);
public:
  SwigValueWrapper() : pointer(0) { }
  SwigValueWrapper& operator=(const T& t) { SwigMovePointer tmp(new T(t)); pointer = tmp; return *this; }
  operator T&() const { return *pointer.ptr; }
  T *operator&() { return pointer.ptr; }
};

template <typename T> T SwigValueInit() {
  return T();
}
#endif

/* -----------------------------------------------------------------------------
 *  This section contains generic SWIG labels for method/variable
 *  declarations/attributes, and other compiler dependent labels.
 * ----------------------------------------------------------------------------- */

/* template workaround for compilers that cannot correctly implement the C++ standard */
#ifndef SWIGTEMPLATEDISAMBIGUATOR
# if defined(__SUNPRO_CC) && (__SUNPRO_CC <= 0x560)
#  define SWIGTEMPLATEDISAMBIGUATOR template
# elif defined(__HP_aCC)
/* Needed even with `aCC -AA' when `aCC -V' reports HP ANSI C++ B3910B A.03.55 */
/* If we find a maximum version that requires this, the test would be __HP_aCC <= 35500 for A.03.55 */
#  define SWIGTEMPLATEDISAMBIGUATOR template
# else
#  define SWIGTEMPLATEDISAMBIGUATOR
# endif
#endif

/* inline attribute */
#ifndef SWIGINLINE
# if defined(__cplusplus) || (defined(__GNUC__) && !defined(__STRICT_ANSI__))
#   define SWIGINLINE inline
# else
#   define SWIGINLINE
# endif
#endif

/* attribute recognised by some compilers to avoid 'unused' warnings */
#ifndef SWIGUNUSED
# if defined(__GNUC__)
#   if !(defined(__cplusplus)) || (__GNUC__ > 3 || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4))
#     define SWIGUNUSED __attribute__ ((__unused__)) 
#   else
#     define SWIGUNUSED
#   endif
# elif defined(__ICC)
#   define SWIGUNUSED __attribute__ ((__unused__)) 
# else
#   define SWIGUNUSED 
# endif
#endif

#ifndef SWIG_MSC_UNSUPPRESS_4505
# if defined(_MSC_VER)
#   pragma warning(disable : 4505) /* unreferenced local function has been removed */
# endif 
#endif

#ifndef SWIGUNUSEDPARM
# ifdef __cplusplus
#   define SWIGUNUSEDPARM(p)
# else
#   define SWIGUNUSEDPARM(p) p SWIGUNUSED 
# endif
#endif

/* internal SWIG method */
#ifndef SWIGINTERN
# define SWIGINTERN static SWIGUNUSED
#endif

/* internal inline SWIG method */
#ifndef SWIGINTERNINLINE
# define SWIGINTERNINLINE SWIGINTERN SWIGINLINE
#endif

/* exporting methods */
#if (__GNUC__ >= 4) || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4)
#  ifndef GCC_HASCLASSVISIBILITY
#    define GCC_HASCLASSVISIBILITY
#  endif
#endif

#ifndef SWIGEXPORT
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   if defined(STATIC_LINKED)
#     define SWIGEXPORT
#   else
#     define SWIGEXPORT __declspec(dllexport)
#   endif
# else
#   if defined(__GNUC__) && defined(GCC_HASCLASSVISIBILITY)
#     define SWIGEXPORT __attribute__ ((visibility("default")))
#   else
#     define SWIGEXPORT
#   endif
# endif
#endif

/* calling conventions for Windows */
#ifndef SWIGSTDCALL
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   define SWIGSTDCALL __stdcall
# else
#   define SWIGSTDCALL
# endif 
#endif

/* Deal with Microsoft's attempt at deprecating C standard runtime functions */
#if !defined(SWIG_NO_CRT_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_CRT_SECURE_NO_DEPRECATE)
# define _CRT_SECURE_NO_DEPRECATE
#endif

/* Deal with Microsoft's attempt at deprecating methods in the standard C++ library */
#if !defined(SWIG_NO_SCL_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_SCL_SECURE_NO_DEPRECATE)
# define _SCL_SECURE_NO_DEPRECATE
#endif




#include <stdlib.h>
#include <string.h>
#include <stdio.h>


#include <QtGui/qpen.h>


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT QPen * New_QPen0() {
  QPen *result = 0 ;
  QPen * cresult ;
  
  result = (QPen *)new QPen();
  *(QPen **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPen * New_QPen1(Qt::PenStyle m3arg1) {
  Qt::PenStyle arg1 ;
  QPen *result = 0 ;
  QPen * cresult ;
  
  arg1 = (Qt::PenStyle)m3arg1; 
  result = (QPen *)new QPen(arg1);
  *(QPen **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPen * New_QPen2(QColor * color) {
  QColor *arg1 = 0 ;
  QPen *result = 0 ;
  QPen * cresult ;
  
  arg1 = *(QColor **)&color;
  result = (QPen *)new QPen((QColor const &)*arg1);
  *(QPen **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPen * New_QPen3(QBrush * brush, double width, Qt::PenStyle s, Qt::PenCapStyle c, Qt::PenJoinStyle j) {
  QBrush *arg1 = 0 ;
  double arg2 ;
  Qt::PenStyle arg3 ;
  Qt::PenCapStyle arg4 ;
  Qt::PenJoinStyle arg5 ;
  QPen *result = 0 ;
  QPen * cresult ;
  
  arg1 = *(QBrush **)&brush;
  arg2 = (double)width; 
  arg3 = (Qt::PenStyle)s; 
  arg4 = (Qt::PenCapStyle)c; 
  arg5 = (Qt::PenJoinStyle)j; 
  result = (QPen *)new QPen((QBrush const &)*arg1,arg2,arg3,arg4,arg5);
  *(QPen **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPen * New_QPen4(QBrush * brush, double width, Qt::PenStyle s, Qt::PenCapStyle c) {
  QBrush *arg1 = 0 ;
  double arg2 ;
  Qt::PenStyle arg3 ;
  Qt::PenCapStyle arg4 ;
  QPen *result = 0 ;
  QPen * cresult ;
  
  arg1 = *(QBrush **)&brush;
  arg2 = (double)width; 
  arg3 = (Qt::PenStyle)s; 
  arg4 = (Qt::PenCapStyle)c; 
  result = (QPen *)new QPen((QBrush const &)*arg1,arg2,arg3,arg4);
  *(QPen **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPen * New_QPen5(QBrush * brush, double width, Qt::PenStyle s) {
  QBrush *arg1 = 0 ;
  double arg2 ;
  Qt::PenStyle arg3 ;
  QPen *result = 0 ;
  QPen * cresult ;
  
  arg1 = *(QBrush **)&brush;
  arg2 = (double)width; 
  arg3 = (Qt::PenStyle)s; 
  result = (QPen *)new QPen((QBrush const &)*arg1,arg2,arg3);
  *(QPen **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPen * New_QPen6(QBrush * brush, double width) {
  QBrush *arg1 = 0 ;
  double arg2 ;
  QPen *result = 0 ;
  QPen * cresult ;
  
  arg1 = *(QBrush **)&brush;
  arg2 = (double)width; 
  result = (QPen *)new QPen((QBrush const &)*arg1,arg2);
  *(QPen **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPen * New_QPen7(QPen const & pen) {
  QPen *arg1 = 0 ;
  QPen *result = 0 ;
  QPen * cresult ;
  
  arg1 = *(QPen **)&pen;
  result = (QPen *)new QPen((QPen const &)*arg1);
  *(QPen **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void Delete_QPen(QPen * self) {
  QPen *arg1 = (QPen *) 0 ;
  
  arg1 = *(QPen **)&self; 
  delete arg1;
}


SWIGEXPORT void QPen_swap(QPen * self, QPen & other) {
  QPen *arg1 = (QPen *) 0 ;
  QPen *arg2 = 0 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = *(QPen **)&other;
  /*
  if(!arg2) {
      //SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "QPen & reference is null");
      //RETURN ;
      return ;
    }
  */
  
  (arg1)->swap(*arg2);
}


SWIGEXPORT Qt::PenStyle QPen_style(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  Qt::PenStyle result;
  Qt::PenStyle cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (Qt::PenStyle)((QPen const *)arg1)->style();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPen_setStyle(QPen * self, Qt::PenStyle m3arg2) {
  QPen *arg1 = (QPen *) 0 ;
  Qt::PenStyle arg2 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = (Qt::PenStyle)m3arg2; 
  (arg1)->setStyle(arg2);
}


SWIGEXPORT double QPen_dashOffset(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  double result;
  double cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (double)((QPen const *)arg1)->dashOffset();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPen_setDashOffset(QPen * self, double doffset) {
  QPen *arg1 = (QPen *) 0 ;
  double arg2 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = (double)doffset; 
  (arg1)->setDashOffset(arg2);
}


SWIGEXPORT double QPen_miterLimit(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  double result;
  double cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (double)((QPen const *)arg1)->miterLimit();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPen_setMiterLimit(QPen * self, double limit) {
  QPen *arg1 = (QPen *) 0 ;
  double arg2 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = (double)limit; 
  (arg1)->setMiterLimit(arg2);
}


SWIGEXPORT double QPen_widthF(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  double result;
  double cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (double)((QPen const *)arg1)->widthF();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPen_setWidthF(QPen * self, double width) {
  QPen *arg1 = (QPen *) 0 ;
  double arg2 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = (double)width; 
  (arg1)->setWidthF(arg2);
}


SWIGEXPORT int QPen_width(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (int)((QPen const *)arg1)->width();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPen_setWidth(QPen * self, int width) {
  QPen *arg1 = (QPen *) 0 ;
  int arg2 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = (int)width; 
  (arg1)->setWidth(arg2);
}


SWIGEXPORT QColor * QPen_color(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  QColor * cresult ;
  
  arg1 = *(QPen **)&self; 
  *(QColor **)&cresult = new QColor((const QColor &)((QPen const *)arg1)->color());
  return cresult;
}


SWIGEXPORT void QPen_setColor(QPen * self, QColor * color) {
  QPen *arg1 = (QPen *) 0 ;
  QColor *arg2 = 0 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = *(QColor **)&color;
  (arg1)->setColor((QColor const &)*arg2);
}


SWIGEXPORT QBrush * QPen_brush(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  QBrush * cresult ;
  
  arg1 = *(QPen **)&self; 
  *(QBrush **)&cresult = new QBrush((const QBrush &)((QPen const *)arg1)->brush());
  return cresult;
}


SWIGEXPORT void QPen_setBrush(QPen * self, QBrush * brush) {
  QPen *arg1 = (QPen *) 0 ;
  QBrush *arg2 = 0 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = *(QBrush **)&brush;
  (arg1)->setBrush((QBrush const &)*arg2);
}


SWIGEXPORT bool QPen_isSolid(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (bool)((QPen const *)arg1)->isSolid();
  cresult = result; 
  return cresult;
}


SWIGEXPORT Qt::PenCapStyle QPen_capStyle(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  Qt::PenCapStyle result;
  Qt::PenCapStyle cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (Qt::PenCapStyle)((QPen const *)arg1)->capStyle();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPen_setCapStyle(QPen * self, Qt::PenCapStyle pcs) {
  QPen *arg1 = (QPen *) 0 ;
  Qt::PenCapStyle arg2 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = (Qt::PenCapStyle)pcs; 
  (arg1)->setCapStyle(arg2);
}


SWIGEXPORT Qt::PenJoinStyle QPen_joinStyle(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  Qt::PenJoinStyle result;
  Qt::PenJoinStyle cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (Qt::PenJoinStyle)((QPen const *)arg1)->joinStyle();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPen_setJoinStyle(QPen * self, Qt::PenJoinStyle pcs) {
  QPen *arg1 = (QPen *) 0 ;
  Qt::PenJoinStyle arg2 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = (Qt::PenJoinStyle)pcs; 
  (arg1)->setJoinStyle(arg2);
}


SWIGEXPORT bool QPen_isCosmetic(QPen const * self) {
  QPen *arg1 = (QPen *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (bool)((QPen const *)arg1)->isCosmetic();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPen_setCosmetic(QPen * self, bool cosmetic) {
  QPen *arg1 = (QPen *) 0 ;
  bool arg2 ;
  
  arg1 = *(QPen **)&self; 
  arg2 = cosmetic ? true : false; 
  (arg1)->setCosmetic(arg2);
}


SWIGEXPORT bool QPen_isDetached(QPen * self) {
  QPen *arg1 = (QPen *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QPen **)&self; 
  result = (bool)(arg1)->isDetached();
  cresult = result; 
  return cresult;
}


#ifdef __cplusplus
}
#endif

