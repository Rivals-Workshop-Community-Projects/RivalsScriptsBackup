//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//nspecial_air = shiny litwick deploy move
//nthrow = litwick deploy move
//uthrow = helicopter firecock super move 
//dthrow = skitter smack 
//extra_1 = pogo
//uspecial ground = pogo jump
//
//


if attack == AT_TAUNT {
	if (window == 2 && window_timer == 1){
		sound_play(sound_get("lamp_shade...get_it"));
	}
	if (window == 3 && window_timer == 21){
		sound_play(sound_get("split"));
	}
}

if (attack == AT_EXTRA_3){
	attack_pick=random_func( 1, 24,  true);	
	if(attack_pick==0) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==1) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==2) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==3) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==4) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==5) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==6) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==7) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==8) {
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==9) {
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==10) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==11) { 
		set_attack(AT_NTHROW);
	} 
	if(attack_pick==12) { 
		set_attack(AT_FSPECIAL_AIR);
	} 
	if(attack_pick==13) { 
		set_attack(AT_FSPECIAL_AIR);
	} 
	if(attack_pick==14) { 
		set_attack(AT_FSPECIAL_AIR);
	} 
	if(attack_pick==15) { 
		set_attack(AT_FSPECIAL_AIR);
	} 
	if(attack_pick==16) { 
		set_attack(AT_FSPECIAL_AIR);
	} 
	if(attack_pick==17) { 
		set_attack(AT_NSPECIAL_2);
	} 
	if(attack_pick==18) {
		set_attack(AT_NSPECIAL_2);
	} 
	if(attack_pick==19) {
		set_attack(AT_NSPECIAL_2);
	} 
	if(attack_pick==20) {
		set_attack(AT_NSPECIAL_2);
	} 
	if(attack_pick==21) {
		set_attack(AT_NSPECIAL_2);
	} 
	if(attack_pick==22) {
		set_attack(AT_NSPECIAL_2);
	}
	if(attack_pick==23) {
		set_attack(AT_NSPECIAL_AIR);
	}
}

if (attack == AT_DTHROW){
    if(window == 2 && window_timer == 1){
    	soundpick=random_func( 1, 21,  true);	
    	if(soundpick==0) { 
            create_hitbox(AT_DTHROW, 3, x+61, y-36);
	    	sound_play(sound_get("hit_glass1"));
            take_damage(player, 3, 3)
    	} 
    } 
}
if (attack == AT_DTHROW){
    if(window == 2 && window_timer == 1){
        take_damage(player, 2, 2)
	    sound_play(sound_get("hit_punch"));
	    sound_play(sound_get("hit_metal_weak2"));
    } 
}
if (attack == AT_DTHROW){
    if(window == 1 && window_timer == 7){
        spawn_hit_fx( x, y, white );
    }
}


if (attack == AT_DSTRONG){
	if (window == 4)
        set_attack(AT_EXTRA_1);
}


if (attack == AT_NTHROW || attack == AT_NSPECIAL_2 || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL_AIR){
	if (window == 3 && window_timer == 6)
        set_attack(AT_EXTRA_1);
}
if (attack == AT_DTHROW){
	if (window == 3 && window_timer == 13)
        set_attack(AT_EXTRA_1);
}

if (attack == AT_UTHROW){
	if (window == 3)
        max_fall = 4;
        air_max_speed = 4;
        gravity_speed = .40;
        air_accel = .25;
	if (window == 5 )
        set_attack(AT_EXTRA_1);
	    move_cooldown[AT_UTHROW] = 600
}
if (attack == AT_UTHROW){
	if (window == 4 && attack_down)
        window = 6
}
if (attack == AT_UTHROW){
	if (window == 3 && window_timer == 1)
	{
        spawn_hit_fx( x, y, firething2 );
	}
	if (window == 3 && window_timer == 13)
	{
        spawn_hit_fx( x, y, firething2 );
	}
}

if (attack == AT_FTHROW){
	if (left_down && window == 1)
	spr_dir = -1
	if (right_down && window == 1)
	spr_dir = 1
	if (window == 2 && window_timer == 20 && attack_down)
        window = 5
	if (window == 2 && window_timer == 20 && free == true)
        window = 5
	if (window == 4)
        set_attack(AT_EXTRA_1);
	    move_cooldown[AT_FTHROW] = 600
}

if (attack == AT_USPECIAL_GROUND){
	if (left_down && window == 1)
	spr_dir = -1
	if (right_down && window == 1)
	spr_dir = 1
	if (window == 3)
    	max_fall = 7; 
		air_max_speed = 4;
		gravity_speed = .70;
        air_accel = .7;
	if (window == 5)
        set_attack(AT_EXTRA_1);
}

if (attack == AT_EXTRA_1 && free = true){
    if (attack_pressed){
        set_attack(AT_UTHROW);
        window = 6
    }
}

if (attack == AT_EXTRA_1){
    max_fall = 5;
    air_max_speed = 7;
    gravity_speed = .35;
    air_accel = .2;
    if (shield_pressed && free == false){
        set_attack(AT_EXTRA_2);
    }
    if (attack_pressed){
        set_attack(AT_EXTRA_3);
	    move_cooldown[AT_EXTRA_3] = 600
    }
    if (jump_down){
        set_attack(AT_USPECIAL_GROUND);
	    move_cooldown[AT_USPECIAL_GROUND] = 600
    }
    if (attack_pressed && up_down){
        set_attack(AT_UTHROW);
	    move_cooldown[AT_UTHROW] = 600
    }
    if (attack_pressed && down_down || attack_pressed && left_down && down_down || attack_pressed && right_down && down_down ){
        set_attack(AT_DTHROW);
    }
    if (attack_pressed && left_down || attack_pressed && right_down){
        set_attack(AT_FTHROW);
	    move_cooldown[AT_FTHROW] = 600
    }
}



if attack==AT_USTRONG {
	if (window == 2 && window_timer == 1){
		sound_play(sound_get("wuhting"));
		sound_play(sound_get("hit_fire_weak"));
        take_damage(player, 4, 4)
	}
	if (window == 3)
        if (strong_charge <= 1){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 5);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10);
    }
        if (strong_charge >= 5){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 5.25);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10.33);
    }
        if (strong_charge >= 10){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 5.5);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10.66);
    }
        if (strong_charge >= 15){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 5.75);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -11);
    }
        if (strong_charge >= 20){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 6);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -11.33);
    }
        if (strong_charge >= 25){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 6.25);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -11.66);
    }
        if (strong_charge >= 30){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 6.5);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -13);
    }
        if (strong_charge >= 35){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 6.75);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -13.33);
    }
        if (strong_charge >= 40){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 7);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -13.66);
    }
        if (strong_charge >= 45){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 7.25);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -14);
    }
        if (strong_charge >= 50){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 7.5);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -14.33);
    }
        if (strong_charge >= 55){
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 7.75);
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -14.66);
    }
}

if (attack == AT_UAIR){
    if (window == 2){
        char_height += 10;   
    }
    if (window == 3 && window_timer == 10){
        char_height = 75;   
    }
    if (window == 3 && window_timer == 12){
        char_height = 60;   
    }
    if (window == 3 && window_timer == 15){
        char_height = 55;   
    }
}
if (attack == AT_UTILT){
    if (window == 1){
        char_height += 6;   
    }
    if (window == 3 && window_timer == 5){
        char_height = 75;   
    }
    if (window == 3 && window_timer == 8){
        char_height = 60;   
    }
    if (window == 3 && window_timer == 9){
        char_height = 55;   
    }
}









if (attack == AT_NSPECIAL && window >= 1 && window_timer >= 1 && down_down){
            attack = AT_DSTRONG_2;
}
if (attack == AT_NSPECIAL && window >= 1 && window_timer >= 1 && spr_dir == 1 && right_down){
            attack = AT_FSPECIAL_2;
}
if (attack == AT_NSPECIAL && window >= 1 && window_timer >= 1 && spr_dir == 1 && left_down){
            attack = AT_FSTRONG_2;
}
if (attack == AT_NSPECIAL && window >= 1 && window_timer >= 1 && up_down){
            attack = AT_USTRONG_2;
}
if (attack == AT_NSPECIAL && window >= 1 && window_timer >= 1 && spr_dir == -1 && left_down){
            attack = AT_FSPECIAL_2;
}
if (attack == AT_NSPECIAL && window >= 1 && window_timer >= 1 && spr_dir == -1 && right_down){
            attack = AT_FSTRONG_2;
}


if (attack == AT_NAIR){
	if (window == 1 && window_timer == 3){
		sound_play(sound_get("bair"));
		sound_play(sound_get("swing_shadowball"));
	}
	if (window == 2 && window_timer == 4){
		sound_play(sound_get("bair"));
	}
	if (window == 2 && window_timer == 9){
		sound_play(sound_get("bair"));
		sound_play(sound_get("swing_shadowball"));
	}
}




//eyy if it works it works
if (attack == AT_FSPECIAL){
	if (window == 2)
	{
		max_fall = 001; 
		air_max_speed = 3;
	}
	if (window == 3 && window_timer == 1)
	{
        spawn_hit_fx( x, y-25, firething );
	}
	if (window == 3 && window_timer == 14)
	{
        spawn_hit_fx( x, y-25, firething );
	}
	if (window == 3 && window_timer == 29)
	{
        spawn_hit_fx( x, y-25, firething );
	}
	if (window == 3 && window_timer == 44)
	{
        spawn_hit_fx( x, y-25, firething );
	}
    if (window == 3 && right_down){
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 7);
    }
    if (window == 3 && left_down){
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 7);
    }
	{
	if (window == 4)
		max_fall = 5; 
		air_max_speed = 7;
	}
	can_fastfall = false;
}




if (attack == AT_DAIR){
    if (window == 2 && free == false){
        window = 7;
        window_timer = 0;
        destroy_hitboxes();
      	spawn_base_dust(x, y, "land");
    }
    if (window == 2 && has_hit = true){
        destroy_hitboxes();
        vsp = -15;
        window = 9;
        }
    if (window == 7 && window_timer = 8){
        destroy_hitboxes();
        window = 8;
        vsp = -6;
        }
}


if (attack == AT_DSPECIAL){
    if (window == 3 && right_down){
        hsp = 2.5;
	    spr_dir = 1     
    }
    if (window == 3 && left_down){
        hsp = -2.5;
	    spr_dir = -1
    }
    if (window == 3 && right_down && window_timer >= 12){
        hsp = 4;
	    spr_dir = 1     
    }
    if (window == 3 && left_down && window_timer >= 12){
        hsp = -4;
	    spr_dir = -1
    }
    if (window == 3 && joy_pad_idle){
        hsp = 0;
    }
}

if (attack == AT_DSPECIAL){ 
    if (window == 2 && char_height >= 20){
        char_height -= 5;   
    }
    if (window == 3 && char_height >= 20){
        char_height -= 5;   
    }
    if (window == 4 && char_height <= 55){
        char_height += 6;   
    }
}

if (attack == AT_DSPECIAL){
	if (window == 3)
		if (special_pressed) {
			window = 4;
			window_timer = 0;
		}
}
	if (window == 4 && window_timer >= 1){
    		max_fall = 4;
    		air_max_speed = 7;
    		gravity_speed = .20;
    		air_accel = .2;
		}
if (attack == AT_DSPECIAL){
	if (window == 4)
    max_fall = 5;
    air_max_speed = 7;
    gravity_speed = .35;
    air_accel = .2;
}
if (attack == AT_DSPECIAL_2){
	if (window == 1)
        max_fall = 8;
        air_max_speed = 4;
        gravity_speed = .90;
        air_accel = .2;
}

if (attack == AT_DSPECIAL){
	if (window == 3 && window_timer == 8)
	{
		sound_play(sound_get("bubble"));
	}
	if (window == 3 && window_timer == 24)
	{
		sound_play(sound_get("bubble"));
	}
	if (window == 3 && window_timer == 40)
	{
		sound_play(sound_get("bubble"));
	}
	if (window == 3 && window_timer == 56)
	{
		sound_play(sound_get("bubble"));
	}
}

if (attack == AT_DSPECIAL && window == 2 && window_timer == 1){
		sound_play(sound_get("acidstart2"));
}
if (attack == AT_DSPECIAL && window == 3 && window_timer == 1){
        spawn_hit_fx( x, y, splash );
}
if (attack == AT_DSPECIAL && window == 4 && free == false && window_timer == 3){
        spawn_hit_fx( x, y, splash );
}
if (attack == AT_DSPECIAL && window == 3 && free == true && spr_dir = 1 ){
        hsp = 3;
        vsp = -1;
        spawn_hit_fx( x, y, splish );
		sound_play(sound_get("acidjump"));
}
if (attack == AT_DSPECIAL && window == 3 && free == true && spr_dir = -1 ){
        hsp = -3;
        vsp = -1;
        spawn_hit_fx( x, y, splish );
		sound_play(sound_get("acidjump"));
}
if (attack == AT_DSPECIAL && window == 2 && free == true ){
    attack = AT_DSPECIAL_2;
}
if (attack == AT_DSPECIAL && attack_pressed && window == 3 && free == false ){
	    can_attack = false
        window = 7;
        window_timer = 1;
        spawn_hit_fx( x, y, splash );
        create_hitbox(AT_DSPECIAL, 3, x, y-20);
		sound_play(sound_get("acidend2"));
		sound_stop(sound_get("acidend"));
}
if (attack == AT_DSPECIAL && window == 3 && free == true ){
    attack = AT_DSPECIAL_2;
        window = 2;
        window_timer = 10;
}
if (attack == AT_DSPECIAL_2 && window == 3 && free == false ){
    attack = AT_DSPECIAL;
        window = 3;
        spawn_hit_fx( x, y, splash );
		sound_play(sound_get("acidland"));
		sound_play(sound_get("acidjump2"));
}
if (attack == AT_DSPECIAL_2 && window == 3 && free == false ){
    attack = AT_DSPECIAL;
        window = 3;
        spawn_hit_fx( x, y, splash );
		sound_play(sound_get("acidend"));
}
if (attack == AT_DSPECIAL_2 && window == 2 && window_timer == 1){
		sound_play(sound_get("acidstart"));
}

if (attack == AT_DSPECIAL){
	if (window == 3)
	{
	knockback_adj = 0.55;
	}
	if (window >= 4)
	{
	knockback_adj = 0.9;
	}
}


if (attack == AT_USPECIAL){
	if (window == 3 && window_timer == 1)
	{
        take_damage(player, 7, 7)
	}
	if (window == 2 && window_timer == 29)
	{
        spawn_hit_fx( x, y, heat );
	}
	if (window == 4 && window_timer == 3)
	{
        spawn_hit_fx( x, y, sprig );
	}
	if (window == 4 && window_timer == 3)
	{
        spawn_hit_fx( x-2, y, smoke );
	}
	if (window == 4 && window_timer == 7)
	{
        spawn_hit_fx( x+8, y, smoke );
	}
	if (window == 5 && window_timer == 1)
	{
        spawn_hit_fx( x-7, y, smoke );
	}
	if (window == 5 && window_timer == 6)
	{
        spawn_hit_fx( x-12, y, smoke );
	}
	if (window == 6 && window_timer == 4)
	{
        spawn_hit_fx( x+7, y, smoke );
	}
}

if (attack == AT_JAB && spr_dir = 1){
	if (window == 7 && window_timer == 9)
	{
        spawn_hit_fx( x+48, y-38, block );
	}
	move_cooldown[AT_JAB] = 0
}

if (attack == AT_JAB && spr_dir = -1){
	if (window == 7 && window_timer == 9)
	{
        spawn_hit_fx( x-48, y-38, block );
	}
	move_cooldown[AT_JAB] = 0
}

if (attack == AT_JAB){
	if (window == 10 && window_timer == 1)
	{
		sound_play(sound_get("fireboom"));
	}
}

if (attack == AT_DATTACK){
	if (window == 4 && window_timer == 8)
	{
		sound_play(sound_get("throw"));
	}
}


if (attack == AT_DAIR && window == 1 && window_timer == 11){
		sound_play(sound_get("fall"));
		sound_play(sound_get("fall2"));
}
if (attack == AT_FTILT && window == 2 && window_timer == 1){
		sound_play(sound_get("darkswing"));
}
if (attack == AT_UTILT && window == 1 && window_timer == 7){
		sound_play(sound_get("swing_shadowball"));
}
if (attack == AT_UTILT && window == 1 && window_timer == 11){
		sound_play(sound_get("hit_dark2"));
}

#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;