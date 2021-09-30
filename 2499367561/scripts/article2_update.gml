//acticle2_update

with (asset_get("pHitBox")){
	if (place_meeting(x, y, other) ){
		if(player_id != other.player_id && other.gotHit_timer <= 0 && attack != AT_DSPECIAL && other.gotHit_timer <= 0){
		    other.player_id.shield_size -= 0.15 + damage / 150
		    other.player_id.old_hsp = hsp
		    other.player_id.old_vsp = vsp
		    other.player_id.hitpause = true
		    other.player_id.hitstop_full = hitpause
		    other.player_id.hitstop = hitpause
		    other.gotHit_timer = 25
		    if(type != 2){
			    player_id.old_hsp = hsp
			    player_id.old_vsp = vsp
			    player_id.hitpause = true
			    player_id.hitstop_full = damage * 2.5
			    player_id.hitstop = damage * 2.5
		    }
		    sound_play(asset_get("sfx_clairen_tip_med"))
		    spawn_hit_fx(lerp(x, other.x, 0.5), lerp(y, other.y, 0.5), hit_effect)
		    instance_destroy(pHitBox)
		    exit;
		}
	}
}

if(player_id.shield_size <= 0.55){
    player_id.shield_broken = true
    sound_play(asset_get("sfx_icehit_heavy1"))
    player_id.shield_size = 0.75
    player_id.attack = AT_EXTRA_2
    player_id.vsp = -6
    player_id.old_vsp = -6
    player_id.window = 1
    player_id.window_timer = 0
    player_id.state_timer = 0
    instance_destroy();
    exit;
}

if(!(player_id.attack == AT_EXTRA_1 && player_id.state == PS_ATTACK_GROUND || player_id.attack == AT_EXTRA_1 && player_id.state == PS_ATTACK_AIR)){
	instance_destroy();
	exit;
}

if(player_id.window != 1 && player_id.window != 3){
	image_xscale = player_id.shield_size
	image_yscale = player_id.shield_size
}else if(player_id.window == 1){
	image_xscale = lerp(image_xscale, player_id.shield_size, 0.25)
	image_yscale = image_xscale
}else if(player_id.window == 3){
	image_xscale = lerp(image_xscale, 0, 0.25)
	image_yscale = image_xscale
}

if(player_id.window == 2){
	player_id.shield_size -= 0.0028
}

x = player_id.x 
y = player_id.y - 40

gotHit_timer--
