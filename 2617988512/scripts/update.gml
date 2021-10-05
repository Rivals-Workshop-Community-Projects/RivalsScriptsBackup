if (state = PS_CROUCH)
{
    if (can_crawl)
    {
        if (left_down && hsp > -2.5)
        {
            hsp--;
        }
        if (right_down && hsp < 2.5)
        {
            hsp++;
        }
    }
}

if (state_cat = SC_HITSTUN || state_cat = SC_GROUND_NEUTRAL || state_cat = SC_AIR_NEUTRAL)
{
    char_height = 56;
    easetimer = 0;
}

if (money < 0) money = 0;
if (money > 1000) money = 1000;

if (money_lost_gui_timer > 0) 
{
    money_lost_gui_timer--;
}

if (state = PS_PRATFALL)
{
    if (money >= 200 && (special_pressed || special_down) && (!left_down && !right_down && !up_down && !down_down))
    {
        iasa_script();
        set_attack(AT_NSPECIAL);
        sell_vfx = spawn_hit_fx(x, y - char_height/2, sell_fx);
        sell_vfx.depth = depth - 1;	
        sell_vfx.spr_dir = 1;
        money -= 200
        money_lost = 200;
        money_lost_gui_timer = 80;
        sound_play(sound_get("bcm_sell"));
    }
}
