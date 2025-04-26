
if state == PS_HITSTUN {
	outline_color = [ 0, 0, 0];
}

if state == PS_SPAWN {
	can_move = false;
}

if uspecialhasgrabbed = true && (!free || state == PS_HITSTUN) {
	uspecialhasgrabbed = false;
}

if uspecialgrabbed = true && (!free || state == PS_WALL_JUMP) {
	uspecialgrabbed = false;
}

if attack == AT_FSPECIAL && state == PS_ATTACK_AIR {
    move_cooldown[AT_FSPECIAL] = 999;
} else if !free || state == PS_HITSTUN || state == PS_WALL_JUMP || has_hit {
	move_cooldown[AT_FSPECIAL] = 0;
}


if attack == AT_DSPECIAL_AIR && window == 4 && window_timer == 1 || (window == 5){
        move_cooldown[AT_DSPECIAL_AIR] = 35;
}

if attack == AT_NSPECIAL && window == 3 && window_timer == 1{
	move_cooldown[AT_NSPECIAL] = 250;
}

if(attack == AT_DSPECIAL_AIR && state == PS_ATTACK_AIR){
    move_cooldown[AT_DSPECIAL_AIR] = 999;
} else if !free || state == PS_HITSTUN || state == PS_WALL_JUMP {
	move_cooldown[AT_DSPECIAL_AIR] = 0;
}

if blastzonedestroy = true {
	set_state( PS_PRATFALL );
	blastzonedestroy = false;
}

if	move_cooldown[AT_NSPECIAL] > 0 && move_cooldown[AT_NSPECIAL] < 240 && (special_pressed || special_down) && nspecialtap = false {
	nspecialtap = true;
} else {
	nspecialtap = false;
}

if nspecialtap2 = true {
	nspecialtap = false;
}

if move_cooldown[AT_NSPECIAL] = 1{
	sound_play(sound_get("dstrong"))
}

if (bubbleexists = true) {
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_AIR  {
		if (instance_exists(bubblearticle) && bubblearticle != 0){
		if (bubblearticle.state != 0) {
	dspecialairattack = true;
		}
}
} else {
	dspecialairattack = false;
}
} 

if (bubbleexists = true) {
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL) {
		if (instance_exists(bubblearticle) && bubblearticle != 0){
		if (bubblearticle.state != 0) {
	dspecialattack = true;
		}
} 
} else {
	dspecialattack = false;
}
} 

if (bubbleexists = true) {
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL) {
		if (instance_exists(bubblearticle) && bubblearticle != 0){
		if (bubblearticle.state != 0) {
	fspecialattack = true;
		}
} 
} else {
	fspecialattack = false;
}
} 

if (bubbleexists = true) {
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL) {
		if (instance_exists(bubblearticle) && bubblearticle != 0){
		if (bubblearticle.state != 0) {
	uspecialattack = true;
		}
} 
} else {
	uspecialattack = false;
}
} 

if (bubbleexists = true) {
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL_2) {
		if (instance_exists(bubblearticle) && bubblearticle != 0){
		if (bubblearticle.state != 0) {
	fspecial2attack = true;
		}
} 
} else {
	fspecial2attack = false;
}
} 


		if fspecialgrabconfirm = true {    
       		var outline = (sin((get_gameplay_time() - 50) * 0.03) * -100) + 150
    		outline_color = [ 238, 83, 19];
    		init_shader();
		} else {
			outline_color = [ 0, 0, 0];
		}
		
		if uspecialgrabconfirm = true {    
       		var outline = (sin((get_gameplay_time() - 50) * 0.03) * -100) + 150
    		outline_color = [ 238, 83, 19];
    		init_shader();
		} else {
			outline_color = [ 0, 0, 0];
		}
		
/*
if attack == AT_FSPECIAL && window == 2 {
	if up_down {
	//up
		fspecialdirection = 1;
	} else if (left_down && spr_dir = 1)  || (right_down && spr_dir = -1) {
	//back
		fspecialdirection = 2;
	} else if down_down {
	//down
		fspecialdiretion = 3;
	} else if (left_down && spr_dir = -1)  || (right_down && spr_dir = 1) {
	//forward
		fspecialdirection = 4;
	}
}
*/

