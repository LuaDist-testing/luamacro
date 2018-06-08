// preprocess using luam -C -llc str.lc > str.c
#line 2 "str.lc"
#include <string.h>

#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
#ifdef WIN32
#define EXPORT __declspec(dllexport)
#else
#define EXPORT
#endif
typedef const char *Str;
typedef const char *StrNil;
typedef int Int;
typedef double Number;
typedef int Boolean;


  #line 6 "str.lc"
static int l_at(lua_State *L) {
    const char *s = luaL_checklstring(L,1,NULL);
    int i = luaL_optinteger(L,2,0);

    #line 7 "str.lc"

    lua_pushlstring(L,&s[i-1],1);
    return 1;
  }

  static int l_upto(lua_State *L) {
    const char *s = luaL_checklstring(L,1,NULL);
    const char *delim = luaL_optlstring(L,2," ",NULL);

    #line 12 "str.lc"

    lua_pushinteger(L, strcspn(s,delim) + 1);
    return 1;
  }

static const luaL_reg str_funs[] = {
       {"at",l_at},
   {"upto",l_upto},
    {NULL,NULL}
};

EXPORT int luaopen_str (lua_State *L) {
    luaL_register (L,"str",str_funs);
    
    return 1;
}


#line 22 "str.lc"




