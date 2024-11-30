%{
#include <stdio.h>
#include "ui.tab.h"  // Include the Bison header for token definitions
%}

%%

"Navbar"               { return NAVBAR; }
"Sidebar"              { return SIDEBAR; }
"Breadcrumb"           { return BREADCRUMB; }
"Pagination"           { return PAGINATION; }
"Tabs"                 { return TABS; }
"Drawer"               { return DRAWER; }
"Dropdown"             { return DROPDOWN; }
"Stepper"              { return STEPPER; }

"TextInput"            { return TEXT_INPUT; }
"Textarea"             { return TEXTAREA; }
"SelectDropdown"       { return SELECT_DROPDOWN; }
"RadioButtons"         { return RADIO_BUTTONS; }
"Checkboxes"           { return CHECKBOXES; }
"ToggleSwitch"         { return TOGGLE_SWITCH; }
"FileUpload"           { return FILE_UPLOAD; }
"Slider"               { return SLIDER; }
"DateTimePicker"       { return DATE_TIME_PICKER; }
"NumberInput"          { return NUMBER_INPUT; }
"SearchBox"            { return SEARCH_BOX; }
"Combobox"             { return COMBOBOX; }

"PrimaryButton"        { return PRIMARY_BUTTON; }
"SecondaryButton"      { return SECONDARY_BUTTON; }
"IconButton"           { return ICON_BUTTON; }
"FAB"                  { return FAB; }
"GroupedButtons"       { return GROUPED_BUTTONS; }
"ToggleButton"         { return TOGGLE_BUTTON; }

"Card"                 { return CARD; }
"Table"                { return TABLE; }
"List"                 { return LIST; }
"Accordion"            { return ACCORDION; }
"Tooltip"              { return TOOLTIP; }
"Toast"                { return TOAST; }
"Alert"                { return ALERT; }
"Modal"                { return MODAL; }

"FormGroup"            { return FORM_GROUP; }
"ValidationMessage"    { return VALIDATION_MESSAGE; }

"Grid"                 { return GRID; }
"Flexbox"              { return FLEXBOX; }
"CardLayout"           { return CARD_LAYOUT; }

"Feedback"             { return FEEDBACK; }
"ConfirmationDialog"   { return CONFIRMATION_DIALOG; }

"BottomNavigation"     { return BOTTOM_NAVIGATION; }
"SwipeGesture"         { return SWIPE_GESTURE; }
"PullToRefresh"        { return PULL_TO_REFRESH; }
"InfiniteScroll"       { return INFINITE_SCROLL; }

[ \t\n]+               { /* Ignore whitespace */ }
"{"                    { return LEFT_BRACE; }
"}"                    { return RIGHT_BRACE; }
":"                    { return COLON; }
","                    { return COMMA; }
[0-9]+                 { return NUMBER; }
\"[^\"]*\"             { return STRING; }
.                      { return ERROR; }  // Return ERROR for any invalid input

%%

int main(void) {
    printf("Enter DSL code:\n");
    if (yyparse() == 0) {  // If parsing is successful
        printf("DSL code parsed successfully!\n");
    } else {
        printf("Error in parsing DSL code.\n");
    }
    return 0;
}

