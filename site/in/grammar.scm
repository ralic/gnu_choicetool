(p (kbd (pre "
Start symbol input

input: | newlines | stmt_list | newlines stmt_list ;
newlines: newline | newline newlines ;
newline: 'T_EOL' ;
stmt_list: stmt | stmt stmt_list ;
stmt: mainmenu_stmt | menu_stmt | choice_stmt | common_stmt ;
mainmenu_stmt: 'T_MAINMENU' words newlines ;
words: word | word_quote ;
word: 'T_WORD' ;
word_quote: 'T_WORD_QUOTE' ;
menu_stmt: menu_entry 'T_ENDMENU' newlines | menu_entry menu_block_list 'T_ENDMENU' newlines ;
menu_entry: menu | menu depends_list ;
menu: 'T_MENU' words newlines ;
menu_block_list: menu_block | menu_block menu_block_list ;
menu_block: menu_stmt | choice_stmt | common_stmt ;
depends_list: depends | depends depends_list ;
depends: 'T_DEPENDS' 'T_ON' expr newlines | 'T_DEPENDS' expr newlines | 'T_REQUIRES' expr newlines ;
expr: words | words 'T_EQUAL' words | words 'T_UNEQUAL' words | 'T_OPEN_PAREN' expr 'T_CLOSE_PAREN' | 'T_NOT' expr | expr 'T_OR' expr | expr 'T_AND' expr ;
choice_stmt: choice_entry 'T_ENDCHOICE' newlines | choice_entry choice_block_list 'T_ENDCHOICE' newlines ;
choice_entry: 'T_CHOICE' newlines | 'T_CHOICE' newlines choice_options_block_list ;
choice_options_block_list: choice_options_block | choice_options_block choice_options_block_list ;
choice_options_block: choice_option | depends | help ;
choice_option: 'T_PROMPT' words newlines | 'T_PROMPT' words 'T_IF' expr newlines | type_definition words 'T_IF' expr newlines | type_definition words newlines | type_definition newlines | 'T_OPTIONAL' newlines | 'T_DEFAULT' word newlines | 'T_DEFAULT' word 'T_IF' expr newlines ;
type_definition: 'T_BOOL' | 'T_TRISTATE' | 'T_STRING' | 'T_HEX' | 'T_INT' ;
help: 'T_HELP' newlines 'T_HELPTEXT' newlines ;
choice_block_list: common_stmt | common_stmt choice_block_list ;
common_stmt: config_stmt | if_stmt | comment_stmt | menuconfig_stmt ;
config_stmt: config_entry | config_entry config_options_block_list ;
config_entry: 'T_CONFIG' word newlines ;
config_options_block_list: config_options_block | config_options_block config_options_block_list ;
config_options_block: config_option | symbol_option | depends | help ;
config_option: type_default_definition expr newlines | type_default_definition expr 'T_IF' expr newlines | type_definition words 'T_IF' expr newlines | type_definition words newlines | type_definition newlines | 'T_PROMPT' words newlines | 'T_PROMPT' words 'T_IF' expr newlines | 'T_DEFAULT' expr newlines | 'T_DEFAULT' expr 'T_IF' expr newlines | 'T_SELECT' word newlines | 'T_SELECT' word 'T_IF' expr newlines | 'T_RANGE' word word newlines | 'T_RANGE' word word 'T_IF' expr newlines ;
type_default_definition: 'T_DEF_TRISTATE' | 'T_DEF_BOOL' ;
symbol_option: 'T_OPTION' newlines | 'T_OPTION' symbol_options_block_list newlines ;
symbol_options_block_list: symbol_options_block | symbol_options_block symbol_options_block_list ;
symbol_options_block: word | word 'T_EQUAL' words ;
if_stmt: if_entry 'T_ENDIF' newlines | if_entry if_block_list 'T_ENDIF' newlines ;
if_entry: 'T_IF' expr newlines ;
if_block_list: if_block | if_block if_block_list ;
if_block: common_stmt | menu_stmt | choice_stmt ;
comment_stmt: comment_entry | comment_entry depends_list ;
comment_entry: 'T_COMMENT' words newlines ;
menuconfig_stmt: menuconfig_entry | menuconfig_entry config_options_block_list ;
menuconfig_entry: 'T_MENUCONFIG' word newlines ;
") ) )