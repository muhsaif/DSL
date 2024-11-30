%{
#include <stdio.h>
#include <stdlib.h>

extern int yylex();  // Declare the lexer function
extern int yyerror(const char *s);  // Declare the error handling function
%}

%union {
  int number;
  char* string;
}

%token <number> NUMBER
%token <string> STRING
%token NAVBAR SIDEBAR BREADCRUMB PAGINATION TABS DRAWER DROPDOWN STEPPER
%token TEXT_INPUT TEXTAREA SELECT_DROPDOWN RADIO_BUTTONS CHECKBOXES TOGGLE_SWITCH FILE_UPLOAD SLIDER
%token DATE_TIME_PICKER NUMBER_INPUT SEARCH_BOX COMBOBOX PRIMARY_BUTTON SECONDARY_BUTTON ICON_BUTTON FAB
%token GROUPED_BUTTONS TOGGLE_BUTTON CARD TABLE LIST ACCORDION TOOLTIP TOAST ALERT MODAL FORM_GROUP VALIDATION_MESSAGE
%token GRID FLEXBOX CARD_LAYOUT FEEDBACK CONFIRMATION_DIALOG BOTTOM_NAVIGATION SWIPE_GESTURE PULL_TO_REFRESH INFINITE_SCROLL
%token LEFT_BRACE RIGHT_BRACE COLON COMMA ERROR  // Declare the ERROR token here

%%

program: statement_list
       ;

statement_list: statement
              | statement_list statement
              ;

statement: navigation
         | input
         | button
         | data_display
         | form
         | layout
         | feedback
         | mobile_specific
         ;

navigation: NAVBAR LEFT_BRACE "position:" STRING "style:" STRING "items:" STRING "logo:" STRING RIGHT_BRACE
          | SIDEBAR LEFT_BRACE "position:" STRING "style:" STRING "items:" STRING RIGHT_BRACE
          ;

input: TEXT_INPUT LEFT_BRACE "placeholder:" STRING "value:" STRING "style:" STRING RIGHT_BRACE
     | TEXTAREA LEFT_BRACE "placeholder:" STRING "rows:" NUMBER "cols:" NUMBER RIGHT_BRACE
     ;

button: PRIMARY_BUTTON LEFT_BRACE "text:" STRING "action:" STRING "style:" STRING RIGHT_BRACE
      | SECONDARY_BUTTON LEFT_BRACE "text:" STRING "action:" STRING RIGHT_BRACE
      ;

data_display: CARD LEFT_BRACE "title:" STRING "content:" STRING "image:" STRING "footer:" STRING RIGHT_BRACE
            ;

form: FORM_GROUP LEFT_BRACE "label:" STRING "input:" STRING RIGHT_BRACE
    ;

layout: GRID LEFT_BRACE "columns:" NUMBER "rows:" NUMBER "gap:" STRING RIGHT_BRACE
       ;

feedback: FEEDBACK LEFT_BRACE "type:" STRING "message:" STRING RIGHT_BRACE
        ;

mobile_specific: BOTTOM_NAVIGATION LEFT_BRACE "items:" STRING "activeItem:" STRING RIGHT_BRACE
               ;

%%

int yyerror(const char *s) {
    extern int yylineno;  // Declare yylineno to get the current line number
    fprintf(stderr, "Error: %s at line %d\n", s, yylineno);
    return 0;
}
