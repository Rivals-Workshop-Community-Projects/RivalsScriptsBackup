//a 3 - fakesolid/bouncy

if (init == 0){
    init = 1;
}

state_timer++;

if (bouncy){
	var pl_check = instance_place(x,y-2,asset_get("oPlayer"))
	if (pl_check!=-4){
		if (pl_check.vsp>=0){
			if (!pl_check.invincible&&!pl_check.invince_time&&!pl_check.attack_invince&&!pl_check.attack_invince&&!pl_check.initial_invince){
				if (pl_check.state!=PS_AIR_DODGE&&pl_check.state!=PS_WALL_TECH&&
					pl_check.state!=PS_ROLL_BACKWARD&&pl_check.state!=PS_ROLL_FORWARD&&
					pl_check.state!=PS_TECH_GROUND&&pl_check.state!=PS_TECH_BACKWARD&&pl_check.state!=PS_TECH_FORWARD&&
					pl_check.state!=PS_WRAPPED&&pl_check.state!=PS_FROZEN&&
					pl_check.state!=PS_SPAWN&&pl_check.state!=PS_RESPAWN&&pl_check.state!=PS_DEAD){
				
				if (pl_check==player_id){
					if (pl_check.state == PS_ATTACK_GROUND||pl_check.state == PS_ATTACK_AIR){
						if (pl_check.attack == AT_USPECIAL){
							pl_check.window = 4;
							pl_check.window_timer = 0;
						}else{
							pl_check.state = PS_DOUBLE_JUMP
							pl_check.state_timer = 0;
							pl_check.hurtboxID.sprite_index = pl_check.hurtbox_spr
						}
					}else{
						pl_check.state = PS_DOUBLE_JUMP
						pl_check.state_timer = 0;
						pl_check.hurtboxID.sprite_index = pl_check.hurtbox_spr
					}
					for (var i = 0; i <= pl_check.fst_track_amt; i += 1){
						if (pl_check.fst_track[i]!=-4){
							pl_check.fst_track[i].state_timer = pl_check.fst_track[i].state_end;
							pl_check.fst_track[i] = -4;
						}
					}
				}else{
					pl_check.state = PS_DOUBLE_JUMP
					pl_check.state_timer = 0;
					pl_check.hurtboxID.sprite_index = pl_check.hurtbox_spr
				}
				//pl_check.y = y-19;
				
				//var dist = 12
				pl_check.hsp = lengthdir_x(bouncy_power, image_angle/1.5+90);
				pl_check.vsp = lengthdir_y(bouncy_power, image_angle/1.5+90);
				dust_spawn(x, y-10, 4, true, 4, 1, 1);
				sound_play(sound_get("trampoline_bounce"));
				}
			}
		}
	}
}


if (state_timer>=state_end){
	sound_stop(sound_get("drop_in_trash_softer"));
	sound_play(sound_get("drop_in_trash_softer"));
	dust_spawn(x, y, 19, false, 3, 6, 1);
	instance_destroy();
    exit;
}






//copypaste from attack_update

#define dust_spawn(x, y, spread, horizontal, amount, pattern, type) //dust_spawn(x, y, 15, false, 4, 0, 1)
//here i spawn dust
//dust_spawn(x, y, 15, false, 4, 0, 1)
//(x, y, spread, horizontal, amount, pattern, type)
var dx = argument0
var dy = argument1
var spw = argument2
var sph = (argument5==3)?1:(argument3)?2:argument2
var amt = clamp(argument4, 1, 7)
var ptn = argument5 //0 = spread, 1 = upward, 2 = still, 3 = tiny, 4 = left, 5 = right, 6 = semispread
var typ = argument6 //0/1 = big, 2 = small

for (var i = 0; i < amt; i += 1){//for

//hey future me, if you ever end up needing to tweak this
//
//i'm sorry
//- hyuponia 2021 08 02
var dID = instance_create(dx-spw+random_func( 1+i, spw*2, true ), dy-sph+random_func( 8+i, sph*2, true ), "obj_article1");
dID.dust_type = typ;
dID.hsp = (ptn == 6)? ((-1)+random_func( 1+i, 2, false )) : (ptn == 5)? ((3)+random_func( 1+i, -3, false )) : (ptn == 4)? ((-3)+random_func( 1+i, 3, false )) : (ptn == 3)? ((-1)+random_func( 1+i, 1, false )) : (ptn != 2)? ((-3)+random_func( 1+i, 6, false )) : 0;
dID.vsp = (ptn == 6)? ((-1)+random_func( 1+i, 2, false )) : (ptn == 3||ptn == 4||ptn == 5)? ((-1)+random_func( 8+i, 1, false )) : (ptn == 1)? ((-2)+random_func( 8, 1, false )) : (ptn != 2)?((-1.5)+random_func( 8+i, 3, false )) : 0;
if (ptn == 4||ptn == 5){dID.no_lerp=true;dID.state_end=20;}
if (ptn == 2){dID.image_alpha=0.5;dID.depth=1;}

}//for