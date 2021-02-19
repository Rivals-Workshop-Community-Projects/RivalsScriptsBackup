//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if ((attack == AT_JAB && window < 4) || attack == AT_FTILT) {
    char_height = 64;
}

if ((attack == AT_JAB && window > 4) || attack == AT_UTILT || attack == AT_FSTRONG || attack == AT_USTRONG
|| attack == AT_NAIR || attack == AT_BAIR || attack == AT_DAIR || attack == AT_UAIR || attack == AT_FSPECIAL){
    char_height = 70;
}

if (attack == AT_DSTRONG || attack == AT_FAIR || attack == AT_NSPECIAL || attack == AT_DSPECIAL 
|| attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL){
    char_height = 76;
}

// Dash Attack Ledge Cancel
if (attack == AT_DATTACK && free){
    can_jump = true;
    can_shield = true;
}

if (attack == AT_DATTACK && window > 1 && window_timer > 4 && (runeG || has_rune("G"))){
    can_jump = true;
    can_shield = true;
    can_attack = true;
    can_special = true;
    can_strong = true;
    can_ustrong = true;
}

// Strongs Visuals
if (runeL){
	{
if (attack == AT_FSTRONG && window == 2 && window_timer == 2){
    spawn_hit_fx( x+(100*spr_dir), y-52, 143);
}

if (attack == AT_DSTRONG && window == 3 && window_timer == 1 && !hitpause){
    spawn_hit_fx( x+(82*spr_dir), y-48, 143);
    spawn_hit_fx( x+(-62*spr_dir), y-48, 143);
}

if (attack == AT_USTRONG && window == 3 && window_timer == 1 && !hitpause){
    spawn_hit_fx( x+(8*spr_dir), y-162, 143);
}
}

}
if (!runeL){
	{
if (attack == AT_FSTRONG && window == 2 && window_timer == 2){
    spawn_hit_fx( x+(50*spr_dir), y-26, 115);
}

if (attack == AT_DSTRONG && window == 3 && window_timer == 1 && !hitpause){
    spawn_hit_fx( x+(41*spr_dir), y-24, 254);
    spawn_hit_fx( x+(-31*spr_dir), y-24, 254);
}

if (attack == AT_USTRONG && window == 3 && window_timer == 1 && !hitpause){
    spawn_hit_fx( x+(4*spr_dir), y-81, 254);
}
}	
}


// NSpecial - Giant Punch
{
if (attack == AT_NSPECIAL && window == 2){
    can_jump = true;
    can_shield = true;
    punch_timer++;
    punch_charging = true;
    
    if (special_pressed && punch_charged = false){
        window_timer = 0;
        window = 3;
        punch_charging = false;
        punch_charged = false;
    }
    
    if (punch_timer > 120 && punch_charged = false){
        window = 4;
        punch_charging = false;
        punch_charged = true;
    }
    
    if (window_timer == 2){
        sound_play(asset_get("sfx_spin"));
    }
    
    
    
}

if (attack == AT_NSPECIAL && window == 3){
    punch_timer = 0;
}

if (attack == AT_NSPECIAL && window == 2 && punch_charged = true){
    window = 3;
    punch_charged = false;
}


}

// DSpecial - Hand Slap
if (attack == AT_DSPECIAL && window == 2 && (window_timer == 4 || window_timer == 12)){
	if (runeL){
		spawn_hit_fx( x+(-40*spr_dir), y-22, 154);
        spawn_hit_fx( x+(110*spr_dir), y-22, 154);
	}
	if (!runeL){
		spawn_hit_fx( x+(-10*spr_dir), y-22, 154);
        spawn_hit_fx( x+(50*spr_dir), y-22, 154);
	}
	sound_play(asset_get("sfx_kragg_rock_land"));
    }
    
    
if (attack == AT_DSPECIAL && window == 2 && window_timer == 4){
	barrel.barrel_hitbox.destroyed = true;
	barrel.state_timer = 29;
	if (spr_dir = 1){
		barrel.state += 1;	
	}
	if (spr_dir = -1){
		barrel.state -= 1;
		if (barrel.state < 0){
			barrel.state = 7;
		}
	}
	
}    
    
// FSpecial - Cargo Throw   
{
if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (window > 2 && grabbedid != noone){
//        hit = false;e
        draw_indicator = false;
	grabbedid.ungrab = 0;
        window_timer++; //DELETE THIS LINE TO LIMIT HOW LONG THE GRAB IS TO THE WINDOW LENGTH
        grabbedid.invincible = false; //DELETE THIS LINE TO MAKE THE GRABBED PLAYER HITTABLE
        grabbedid.visible = true; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        grabbedid.x = x + spr_dir * 2; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        if (runeL){
        	grabbedid.y = y - 170; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y	
        }
        if (!runeL) {
        	grabbedid.y = y - 60; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        }
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 6000;
        grabbedid.state = PS_WRAPPED;
        cargo_timer--;
        if(cargo_timer < 1 || hit_player_obj.clone = true){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
            grabbedid.state = PS_TUMBLE;
            grabbedid.x = x + spr_dir * 50;
            grabbedid.y = y - 50;
            grabbedid = noone;
            window = 15;
            hsp = -8*spr_dir;
            attack = AT_JAB;
        }
        can_shield = true;
    }
}

if (let_go = false){
if (attack == AT_FSPECIAL && window > 2 && grabbedid.state = PS_WRAPPED){
    if (right_down && !free){
        spr_dir = 1
        window = 5;
    }
    if (left_down && !free){
        spr_dir = -1
        window = 6;
    }
    if (joy_pad_idle && (!up_down || !down_down) && !attack_pressed){
        window = 4;
    //    window_timer = 0;
    }
    if (jump_pressed && !free){
        window = 7;
    }
    if ((((spr_dir == 1 && right_down) || (spr_dir == -1 && left_down) || joy_pad_idle) && attack_pressed)
    || ((spr_dir == 1 && right_strong_pressed) || (spr_dir == -1 && left_strong_pressed))){
        window = 9;
        grabbedid.x = x + spr_dir * 30;
        grabbedid.y = y - 30;
        if (window = 9 && window_timer = 8){
                    let_go = true;
                    create_hitbox( AT_TAUNT, 1, grabbedid.x, grabbedid.y);
                    create_hitbox( AT_TAUNT, 1, grabbedid.x, grabbedid.y);
                    
        }
    }
    if ((up_down && attack_pressed) || (up_strong_pressed)){
        window = 10;
        grabbedid.x = x + spr_dir * 2;
        grabbedid.y = y - 70;
        if (window = 10 && window_timer = 8){
                    let_go = true;
                    create_hitbox( AT_TAUNT, 2, grabbedid.x, grabbedid.y);
                    create_hitbox( AT_TAUNT, 2, grabbedid.x, grabbedid.y);
        }
    }
    if ((((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)) && attack_pressed)
    || ((spr_dir == -1 && right_strong_pressed) || (spr_dir == 1 && left_strong_pressed))){
        window = 11;
        grabbedid.x = x + spr_dir * -30;
        grabbedid.y = y - 30;
        if (window = 11 && window_timer = 8){
            let_go = true;
                    create_hitbox( AT_TAUNT, 3, grabbedid.x, grabbedid.y);
                    create_hitbox( AT_TAUNT, 3, grabbedid.x, grabbedid.y);
                    
        }
    }
    if ((down_down && attack_pressed) || (down_strong_pressed)){
        window = 12;
        grabbedid.x = x + spr_dir * 10;
        grabbedid.y = y;
        if (window = 12 && window_timer = 8){
                    let_go = true;
                    create_hitbox( AT_TAUNT, 4, grabbedid.x, grabbedid.y);
                    create_hitbox( AT_TAUNT, 4, grabbedid.x, grabbedid.y);
        }
    }
    if (down_down){
        fall_through = true;
    }
    if (!down_down) {
        fall_through = false;
    }
}
}

if (let_go = true){
	draw_indicator = true;
        move_cooldown[AT_JAB] = 12;
        move_cooldown[AT_DATTACK] = 12;
        move_cooldown[AT_FTILT] = 12;
        move_cooldown[AT_DTILT] = 12;
        move_cooldown[AT_UTILT] = 12;
        move_cooldown[AT_FSTRONG] = 12;
        move_cooldown[AT_USTRONG] = 12;
        move_cooldown[AT_DSTRONG] = 12;
        move_cooldown[AT_FAIR] = 12;
        move_cooldown[AT_BAIR] = 12;
        move_cooldown[AT_UAIR] = 12;
        move_cooldown[AT_DAIR] = 12;
        move_cooldown[AT_NAIR] = 12;
        move_cooldown[AT_FSPECIAL] = 45;
    window = 13;
    if (attack_pressed || special_pressed || right_strong_pressed 
    || left_strong_pressed || up_strong_pressed || down_strong_pressed){
        cargo_timer = 60;
        let_go = false;
    }
}
}


if (attack == AT_USPECIAL && window == 1){
	barrel.sprite_index = sprite_get("nothing");
	barrel_explode = false;
	launch_now = false;
	barrel.shoulddie = true;
}

if (attack == AT_USPECIAL_2){
	barrel.x = 900;
	barrel.y = 900;
	barrel.barrel_hitbox.destroyed = true;
	move_cooldown[AT_USPECIAL] = 15;
	barrel.sprite_index = sprite_get("nothing");
	barrel_explode = false;
	launch_now = false;
	barrel.shoulddie = true;
}

if (attack == AT_USPECIAL && window == 2){
	barrel = instance_create(x,y,"obj_article1");
	if (up_down || joy_pad_idle){
		barrel.state = 0;
	}
	if (up_down && right_down){
		barrel.state = 1;
	}
	if (right_down && !up_down && !down_down){
		barrel.state = 2;
	}
	if (down_down && right_down && !left_down){
		barrel.state = 3;
	}
	if (down_down && !right_down && !left_down){
		barrel.state = 4;
	}
	if (down_down && !right_down && left_down){
		barrel.state = 5;
	}
	if (left_down && !up_down && !down_down){
		barrel.state = 6;
	}
	if (up_down && left_down){
		barrel.state = 7;
	}
	move_cooldown[AT_USPECIAL] = 9999;
}




