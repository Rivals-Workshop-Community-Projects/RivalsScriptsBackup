if(!free){
    throneattacked = 0;
    move_cooldown[AT_USPECIAL] = 0;
}

// if(state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP){
//     throneattacked = 0;
// }

if(state == PS_WALL_JUMP){
     move_cooldown[AT_USPECIAL] = 0;
}


timer++;

switch(gun){
	case 0:
		pistolcooldown -= 1;
		break;
	case 1:
		shotcooldown -= 1;
		break;
	case 2:
		shellcooldown -= 1;
		break;
	case 3:
		snipecooldown -= 1;
		break;
	case 4:
		windcooldown -= 1;
		break;
	case 5:
		grenadecooldown -= 1;
		break;
	
}

if(pistolcooldown > 0){
	move_cooldown[AT_NSPECIAL] = 30;
}else if(pistolcooldown == 0){
	move_cooldown[AT_NSPECIAL] = 1;
}

if(shotcooldown > 0){
	move_cooldown[AT_NSPECIAL_SHOT] = 30;
}else if(shotcooldown == 0){
	move_cooldown[AT_NSPECIAL_SHOT] = 1;
}

if(shellcooldown > 0){
	move_cooldown[AT_NSPECIAL_SHELL] = 30;
}else if(shellcooldown == 0){
	move_cooldown[AT_NSPECIAL_SHELL] = 1;
}

if(snipecooldown > 0){
	move_cooldown[AT_NSPECIAL_SNIPE] = 30;
}else if(snipecooldown == 0){
	move_cooldown[AT_NSPECIAL_SNIPE] = 1;
}

if(windcooldown > 0){
	move_cooldown[AT_NSPECIAL_WIND] = 30;
}else if(windcooldown == 0){
	move_cooldown[AT_NSPECIAL_WIND] = 1;
}

if(grenadecooldown > 0){
	move_cooldown[AT_NSPECIAL_GRENADE] = 30;
}else if(grenadecooldown == 0){
	move_cooldown[AT_NSPECIAL_GRENADE] = 1;
}

if(pistolcooldown < -1){
	pistolcooldown = -1;
}
if(shotcooldown < -1){
	shotcooldown = -1;
}
if(shellcooldown < -1){
	shellcooldown = -1;
}
if(snipecooldown < -1){
	snipecooldown = -1;
}
if(windcooldown < -1){
	windcooldown = -1;
}
if(grenadecooldown < -1){
	grenadecooldown = -1;
}

if(gun == 0){
			cooldownindex = (120 - pistolcooldown)/7;
}else if(gun == 1){
	cooldownindex = (120 - shotcooldown)/7 ;
	
}else if(gun == 2){
	cooldownindex = (120 - shellcooldown)/7;
}else if(gun == 3){
	cooldownindex = (120 - snipecooldown)/7;
}else if(gun == 4){
	cooldownindex = (120 - windcooldown)/7;
}else if(gun == 5){
	cooldownindex = (120 - grenadecooldown)/7;
}


if(puddletimeout > 0){
    puddletimeout--;
}

//Spawns the effect when the table is destroyed.
if(table != noone){
	if(table.health <= 0){
    	spawn_hit_fx(table.x, table.y-30, 134);
    }
}

//Spawns hitboxes when the table is in motion.
if(table != noone){
    if(table.vsp > 4){
        create_hitbox(AT_FSPECIAL, 2, table.x-2*table.spr_dir, table.y);
    }
    if(table.invinc > 2 and abs(table.hsp) > 0 and table.tablehit == 1){
    	slide = create_hitbox(AT_FSPECIAL, 3, table.x+10*table.spr_dir, table.y-35);
    	slide.player = table.launch_player;
    }
    if(table.invinc > 2 and abs(table.hsp) > 0 and table.tabletech == 1){
    	create_hitbox(AT_FSPECIAL, 3, table.x+10*table.spr_dir, table.y-35);
    }
    
}

//Resets the number of shots in the clip when the cooldown is over.
if(move_cooldown[AT_NSPECIAL] == 1){
    pistolshots = 4;
}
if(move_cooldown[AT_NSPECIAL_SHELL] == 1){
    shellshots = 3;
}
if(move_cooldown[AT_NSPECIAL_WIND] == 1){
    windshots = 15;
}

if(state == PS_AIR_DODGE and state_timer == 1){
	sound_play(sound_get("airdodge"));
}



if runeJ{
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL_SHELL, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_NSPECIAL_SHELL, 2, HG_DAMAGE, 4);
	set_hitbox_value(AT_NSPECIAL_SHELL, 3, HG_DAMAGE, 4);
	set_hitbox_value(AT_NSPECIAL_WIND, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_DAMAGE, 18);
	set_hitbox_value(AT_NSPECIAL_GRENADE, 2, HG_DAMAGE, 20);
}

if runeH{
	if(jump_down){
		if vsp > 2{
			vsp = 2;
		}
	}
}

if runeO{
	set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PROJECTILE_GRAVITY, 0.5);
	set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PROJECTILE_GRAVITY, 0.5);
	set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PROJECTILE_GRAVITY, 0.5);
	set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PROJECTILE_GRAVITY, 0.5);
	set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PROJECTILE_GRAVITY, 0.5);
	
	set_hitbox_value(AT_NSPECIAL_SHELL, 1, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_NSPECIAL_SHELL, 2, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_NSPECIAL_SHELL, 3, HG_PROJECTILE_GRAVITY, 0);
	
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_DAMAGE, 20);
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_BASE_KNOCKBACK, 7);
	
	set_window_value(AT_NSPECIAL_WIND, 1, AG_WINDOW_LENGTH, 16);
	set_hitbox_value(AT_NSPECIAL_WIND, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_NSPECIAL_WIND, 1, HG_EFFECT, 11);
}

if runeJ and runeO{
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_DAMAGE, 30);
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PROJECTILE_GRAVITY, 0.2);
	set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PROJECTILE_GRAVITY, 0.2);
	set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PROJECTILE_GRAVITY, 0.2);
	set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PROJECTILE_GRAVITY, 0.2);
	set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PROJECTILE_GRAVITY, 0.2);
}

if runeI{
	set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_SFX_FRAME, 5);
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_BASE_KNOCKBACK, 4);
}

if runeI and runeJ{
	set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_SFX_FRAME, 5);
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_BASE_KNOCKBACK, 7);
}

if runeI and runeJ and runeO{
	set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_NSPECIAL_SNIPE, 1, AG_WINDOW_SFX_FRAME, 5);
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_NSPECIAL_SNIPE, 1, HG_BASE_KNOCKBACK, 7);
}

//Motion blur for the jammed palette swap.
if get_player_color(player) == 15{
	for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha,
	];
} 

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 13;
    trummelcodecsprite1 = sprite_get("idle");
    trummelcodecsprite2 = sprite_get("idle");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "alto did you just";
    trummelcodecline[page,2] = "drop my ammo";
    trummelcodecline[page,3] = "because it came";
    trummelcodecline[page,4] = "to life";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "That's not our ammo.";
    trummelcodecline[page,2] = "That's Bullet-Kin, a";
    trummelcodecline[page,3] = "member of the";
    trummelcodecline[page,4] = "cult of the Gundead.";
    page++; 
    
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "is this just going";
    trummelcodecline[page,2] = "to be a bunch of gun puns";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Hopefully not.";
    trummelcodecline[page,2] = "Let's see here...";
    trummelcodecline[page,3] = "This Bullet-Kin seems to";
    trummelcodecline[page,4] = "be armed to the teeth!";
    page++; 
    
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Their normals seem to";
    trummelcodecline[page,2] = "have a lot of range,";
    trummelcodecline[page,3] = "and some can alter their";
    trummelcodecline[page,4] = "movement.";
    page++; 
    
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Though more importantly,";
    trummelcodecline[page,2] = "they have a lot of guns";
    trummelcodecline[page,3] = "to fire, and they ALL can";
    trummelcodecline[page,4] = "be freely aimed!";
    page++; 
    
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "this is going to be";
    trummelcodecline[page,2] = "really dang annoying";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Yeah, they can easily stun";
    trummelcodecline[page,2] = "our clouds, and can make";
    trummelcodecline[page,3] = "it annoying to approach";
    trummelcodecline[page,4] = "without taking hits!";
    page++; 
    
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Luckily they can only use";
    trummelcodecline[page,2] = "one gun at a time, and";
    trummelcodecline[page,3] = "their guns have cooldowns";
    trummelcodecline[page,4] = "or a limited clip.";
    page++; 
    
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Though in addition,";
    trummelcodecline[page,2] = "they can also wall us with";
    trummelcodecline[page,3] = "a TABLE of all things!";
    trummelcodecline[page,4] = "";
    page++; 
    
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "And use it as cover!";
    trummelcodecline[page,2] = "HOW CAN IT TAKE MORE ";
    trummelcodecline[page,3] = "DAMAGE THAN A PILLAR";
    trummelcodecline[page,4] = "OF SOLID ROCK?!";
    page++; 
    
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "lol";
    trummelcodecline[page,2] = "just hit it";
    trummelcodecline[page,3] = "it is not stiff";
    trummelcodecline[page,4] = "it can be moved";
    page++; 
    
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "So, our strategy";
    trummelcodecline[page,2] = "is to try to break";
    trummelcodecline[page,3] = "his zone. Let's fire";
    trummelcodecline[page,4] = "him away!";
    page++; 
    
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "another gun pun?!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //repeat...
}


if swallowed { //Kirby ability script starts here
swallowed = 0
//Define any assets kirby might need to grab from YOUR CHARACTER
var ability_spr = sprite_get("kirbyability");
var ability_hurt = sprite_get("abilityhurt");
var ability_proj = sprite_get("nspecial_proj");
var magshot = sound_get("magnum");

with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
	set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 13);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, magshot);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, magshot);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_SFX, magshot);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_SFX, magshot);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 11, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 12, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 12, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 12, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_EXTRA_3, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 13, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 13, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 13, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_num_hitboxes(AT_EXTRA_3, 4);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 251);
//set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 6);

set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -30);

set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 8);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -30);

set_hitbox_value(AT_EXTRA_3, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 11);
set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -30);
} //Kirby ability script ends here
}

if enemykirby != undefined { //if kirby is in a match & swallowed
with oPlayer { //Run through all players
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
	move_cooldown[AT_EXTRA_3] = 180;
}
}
}



if runesUpdated {
	if runeA { //trigger the attribute change
		jump_speed = 12;
		djump_speed = 12;
	} else { //reset the attribute change
		jump_speed = 10.5;
		djump_speed = 10.5;
	}
	if runeB{
	set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 1);
}
	if runeC{
	set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 10);
	set_hitbox_value(AT_DTILT, 2, HG_EFFECT, 10);
	}	
	if runeD{
		set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_LIFETIME, 120);
		set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_LIFETIME, 120);
		set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_LIFETIME, 120);
		set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_LIFETIME, 120);
		set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_LIFETIME, 120);
	}
}



