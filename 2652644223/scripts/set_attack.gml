if(!free && bullets != 6 && attack_pressed && special_pressed && attack != AT_TAUNT_2 && state != PS_PARRY)
{
    tac_reload = true;
    attack = AT_TAUNT_2;
}   
if(attack == AT_FSPECIAL || attack == AT_DTILT || attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG )
{
    if(bullets == 0 && state != PS_PARRY)
    {
        tac_reload = false;
        clear_button_buffer(PC_SPECIAL_PRESSED);
        sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.5);
        outline_timer = 20;
    }
}