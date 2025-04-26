axeless = instance_exists(axe);
if(axeless)
{
    clear_button_buffer(PC_ATTACK_PRESSED);
    clear_button_buffer(PC_RIGHT_STICK_PRESSED);
    clear_button_buffer(PC_UP_STICK_PRESSED);
    clear_button_buffer(PC_DOWN_STICK_PRESSED);
    clear_button_buffer(PC_LEFT_STICK_PRESSED);
    clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
    clear_button_buffer(PC_UP_STRONG_PRESSED);
    clear_button_buffer(PC_DOWN_STRONG_PRESSED);
    clear_button_buffer(PC_LEFT_STRONG_PRESSED);
    move_cooldown[AT_DSPECIAL] = 2;
    move_cooldown[AT_DSPECIAL_2] = 2;
    move_cooldown[AT_USPECIAL] = 2;
    move_cooldown[AT_TAUNT] = 2;
}