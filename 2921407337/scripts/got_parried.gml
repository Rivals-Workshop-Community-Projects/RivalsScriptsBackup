/*got_parried.gml – called when your hitbox is parried. 
Use hit_player_obj to reference the player object who parried your hitbox. 
Use hit_player to reference which player parried your hitbox (player 1, player 2, etc). 
Use my_hitboxID to reference the hitbox that was parried.

*/

// Halt momentum when parried during Fspec
if(my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_AIR){
	// Air
	if(free) {
	    vsp = 0;
	    hsp = 0;
	    set_state(PS_PRATFALL);
	    parry_lag = 60;
	}
	//Ground
	if(!free) {
	    vsp = 0;
	    hsp = 0;
		set_state(PS_PRATLAND);
		parry_lag = 60;
	}
}

// Cleanse Mark on Parry
if(hit_player_obj.electric_mark == true)
{
	hit_player_obj.electric_mark = false;
}

// Lose SL Mode on Parry
if(SL_mode_active == true){
	SL_damage_timer = 0;
	Set_SL_Mode(false);
}
// Copied from Attack Update
#define Set_SL_Mode(mode)
{
    switch(mode){
        case 0: // False
            SL_mode_active = false;
            SL_activated_by_opponent_ID = noone;
            init_shader();
            if(!instance_exists(hfx_sl_untransform_obj)){ hfx_sl_untransform_obj = spawn_hit_fx(x,y - 32,hfx_sl_untransform);}
            sound_play(asset_get("mfx_unstar" ),false,noone,1,.75);
            sl_idle_but_better_flag = false;
        break;
        
        case 1: // True
            SL_mode_active = true;
            init_shader();
        break;
        
        default:
        break;
    }
}