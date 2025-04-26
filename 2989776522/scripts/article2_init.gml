//article1_init

eggpawn_num = 0;
robot = 0;
move = 0;
state = 0;
anim = 0;
idletimer = 60;
attacking = false;
attack_cooldown = 30;
hp = 4;
original_player = player;
current_player = player;
current_player2 = player;
landingcooldown = 0;
isgrounded = false;
thehitbox = noone;
thehitbox_flying = noone;
destroymonster = false;
spr_dir = player_id.spr_dir;
hitboxtimer = 30;
lasthitbox = noone;lasthitbox_player_id = noone;lasthitbox_group = -1;lasthitbox_attack = -1;
hitlockout = 0;
hitlockout2 = 0;
bouncetimer = 0;
armor = 0;
armor_projectiles = 0;
hitstun = 0;
eggpawn_target = noone;
eggpawn_target_follow = 30;
eggpawn_target_lose = 60;
grabbedplayer = noone;
smokeposX = 0;
smokeposY = 0;
arrow_offset = 50;
depth = player_id.depth+4;
uses_shader = true;
voice = noone;
voicetimer = 300;
UnReflectable = true;
Pocketable = false;
Pocketed = false;
arrow_sprite = sprite_get("playerarrow");
seen_sprite = sprite_get("eggpawn_seen");
sfx_seen = sound_get("eggpawn_seen");
sfx_shoot = sound_get("eggpawn_shot");
sfx_explode = sound_get("mech explosion");
timer = 0;
timer2 = 0;
seen = 0;
seen_x = 2.0;
seen_y = 0;

if(player_id.free || !position_meeting(x,y+50,asset_get("par_block")) && !position_meeting(x,y+50,asset_get("par_jumpthrough"))
&& !position_meeting(x,y+150,asset_get("par_block")) && !position_meeting(x,y+150,asset_get("par_jumpthrough"))
&& !position_meeting(x,y+300,asset_get("par_block")) && !position_meeting(x,y+300,asset_get("par_jumpthrough"))){
    robot = 1;depth = player_id.depth+3;
}

if(robot == 0){ //egg pawn
	if(player_id.alt == 0){
    	sprite_index = sprite_get("eggpawn");
	}else{
		sprite_index = sprite_get("eggpawn_alts");
	}
    mask_index = sprite_get("eggpawn_mask");
    hp = round(14*player_id.eggpawn_health_multiplier);
    can_be_grounded = true;
    ignores_walls = false;
    Pocketable = true;Pocket_hsp = 5;Pocket_vsp = -5;
    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 4;if(player_id.alt != 0)Pocket_hud_imageindex = 5;
}else if(robot == 1){ //egg flapper
    if(player_id.alt == 0){
    	sprite_index = sprite_get("eggflapper");
	}else{
		sprite_index = sprite_get("eggflapper_alts");
	}
	mask_index = sprite_get("eggpawn_mask");
	hp = round(7*player_id.eggpawn_health_multiplier);
	attack_cooldown = 90;
    can_be_grounded = false;
    ignores_walls = false;
    Pocketable = true;Pocket_hsp = 5;Pocket_vsp = -1;
    Pocket_hud = sprite_get("pocket_icons");Pocket_hud_imageindex = 6;if(player_id.alt != 0)Pocket_hud_imageindex = 7;
}

armor_original = armor;
armor_original_projectiles = armor_projectiles;

/*var randomsfx = random_func(0, 3, true)
if(randomsfx == 0){
	sound_play(sound_get("teleport_appear"));
}else if(randomsfx == 1){
	sound_play(sound_get("teleport_appear2"));
}else if(randomsfx == 2){
	sound_play(sound_get("teleport_appear3"));
}*/

MattPlanet = true;
MattCanGrab = true;
MorshuCanGrab = true;
CalCanSnack = 2;
Toadie_Ability = 5;

/*runeL = false;
if (has_rune("L") || player_id.runeL) {
	runeL = true;
	hp *= 2;
}
runeM = false;speedbuff = 1.0;
if (has_rune("M") || player_id.runeM) {
	runeM = true;speedbuff = 0.1;voicetimer = 600;
}
runeN = false;extracooldowntimer = 0;
if (has_rune("N") || player_id.runeN) {
	runeN = true;extracooldowntimer = 60;
}*/