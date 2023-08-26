//update

/*
if ((attack == AT_USPECIAL && (window == 2))|| state == PS_PRATFALL){
	if(hsp != 0){
	spr_angle = radtodeg(arctan(vsp/-hsp)) - 90 * spr_dir;
	}else{
	spr_angle = radtodeg(arctan(vsp/-hsp)) + 90 * spr_dir;
		
	}
	}else{
		spr_angle = 0
	}

*/

//game start stuff

if(!free && uspecial_air = true){
	uspecial_air = false;
}
if(!free && fspecial_hit_comet = true){
	fspecial_hit_comet = false;
}

if(prev_state == PS_RESPAWN && state_timer == 0){
	spawn_hit_fx(x, y, VFX_plat_despawn)
}

if (!free || state == PS_WALL_JUMP || state == PS_RESPAWN) {
  nspecstall = false;
}
/*if(get_gameplay_time()%10=0){
	spawn_hit_fx(x,y,hfx_index)
	print(hfx_index)
	hfx_index++;
	
}*/
//should_switch = get_synced_var(player) % 2;

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT) {
	set_victory_theme( sound_get("TralalaVictory"));
	awesome = true;
	//set_synced_var(player, awesome * 10 + should_switch);
  
} else {
	set_victory_theme( sound_get("Next_Color_Planet_results_by_NitroAnilin"));
	awesome = false;
	//set_synced_var(player, awesome * 10 + should_switch);
}

if (tetris_hit == true)
{
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
}
else
{
	reset_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE);
}

with (hit_fx_obj) if (hit_fx == other.axesmall || hit_fx == other.axebig || hit_fx == other.musicsmall || other.musiclarge) depth = other.depth - -1;

with (hit_fx_obj) if (step_timer == 1 && hit_fx == other.musicsmall)
{
    hit_length = (other.attack == AT_JAB || other.attack == AT_FSPECIAL) ? 14 : 21;
}

with (hit_fx_obj) if (hit_fx == other.axesmall)
{
    hit_length = (other.attack == AT_BAIR || other.attack == AT_DTILT) ? 14 : 21;
}

if sound_timer{
	sound_timer--;
	suppress_stage_music( 0.2, 0.05);
}

if music_suppress{
	music_suppress--;
}

/*if get_gameplay_time() == 10 {
	sound_play(sound_get("suisei_intro"));
}*/

	
