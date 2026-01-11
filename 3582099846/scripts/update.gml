//Play Sound Every Few Steps

if state_timer mod 60 == 10 && state == PS_WALK{
    sound_play(sound_get("sfx_sb_step_l"));
}

if state_timer mod 60 == 40 && state == PS_WALK{
    sound_play(sound_get("sfx_sb_step_r"));
}

if state_timer mod 42 == 7 && state == PS_DASH{
    sound_play(sound_get("sfx_sb_step_l"));
}

if state_timer mod 42 == 28 && state == PS_DASH{
    sound_play(sound_get("sfx_sb_step_r"));
}

if state_timer == 1 && state == PS_DASH_TURN{
    sound_stop(sound_get("SB_dash_turn"));
    sound_play(sound_get("SB_dash_turn"));
}

if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    sound_stop(sfx_hold)
    
}    

if (state_timer == 1 && state != PS_DASH_TURN)
    sound_stop(sound_get("SB_dash_turn"));

//have the taunt not be available when respawn (for now)    
if state == PS_RESPAWN {
	move_cooldown[AT_TAUNT] = 2;
	if taunt_pressed respawn_taunt = 1;
}

//bair hsp limiting
if(attack == AT_BAIR && state == PS_ATTACK_AIR && window == 2){
	if(window_timer == 0) hsp = clamp(abs(hsp), 7, 12) * -spr_dir;
	if(abs(hsp) > 0) fair_hsp = hsp;
}


//voice
if sb_voiced == true{
    user_event ( 0 );
}

//Death sounds
death_voice = random_func(0, 2, true);

//For Original Scaled Down Size
//small_sprites = true;

//This creates the explosion hitbox for bubble bomb 
with (hit_fx_obj) if (player == other.player) 
{
    if hit_fx == other.hfx_nspecial_explode
    {
        if step_timer == 6
        {
            with other
            {
            	create_hitbox(AT_NSPECIAL, 4, other.x, other.y);
            	sound_play(asset_get("sfx_mol_huge_explode"), false, noone, 1.8, 1.3);
            	sound_play(asset_get("sfx_bubblespray"), false, noone, 1, 1.5);
             
            }
        }
    }
}

with(oPlayer) if "spongebob_grab_hitbox" in self {
	// if(enemy_hitboxID > 0 && !perfect_dodging && enemy_hitboxID.player_id == other && enemy_hitboxID.attack == AT_USPECIAL && enemy_hitboxID.hbox_num > 1 && enemy_hitboxID.hbox_num < 7){
	// 	spongebob_grab_hitbox = enemy_hitboxID;
	// }
	if(instance_exists(spongebob_grab_hitbox) && hitpause){
		var hsped = lengthdir_x(point_distance(x,y-char_height/2,spongebob_grab_hitbox.x,spongebob_grab_hitbox.y)/3,point_direction(x,y-char_height/2,spongebob_grab_hitbox.x,spongebob_grab_hitbox.y));
		var vsped = lengthdir_y(point_distance(x,y-char_height/2,spongebob_grab_hitbox.x,spongebob_grab_hitbox.y)/3,point_direction(x,y-char_height/2,spongebob_grab_hitbox.x,spongebob_grab_hitbox.y));
		x += hsped;
		y += vsped;
	}
}