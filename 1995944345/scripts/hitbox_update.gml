//sound_play(asset_get("mfx_star"))
if attack == AT_DAIR && hbox_num == 1 {
	if !free {
		spawn_hit_fx(x,y,player_id.fx_sprites[7])
		sound_play(asset_get("sfx_abyss_hazard_burst"))
		create_hitbox(attack,2,x,y-20)
		instance_destroy();
	}
}
if attack == AT_NSPECIAL_2 {
	oldplayer.move_cooldown[attack] = 40
	oldplayer.selfstab_hbox = id
	if !was_parried && hitbox_timer mod 8 == 5 {
		var ins = instance_create(x,y,"obj_article2")
		ins.player_id = oldplayer
		ins.timer = 2
		ins.image_xscale = 0
	}





}

if attack == AT_DSPECIAL && hbox_num == 1{
	proj_angle -= 10*sign(hsp);
	if y > room_height+64 destroyed = 1;
	player_id.move_cooldown[attack]++;
	if !free && (position_meeting(x,bbox_bottom+8, asset_get("par_block")) or position_meeting(x,bbox_bottom+8, asset_get("par_jumpthrough"))){
			if !was_parried {
			
			player_id.mushins = instance_create(x,bbox_bottom-1,"obj_article1");
			player_id.mushins.damagelim = (floor(30 + min(get_player_damage(player_id.player),100)*0.2))+(player_id.runeB*15)
			player_id.mushins.player_id = player_id
			player_id.mushins.state = -1;
			player_id.mushins.vsp = 10
			sound_play(asset_get("sfx_syl_nspecial_plantgrowth"))
			sound_play(asset_get("sfx_plant_ready"))
			}
			instance_destroy(); exit;
		}
		
	
}
if attack == AT_FSPECIAL {

			x = player_id.x+(player_id.fspecial_nodex*spr_dir)
			y = player_id.y+player_id.fspecial_nodey

}
if attack == AT_FSPECIAL && place_meeting(x,y,asset_get("par_block")) with (player_id) {
	if fspecial_dontcheese < 5 {
		fspecial_dontcheese += 1;
		set_attack(AT_FSPECIAL_2);
		sound_play(asset_get("sfx_frog_dspecial_hit_ground"))
		fspecial_target = id;
		instance_destroy(other);
	} else if fspecial_dontcheese == 5 {
		sound_play(asset_get("mfx_tut_fail"))
		fspecial_dontcheese = 6;
	}
}