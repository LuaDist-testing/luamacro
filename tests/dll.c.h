#ifndef DLL_H
#define DLL_H
typedef struct {
   int ival;
} MyStruct;

MyStruct *create() ;
int one(MyStruct *self) ;
int two(MyStruct *self) ;
void set(MyStruct *self,int i) ;
#endif
