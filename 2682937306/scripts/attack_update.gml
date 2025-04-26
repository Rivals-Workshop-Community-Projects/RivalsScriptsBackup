//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Buffing ---
//Damage by 5
//Knockback by 2
//Hitstun by 1
if (attack == AT_DATTACK){
if (buffup == false){
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 3);

set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 6);
} else {
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 7);
	}
}

if (attack == AT_NAIR){
if (buffup == false){
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);

set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
} else {
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
	}
}

if (attack == AT_UAIR){
if (buffup == false){
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
} else {
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
	}
}

if (attack == AT_FAIR){
if (buffup == false){
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
} else {
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
	}
}

if (attack == AT_DAIR){
if (buffup == false){
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
} else {
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
	}
}

if (attack == AT_BAIR){
if (buffup == false){
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 4);
} else {
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
	}
}

if (attack == AT_USTRONG){
if (buffup == false){
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 3);

set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 3);

set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 3);

set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 3);
} else {
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 4);
	}
}

if (attack == AT_DSTRONG){
if (buffup == false){
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);

set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);

set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 4);
} else {
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 17);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 9);

set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 17);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 9);

set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 5);

set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 5);
	}
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
    if (window == 3 && window_timer == 1 && hitpause == false && instance_exists(poison_id) == false){
    poison_id = instance_create(x+80 * spr_dir, y-30, "obj_article1");
	//poison_id.spr_dir = spr_dir;
	poison_id.player_id = id;
	poison_id.state = 0;
	poison_id.state_timer = 0;
	move_cooldown[AT_DSPECIAL] = 20;
    }
    if (window == 1 && instance_exists(poison_id) == true){
        window = 4;
        window_timer = 0;
    }
}

if (attack == AT_NSPECIAL){
    if (window == 2){
        if (window_timer == 1){
            tornado_id = create_hitbox(AT_NSPECIAL, 1, x, y-40);
            
            tornadowind_id = instance_create(x, y-40, "obj_article1");
			tornadowind_id.player_id = id;
			tornadowind_id.state = 8;
			tornadowind_id.state_timer = 0;
        }
    }
    can_fast_fall = false;
    can_move = false;
}

if (attack == AT_USPECIAL){
	if (window <= 3){ can_move = false; }
    if (window == 1){ tilt = 0; }
    if (window == 2){
        if (window_timer <= 1){
		floor_id = instance_create(x, y, "obj_article1");
		floor_id.spr_dir = spr_dir;
		floor_id.player_id = id;
		floor_id.state = 5;
		floor_id.state_timer = 0;
    	}
    }
    if (window == 3){
        if (window_timer >= 2 && tilt == 0 && (hitpause == false || hitstop == false)){ window = 4; window_timer = 0; hsp = 0; vsp = -17; }
        if (window_timer >= 1 && tilt != 0 && (hitpause == false || hitstop == false)){ window = 5; window_timer = 0; hsp = 12 * spr_dir; vsp = -17; }
        if (left_down && spr_dir == -1){ tilt = 1; }
        if (right_down && spr_dir == 1){ tilt = 1; }
        if (joy_pad_idle == true){ tilt = 0; }
    }
    if (window == 4 || window == 5){
    	if (window_timer == 0 && hitpause == false){
    	plant_id = instance_create(x, y, "obj_article1");
		plant_id.spr_dir = spr_dir;
		plant_id.player_id = id;
		plant_id.state = 4;
		plant_id.state_timer = 0;
    	}
    }
    if (window == 5 && window_timer <= 1 && tilt == 1 && !(hitstop > 0 && hitpause == true)){
    	x = x+10 * spr_dir;
    }
    if (window > 3){ can_wall_jump = true; can_move = true; }
}

if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    can_move = false;
    
    var fly_dir = point_direction(0,0,hsp,vsp);
    var fly_dist = point_distance(0,0,hsp,vsp);
    var max_speed = 6;
    if (fly_dist > max_speed){
    	hsp = lengthdir_x(max_speed, fly_dir);
    	vsp = lengthdir_y(max_speed, fly_dir);
    }
    
    if (white_flash_timer == 11){ sound_play(asset_get("sfx_boss_shine")); var drained = spawn_hit_fx(x-15 * spr_dir, y-40, drain_heal); drained.depth = -10; }
}

if (attack == AT_DTILT){
	if (window == 1 ){ pellets = 0; }
    if (attack_down && down_down || down_stick_down ){
        if (pellets < 5 && window == 3 && window_timer < 5){ window = 2; window_timer = 0; pellets++; }
    }
}

if (attack == AT_DSTRONG){
	if (window == 4){ shake_camera( 1, 1 ); }
	if (window == 3 && window_timer == 1){
	earthquake_L = instance_create(x-40, y-34, "obj_article1");
	earthquake_L.player_id = id;
	earthquake_L.state = 6;
	earthquake_L.state_timer = 0;
	
	earthquake_R = instance_create(x+40, y-34, "obj_article1");
	earthquake_R.player_id = id;
	earthquake_R.state = 7;
	earthquake_R.state_timer = 0;
	}
}

var rock_pos = random_func( 10, 50, true );
if (attack == AT_USTRONG){
    if (window == 1){ var rock_pos = random_func( 1, 100, true ); }
    if (window == 2){
        if (window_timer == 2){ create_hitbox(AT_USTRONG, 1, x - rock_pos, y-40); }
        if (window_timer == 7){ create_hitbox(AT_USTRONG, 2, x + rock_pos, y-40); }
        if (window_timer == 12){ create_hitbox(AT_USTRONG, 3, x - rock_pos, y-40); }
        if (window_timer == 17){ create_hitbox(AT_USTRONG, 4, x + rock_pos, y-40); }
    }
}