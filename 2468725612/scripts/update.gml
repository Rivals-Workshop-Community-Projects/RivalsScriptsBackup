if (!custom_clone){
    user_event(14);


if (lockout_timer <= 5){
    lockout_timer++;    
}

if (hologram_exists == false){
	hologram_start = true;
}


//Spawn Hologram at the start
if (hologram_start == true){
    hologram = instance_create( x, y, "oPlayer");
    hologram_start = false;
}

//Hologram is not active
if (hologram_is_alive == false){
   hologram.state = PS_IDLE;
   hologram.visible = false;
   hologram.invincible = true;
   if (state == PS_TUMBLE){
      hologram.x = x + 80*(spr_dir); 
   }
   else {
       hologram.x = x; 
   }
   
   hologram.y = y-80;
   hologram.hurtboxID.sprite_index = asset_get("empty_sprite");
}


//Hologram is active
if (hologram_live == true){
    hologram.spr_dir = hologram_dir;
    hologram.visible = true;
    hologram.x = hat_x;
    hologram.y = hat_y + 70;
    hologram_is_alive = true;
    hologram_live = false;
    hologram.dont_tumble = true;
}

if ((sprite_index == sprite_get("phone_open")) && (hologram_phone == false)){
	instance_destroy(hologram);
	hat_on = true;
	hologram_phone = true;
}

if (instance_exists(hologram)){
	hologram_exists = true;
}
else {
	hologram_exists = false;
	hologram_is_alive = false;
	if (hologram_phone == false){
		hat_on = false;	
	}
    else {
    	hat_on = true;	
    }
}



if (hologram_is_alive == false && hat_on == false && hat_out == true){
    move_cooldown[AT_NSPECIAL] = 5;
}

//Lockout Hitbox Self

if (lockout_timer == 5){
    create_hitbox( AT_NSPECIAL, 1, x, y-20);
    create_hitbox( AT_NSPECIAL_2, 1, x, y-20);
    soft_armor = 2;
}
else {
    soft_armor = 0;
}

/*
if (lockout_timer >= 100){
    lockout_timer = 0;
}
*/

if (shotgun_ammo == 0){
    set_num_hitboxes(AT_UTILT, 6);
    set_num_hitboxes(AT_NAIR, 6);
}
else {
    set_num_hitboxes(AT_UTILT, 7);
    set_num_hitboxes(AT_NAIR, 7);
}


    



if (state == PS_PARRY){
    attack_meu = PS_PARRY;
}

if (hologram_parry_cont > 0){
	hologram.free = false;
    hologram.state = PS_PARRY;
    hologram.vsp = 0;
    hologram_parry_cont--;
}

if (hologram_parry_cont <= 0){
	hologram_parry = 0;
}

if (fspecial_hit >= 0){
		fspecial_hit += .2;
	}
	if (fspecial_hit > 4){
		fspecial_hit = -1;
	}
	
if (state == PS_WALL_JUMP && hologram_is_alive == true){
	hologram.hurtboxID.sprite_index = sprite_get("hurtbox_idle");
}

if ((state == PS_ATTACK_GROUND || PS_ATTACK_AIR) && 
(attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG 
|| attack == AT_BAIR || attack == AT_DSPECIAL) 
&& window == 4 && shotgun_cont <= 4){
    shotgun_cont += .35;
}

if (attack == AT_DSPECIAL_AIR && window == 3 && shotgun_cont <= 4){
    shotgun_cont += .35;
}

if (hologram_is_alive == true){
if ((hologram.y + hologram.vsp) < 10) || ((hologram.x + hologram.hsp) < 10)
|| ((hologram.x + hsp) > (hologram.room_width + 70)) || ((hologram.y + vsp) >= (hologram.room_height + 70)){
	if (has_rune("L") || phone_cheats[hologram_immortal] == 1){
		hologram.x = x-50*spr_dir;
		hologram.y = y;
	}
	else {
    	hologram.grab_air = false;
    	hologram_is_alive = false;
	}
    
    }
    
    if (hologram.was_parried){
    	if (has_rune("L") || phone_cheats[hologram_immortal] == 1){
		hologram.x = x-50*spr_dir;
		hologram.y = y;
	}
	else {
    	hat = instance_create( hologram.x, hologram.y-80, "obj_article1");
    	hat.state = 4;
    	hologram.was_parried = false;
		hologram_is_alive = false;
	}
		
	}
    
}

if (!free){
	dspecial_dj = false;
}

//Intro
{
if (introTimer2 < 1) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 52) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. 
//If your animation does not involve much movement, this may not be necessary.
}

}	///////

if (custom_clone){
	draw_indicator = false;
}

if (state == PS_ATTACK_AIR && (attack == AT_FSTRONG_2 || attack == AT_USTRONG_2 
|| attack == AT_DSTRONG_2 || attack == AT_FTHROW) && window == 4 && shotgun_cont <= 4){
    shotgun_cont += .35; 
}

if (attack == AT_DTHROW && window == 3 && shotgun_cont <= 4){
    shotgun_cont += .35;
}


if (has_rune("B") || phone_cheats[infinite_ammo] == 1){
	shotgun_ammo = 0;
}

if (has_rune("K") || phone_cheats[dspecial_power] == 1){
	dspecial_hit = true;
	dspecial_air_hit = true;
}

if (has_rune("M") && !custom_clone && taunt_pressed && hologram_is_alive == true){
	my_x = x;
	my_y = y;
	x = hologram.x;
	y = hologram.y;
	hologram.x = my_x;
	hologram.y = my_y;
}

if (has_rune("N") && !custom_clone && hologram_is_alive == true && hologram.state = PS_ATTACK_AIR){
	hologram.super_armor = true;
}









    


