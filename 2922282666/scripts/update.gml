//Fail-safe, if article is deleted
if(get_gameplay_time() > 2)
{
    GemObj = noone;
    with(obj_article1) if(player_id == other.id) other.GemObj = id;
    if(GemObj == noone || !variable_instance_exists(id,"GemObj"))
        GemObj = instance_create(x,y,"obj_article1");
    if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) dashes = 0;
    if(dashes != 0 && move_cooldown[AT_NSPECIAL_2] < 2) move_cooldown[AT_NSPECIAL_2] = 2;

    if(dash_grab_player != noone) { if(dash_grab_player.state_cat != SC_HITSTUN || attack != AT_NSPECIAL_2) dash_grab_player = noone; }
    if(state == PS_RESPAWN && state_timer == 1) { GemObj.state = 4; GemObj.state_timer = 0;}
    if!(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
    {
        if(OldGem != GemSelect) OldGem = GemSelect;
        if(attack == AT_BAIR && attack_window > 1) { if(!hitpause)spr_dir /= -1; attack = 0;} 
    }
    if(GemShow_timer != 0) GemShow_timer --;
}