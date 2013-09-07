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


#include <QtGui/qpagesetupdialog.h>
#define  PageSetupDialogOptions  QPageSetupDialog::PageSetupDialogOptions


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT QPageSetupDialog * New_QPageSetupDialog0(QPrinter * printer, QWidget * parent) {
  QPrinter *arg1 = (QPrinter *) 0 ;
  QWidget *arg2 = (QWidget *) 0 ;
  QPageSetupDialog *result = 0 ;
  QPageSetupDialog * cresult ;
  
  arg1 = *(QPrinter **)&printer; 
  arg2 = *(QWidget **)&parent; 
  result = (QPageSetupDialog *)new QPageSetupDialog(arg1,arg2);
  *(QPageSetupDialog **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPageSetupDialog * New_QPageSetupDialog1(QPrinter * printer) {
  QPrinter *arg1 = (QPrinter *) 0 ;
  QPageSetupDialog *result = 0 ;
  QPageSetupDialog * cresult ;
  
  arg1 = *(QPrinter **)&printer; 
  result = (QPageSetupDialog *)new QPageSetupDialog(arg1);
  *(QPageSetupDialog **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPageSetupDialog * New_QPageSetupDialog2(QWidget * parent) {
  QWidget *arg1 = (QWidget *) 0 ;
  QPageSetupDialog *result = 0 ;
  QPageSetupDialog * cresult ;
  
  arg1 = *(QWidget **)&parent; 
  result = (QPageSetupDialog *)new QPageSetupDialog(arg1);
  *(QPageSetupDialog **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPageSetupDialog * New_QPageSetupDialog3() {
  QPageSetupDialog *result = 0 ;
  QPageSetupDialog * cresult ;
  
  result = (QPageSetupDialog *)new QPageSetupDialog();
  *(QPageSetupDialog **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QPageSetupDialog_addEnabledOption(QPageSetupDialog * self, QPageSetupDialog::PageSetupDialogOption option) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  QPageSetupDialog::PageSetupDialogOption arg2 ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  arg2 = (QPageSetupDialog::PageSetupDialogOption)option; 
  (arg1)->addEnabledOption(arg2);
}


SWIGEXPORT void QPageSetupDialog_setEnabledOptions(QPageSetupDialog * self, PageSetupDialogOptions options) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  PageSetupDialogOptions arg2 ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  arg2 = (PageSetupDialogOptions)options; 
  (arg1)->setEnabledOptions(arg2);
}


SWIGEXPORT PageSetupDialogOptions QPageSetupDialog_enabledOptions(QPageSetupDialog const * self) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  PageSetupDialogOptions cresult ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  *(PageSetupDialogOptions **)&cresult = new PageSetupDialogOptions((const PageSetupDialogOptions &)((QPageSetupDialog const *)arg1)->enabledOptions());
  return cresult;
}


SWIGEXPORT bool QPageSetupDialog_isOptionEnabled(QPageSetupDialog const * self, QPageSetupDialog::PageSetupDialogOption option) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  QPageSetupDialog::PageSetupDialogOption arg2 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  arg2 = (QPageSetupDialog::PageSetupDialogOption)option; 
  result = (bool)((QPageSetupDialog const *)arg1)->isOptionEnabled(arg2);
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPageSetupDialog_setOption(QPageSetupDialog * self, QPageSetupDialog::PageSetupDialogOption option, bool on) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  QPageSetupDialog::PageSetupDialogOption arg2 ;
  bool arg3 ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  arg2 = (QPageSetupDialog::PageSetupDialogOption)option; 
  arg3 = on ? true : false; 
  (arg1)->setOption(arg2,arg3);
}


SWIGEXPORT void QPageSetupDialog_setOption1(QPageSetupDialog * self, QPageSetupDialog::PageSetupDialogOption option) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  QPageSetupDialog::PageSetupDialogOption arg2 ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  arg2 = (QPageSetupDialog::PageSetupDialogOption)option; 
  (arg1)->setOption(arg2);
}


SWIGEXPORT bool QPageSetupDialog_testOption(QPageSetupDialog const * self, QPageSetupDialog::PageSetupDialogOption option) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  QPageSetupDialog::PageSetupDialogOption arg2 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  arg2 = (QPageSetupDialog::PageSetupDialogOption)option; 
  result = (bool)((QPageSetupDialog const *)arg1)->testOption(arg2);
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPageSetupDialog_setOptions(QPageSetupDialog * self, PageSetupDialogOptions options) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  PageSetupDialogOptions arg2 ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  arg2 = (PageSetupDialogOptions)options; 
  (arg1)->setOptions(arg2);
}


SWIGEXPORT PageSetupDialogOptions QPageSetupDialog_options(QPageSetupDialog const * self) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  PageSetupDialogOptions cresult ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  *(PageSetupDialogOptions **)&cresult = new PageSetupDialogOptions((const PageSetupDialogOptions &)((QPageSetupDialog const *)arg1)->options());
  return cresult;
}


SWIGEXPORT int QPageSetupDialog_exec(QPageSetupDialog * self) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  result = (int)(arg1)->exec();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QPageSetupDialog_open0_0(QPageSetupDialog * self) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  (arg1)->open();
}


SWIGEXPORT void QPageSetupDialog_open1(QPageSetupDialog * self, QObject * receiver, char * member) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  QObject *arg2 = (QObject *) 0 ;
  char *arg3 = (char *) 0 ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  arg2 = *(QObject **)&receiver; 
  {
    arg3 = member;
  }
  (arg1)->open(arg2,(char const *)arg3);
}


SWIGEXPORT void Delete_QPageSetupDialog(QPageSetupDialog * self) {
  QPageSetupDialog *arg1 = (QPageSetupDialog *) 0 ;
  
  arg1 = *(QPageSetupDialog **)&self; 
  delete arg1;
}


#ifdef __cplusplus
}
#endif

