//hitbox_update


if (attack == AT_FSPECIAL) and (hbox_hitstop > 0){
    in_hitpause = true;
    hbox_hitstop --;
}
else in_hitpause = false;

if attack == AT_NSPECIAL && hbox_num != 5 {
	var other_hit = false;
	with(pHitBox){
		if(self != other && player_id != other.player_id && type == 1 && !proj_break && place_meeting(x, y, other)){
			other_hit = true;
		}
	}
	transcendent = !other_hit;
	
   // if hbox_num == 1 {
  	//   if hitbox_timer % 10 == 0{
  	// sound_play(asset_get("sfx_swipe_medium1"),false,noone,0.8) 
  	//   }
   // }
  	// if hbox_num == 2 {
  	//   if hitbox_timer == 2{
  	// sound_play(asset_get("sfx_swipe_medium2"),false,noone,1.2) 
  	//   }
  	// }
}

if(attack == AT_DSPECIAL && hbox_num == 1){
	if player_id.state == PS_DEAD || player_id.state == PS_RESPAWN || player_id.respawn_taunt { destroyed = true; spawn_hit_fx(x, y, HFX_SHO_FLAME_SMALL); }
	player_id.move_cooldown[AT_DSPECIAL] = 30 + was_parried * 60;
	if (vsp >= 0 && has_bounced) || (!was_parried && hitbox_timer > 6 && player_id.down_down && player_id.special_pressed){
		if (hitbox_timer > 6 && player_id.down_down && player_id.special_pressed) with(player_id) clear_button_buffer(PC_SPECIAL_PRESSED);
		destroyed = true;
		if !was_parried player_id.lamp = instance_create(x, y, "obj_article2");
		var hfx = spawn_hit_fx(x, y, HFX_SHO_FLAME_SMALL);
		if !was_parried hfx.depth = player_id.lamp.depth - 1;
		sound_play(asset_get("sfx_burnapplied"));
	}
	if(free && place_meeting(x + 2 + hsp, y - 1, asset_get("par_block"))){
		hsp *= -1;
		spr_dir *= -1;
		draw_xscale *= -1;
		vsp = -6;
		has_bounced = true;
		sound_play(asset_get("sfx_zap"));
		sound_play(asset_get("sfx_shovel_hit_med2"));
		spawn_hit_fx(x, y, HFX_SHO_FLAME_SMALL);
	}
	if(!free && !has_bounced){
		vsp = -6;
		has_bounced = true;
		sound_play(asset_get("sfx_zap"));
		sound_play(asset_get("sfx_shovel_hit_med2"));
		spawn_hit_fx(x, y, HFX_SHO_FLAME_SMALL);
	}
	if(!destroyed && !instance_exists(oTestPlayer) && 
	(x > get_stage_data(SD_RIGHT_BLASTZONE_X) || x < get_stage_data(SD_LEFT_BLASTZONE_X) || y > get_stage_data(SD_BOTTOM_BLASTZONE_Y))){
		destroyed = true;
	}
}


//Lantern Fire Trail
if (attack == AT_DSPECIAL && hbox_num == 1){
	var lanterntrail = hit_fx_create( sprite_get( "fire_trail" ), 16 );
	if (hitbox_timer%5==1){ //for each 8 frames, a frame goes up in the strip
		spawn_hit_fx( x-10*spr_dir, y-20, lanterntrail);
	}
}


/*
//Spawn Lantern When Projectile Breaks
if (attack == (43)) || (attack == (45)){
	if (hbox_num == 1){
		if (!free) || (hitbox_timer == 40){
		destroyed = true;
		}
		if (destroyed){
          	lamp=instance_create(x + 1*spr_dir, y + 0, "obj_article2" ); //SPAWNS REMNANT
        	lamp.anim_timer=0;
        	lamp.state_timer=0;
        	lamp_number++;
		}
	}
}
if (attack == (44)){
	if (hbox_num == 1){
		if (!free) || (hitbox_timer == 60){
		destroyed = true;
		}
		if (destroyed){
          	lamp=instance_create(x + 1*spr_dir, y + 0, "obj_article2" ); //SPAWNS REMNANT
        	lamp.anim_timer=0;
        	lamp.state_timer=0;
        	lamp_number++;
		}
	}
}*/



