//USHR CSS INIT

thing_init = false;
button_hover = false;
button_cooldown = 0;
vls_ = clamp(get_synced_var( player ),0,4);
var_localstorage = (clamp(get_synced_var( player ),0,4)==4)?0:vls_;
reset_color_list = false;
switch_pal_let = true;

e_buffer = 0;