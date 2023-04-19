if (attack == AT_FSPECIAL && !instance_exists(player_id.pellet)){
    hitbox_timer = 999;
}

if (attack == AT_DSPECIAL && hbox_num == 2){
    
        if (instance_exists(player_id.hydrant)){
    	player_id.hydrant.should_die = true;
        }
    if (hsp != 0){
    proj_angle -= hsp*1.5;
    } else {
        proj_angle -= 10*spr_dir;
    }
    if (hitbox_timer == 80){
        spawn_hit_fx(x, y - 16, 144);
        player_id.hydrant_cooldown = 0;
    }
    var tramp = player_id.trampoline;
    if (instance_exists(tramp) && place_meeting(x, y, tramp) && tramp.bounces < 2 && tramp.state == 1){
            hitbox_timer -= 15;
            y = tramp.y - 36;
            vsp = 0;
            vsp = tramp.bounce_vsp;
        	tramp.bounces += 1;
        	tramp.state = 2;
        	tramp.state_timer = 0;
        	sound_play(player_id.tramp_jump);
    }
    var tramp = player_id.trampoline;
    if (instance_exists(tramp) && place_meeting(x, y, tramp) && tramp.bounces == 2 && tramp.state == 1){
        	tramp.break_tramp = true;
    }
}

if (attack == AT_DSPECIAL && hbox_num = 1){
    var tramp = player_id.trampoline;
    if (instance_exists(tramp) && place_meeting(x, y, tramp) && tramp.bounces < 2 && tramp.state == 1){
        	var loose_hyd = create_hitbox(AT_DSPECIAL, 2, x, y);
        	loose_hyd.vsp = tramp.bounce_vsp;
        	loose_hyd.hsp = 0;
        	loose_hyd.spr_dir = 1;
        	tramp.bounces += 1;
        	tramp.state = 2;
        	tramp.state_timer = 0;
        	sound_play(player_id.tramp_jump);
        	destroyed = true;
        	if (instance_exists(player_id.hydrant)){
        	    player_id.hydrant.should_die = true;
        	}
    }
    var tramp = player_id.trampoline;
    if (instance_exists(tramp) && place_meeting(x, y, tramp) && tramp.bounces == 2 && tramp.state == 1){
        	tramp.break_tramp = true;
    }
}

if (attack == AT_DSPECIAL && hbox_num >2 && instance_exists(player_id.hydrant)){
    spr_dir = 1;
    draw_xscale = spr_dir;
    hit_effect = 1;
    can_hit_self = true;
    for (var p = 0; p < array_length(can_hit); p++)
    can_hit[p] = true;
}

if (attack == AT_NSPECIAL){
    
}