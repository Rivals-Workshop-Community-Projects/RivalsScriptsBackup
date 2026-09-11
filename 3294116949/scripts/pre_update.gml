axeless = instance_exists(axe) && !has_rune("A");
if(axeless)
{
    //clear_button_buffer(PC_ATTACK_PRESSED); //axeless
    clear_button_buffer(PC_RIGHT_STICK_PRESSED); //axeless
    clear_button_buffer(PC_UP_STICK_PRESSED);
    //clear_button_buffer(PC_DOWN_STICK_PRESSED); //axeless
    clear_button_buffer(PC_LEFT_STICK_PRESSED); //axeless
    clear_button_buffer(PC_RIGHT_STRONG_PRESSED); //axeless
    clear_button_buffer(PC_UP_STRONG_PRESSED); 
    clear_button_buffer(PC_DOWN_STRONG_PRESSED); //axeless
    clear_button_buffer(PC_LEFT_STRONG_PRESSED); //axeless
    move_cooldown[AT_DSPECIAL] = 2;
    move_cooldown[AT_DSPECIAL_2] = 2;
    // move_cooldown[AT_USPECIAL] = 2;
    move_cooldown[AT_TAUNT] = 2;
    
    move_cooldown[AT_JAB] = 2;
    move_cooldown[AT_DATTACK] = 2;
    move_cooldown[AT_UTILT] = 2;
    move_cooldown[AT_FTILT] = 2;
    move_cooldown[AT_UAIR] = 2;
    move_cooldown[AT_BAIR] = 2;
    move_cooldown[AT_DAIR] = 2;
    move_cooldown[AT_FAIR] = 2;
    move_cooldown[AT_NAIR] = 2;
    move_cooldown[AT_FSTRONG] = 2;
    move_cooldown[AT_USTRONG] = 2;
    move_cooldown[AT_DSTRONG] = 2;
}