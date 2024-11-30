/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_UI_TAB_H_INCLUDED
# define YY_YY_UI_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    NUMBER = 258,                  /* NUMBER  */
    STRING = 259,                  /* STRING  */
    NAVBAR = 260,                  /* NAVBAR  */
    SIDEBAR = 261,                 /* SIDEBAR  */
    BREADCRUMB = 262,              /* BREADCRUMB  */
    PAGINATION = 263,              /* PAGINATION  */
    TABS = 264,                    /* TABS  */
    DRAWER = 265,                  /* DRAWER  */
    DROPDOWN = 266,                /* DROPDOWN  */
    STEPPER = 267,                 /* STEPPER  */
    TEXT_INPUT = 268,              /* TEXT_INPUT  */
    TEXTAREA = 269,                /* TEXTAREA  */
    SELECT_DROPDOWN = 270,         /* SELECT_DROPDOWN  */
    RADIO_BUTTONS = 271,           /* RADIO_BUTTONS  */
    CHECKBOXES = 272,              /* CHECKBOXES  */
    TOGGLE_SWITCH = 273,           /* TOGGLE_SWITCH  */
    FILE_UPLOAD = 274,             /* FILE_UPLOAD  */
    SLIDER = 275,                  /* SLIDER  */
    DATE_TIME_PICKER = 276,        /* DATE_TIME_PICKER  */
    NUMBER_INPUT = 277,            /* NUMBER_INPUT  */
    SEARCH_BOX = 278,              /* SEARCH_BOX  */
    COMBOBOX = 279,                /* COMBOBOX  */
    PRIMARY_BUTTON = 280,          /* PRIMARY_BUTTON  */
    SECONDARY_BUTTON = 281,        /* SECONDARY_BUTTON  */
    ICON_BUTTON = 282,             /* ICON_BUTTON  */
    FAB = 283,                     /* FAB  */
    GROUPED_BUTTONS = 284,         /* GROUPED_BUTTONS  */
    TOGGLE_BUTTON = 285,           /* TOGGLE_BUTTON  */
    CARD = 286,                    /* CARD  */
    TABLE = 287,                   /* TABLE  */
    LIST = 288,                    /* LIST  */
    ACCORDION = 289,               /* ACCORDION  */
    TOOLTIP = 290,                 /* TOOLTIP  */
    TOAST = 291,                   /* TOAST  */
    ALERT = 292,                   /* ALERT  */
    MODAL = 293,                   /* MODAL  */
    FORM_GROUP = 294,              /* FORM_GROUP  */
    VALIDATION_MESSAGE = 295,      /* VALIDATION_MESSAGE  */
    GRID = 296,                    /* GRID  */
    FLEXBOX = 297,                 /* FLEXBOX  */
    CARD_LAYOUT = 298,             /* CARD_LAYOUT  */
    FEEDBACK = 299,                /* FEEDBACK  */
    CONFIRMATION_DIALOG = 300,     /* CONFIRMATION_DIALOG  */
    BOTTOM_NAVIGATION = 301,       /* BOTTOM_NAVIGATION  */
    SWIPE_GESTURE = 302,           /* SWIPE_GESTURE  */
    PULL_TO_REFRESH = 303,         /* PULL_TO_REFRESH  */
    INFINITE_SCROLL = 304,         /* INFINITE_SCROLL  */
    LEFT_BRACE = 305,              /* LEFT_BRACE  */
    RIGHT_BRACE = 306,             /* RIGHT_BRACE  */
    COLON = 307,                   /* COLON  */
    COMMA = 308,                   /* COMMA  */
    ERROR = 309                    /* ERROR  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 10 "ui.y"

  int number;
  char* string;

#line 123 "ui.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_UI_TAB_H_INCLUDED  */
