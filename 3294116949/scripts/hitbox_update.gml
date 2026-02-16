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
	
	if(hitbox_timer >= 1){
		if hbox_num == 1 {
			kb_value -= 0.2;
		}
		if hbox_num == 4 {
			kb_value -= 0.3;
		}
	}
	
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
	player_id.move_cooldown[AT_DSPECIAL] = 30 + (was_parried || player != player_id.player) * 70;
	if (vsp >= 0 && has_bounced) || (!was_parried && hitbox_timer > 6 && player_id.down_down && player_id.special_pressed){
		if (hitbox_timer > 6 && player_id.down_down && player_id.special_pressed) with(player_id) clear_button_buffer(PC_SPECIAL_PRESSED);
		destroyed = true;
		if player == player_id.player player_id.lamp = instance_create(round(x), round(y), "obj_article2");
		var hfx = spawn_hit_fx(x, y, HFX_SHO_FLAME_SMALL);
		if player == player_id.player hfx.depth = player_id.lamp.depth - 1;
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
	if !destroyed with(pHitBox) if(self != other && player != other.player && player_id != other.player_id && place_meeting(x, y, other) && type == 1) {
		other.player = player;
		other.was_parried = true;
		other.has_bounced = false;
		other.vsp = min(other.vsp, -other.vsp);
		other.hsp *= -1;
		other.spr_dir *= -1;
		other.draw_xscale *= -1;
		other.free = true;
		other.y -= other.vsp;
		sound_play(asset_get("sfx_shovel_hit_med2"));
		var hfx = spawn_hit_fx((player_id.x + other.x)/2, (player_id.y - player_id.char_height/2 + other.y)/2, HFX_SHO_FLAME_SMALL);
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
	if (hitbox_timer%5==1){ //for each 8 frames, a frame goes up in the strip
		var hfx = spawn_hit_fx( x-0*spr_dir, y-20, player_id.lanterntrail);
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

if(attack == AT_USPECIAL && hbox_num == 5){
	airstall_cooldown = 1;
}

