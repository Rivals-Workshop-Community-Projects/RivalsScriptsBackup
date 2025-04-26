hit_player_obj.decay_info.player = -1
hit_player_obj.decay_info.timer = 0;
hit_player_obj.outline_color = [0, 0, 0]

with hit_player_obj init_shader();

var minion_attack = (my_hitboxID.attack == AT_EXTRA_3 and my_hitboxID.hbox_num > 3);
var attack_while_minion_exists = instance_exists(minion_obj) and !(minion_obj.state == PS_BURIED or minion_obj.state == PS_SPAWN)

if minion_attack or attack_while_minion_exists {
    var incubation_already_zero = minion_obj.incubation <= 0
    minion_obj.incubation -= my_hitboxID.attack == AT_EXTRA_3 ? 25 : 13;
    
    if minion_obj.incubation <= 0 and !incubation_already_zero {
		with minion_obj {
    		spawn_hit_fx(x,y + death_vfx_offset, player_id.minion_death_vfx).depth = depth+1
    		sound_play(sound_get("sfx_deracine_minion_death_shing")) 
		}
    }
}

//Minion attack
if my_hitboxID.attack == AT_EXTRA_3 {
    minion_obj.was_parried = true;
} else {
    if instance_exists(minion_obj) and (minion_obj.state != PS_BURIED and minion_obj.state != PS_DEAD and minion_obj.state != PS_SPAWN and minion_obj.state != PS_ATTACK_GROUND)
    {
        minion_obj.state = PS_HITSTUN_LAND;
        minion_obj.minion_sprite_index = minion_state_info[? minion_obj.state].sprite;
        minion_obj.minion_image_index = 0;
        minion_obj.state_timer = 0;
        minion_obj.lock_state = true;
    }
}

with pHitBox {
    if attack == AT_FSPECIAL and type == 2 and player_id == other {
        destroyed = true;
    }
}

if my_hitboxID.attack == AT_DSPECIAL{
	if my_hitboxID.hbox_num <= 6{
		window = 3;
    	window_timer = 0;
	}
}