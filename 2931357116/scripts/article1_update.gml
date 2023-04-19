if inited{
	inited = 0;
	switch type{
		case 0:
		//ragnarok
		can_be_grounded = 1;
		ignores_walls = 0;
		uses_shader = 0;
		through_platforms = 1;
		lifetime = 0;
		should_scale = 1;
		ragnarok_lv = (floor(lifetime/100) > 3? 3: floor(lifetime/100));
		sprite_index = sprite_get("ragnarok_artc_" + string(ragnarok_lv + 1));
		mask_index = sprite_get("ragnarok_artc_mask" + string(ragnarok_lv + 1));
		lockout = 0;
		depth = player_id.depth - 2;
		grab_timer = 0;
		grabp = noone;
		image_yscale = 0;
		image_xscale = 0;
		break;
		case 1:
		if player_id.enhance element = player_id.deck_val;
		else element = -1;
		break;
		
		case 1:
		sound_play(asset_get("sfx_oly_dspecial_focus"), 0, noone, 1, 1.2);
		sprite_index = sprite_get("wis_keyblade_article");
		depth = player_id.depth - 2;
		state = 0;
		timer = 0;
		deck = (player_id.enhance? player_id.deck_val: 3);
		uses_shader = 0;
		image_yscale = 2;
		image_xscale = 2;
		hbox = noone;
		colp = noone;
		lifetime = 600;
		if player_id.enhance && !instance_exists(player_id.fsp_grab){
			player_id.deck_change = 1
			player_id.deck_antimer = 0;
			player_id.deck_val = (player_id.deck_val+1)%3
		}
		break;
		
		case 2:
		sound_play(sound_get("ragnarok_summon"));
		sprite_index = sprite_get("wis_trap_article");
		depth = player_id.depth - 2;
		state = 0;
		timer = 0;
		deck = (player_id.enhance? player_id.deck_val: 3);
		uses_shader = 0;
		image_yscale = 2;
		image_xscale = 2;
		hbox = noone;
		trigger = 0;
		lifetime = 900;
		if player_id.enhance && !instance_exists(player_id.fsp_grab){
			player_id.deck_change = 1
			player_id.deck_antimer = 0;
			player_id.deck_val = (player_id.deck_val+1)%3
		}
		break;
		
		case 3:
		sound_play(sound_get("FF_Keybladesummon"));
		sprite_index = sprite_get("final_blade" + string(final_blade_sprite));
		mask_index = sprite_get("final_blade_collision");
		depth = player_id.depth - 2;
		state = 0;
		timer = 0;
		cooldown = 120;
		colp = noone;
		uses_shader = 0;
		force_death = 0;
		alive_time = 0;
		image_yscale = 2;
		image_xscale = 2;
		spinbox = noone;
		force_cd = 0;
		break;
	}
}

switch type{
//ragnarok
case 0:
if !instance_exists(grabp) lifetime++;
ragnarok_lv = (floor(lifetime/100) > 2? 2: floor(lifetime/100));
sprite_index = sprite_get("ragnarok_artc_" + string(ragnarok_lv + 1));
mask_index = sprite_get("ragnarok_artc_mask" + string(ragnarok_lv + 1));
image_index = lifetime/6;
depth = player_id.depth - 2;
if should_scale{
	image_yscale = (lifetime > 10? 1: lifetime/10);
	image_xscale = (lifetime > 10? 1: lifetime/10);
}else{
	image_yscale = 1;
	image_xscale = 1;
}
hsp *= 0.90;
vsp *= 0.90;
if !player_id.form player_id.move_cooldown[AT_NSPECIAL] = 50;
if vsp <= 0.3 && vsp >= 0 vsp = 0.3;
if lockout lockout--;
var colbox = instance_place(x, y, pHitBox);
var colpla = instance_place(x, y, oPlayer);

if instance_exists(colbox) && !lockout && !colbox.hitstop && !instance_exists(grabp){
	var box_angle = get_hitbox_angle(colbox);
	if colbox.player_id = player_id && (colbox.attack == AT_FSTRONG || colbox.attack == AT_DSTRONG || colbox.attack == AT_DATTACK || colbox.attack == AT_NAIR || (colbox.attack == AT_FAIR && colbox.hbox_num >= 3) || colbox.attack == AT_JAB){
		var oang = colbox.kb_angle;
		colbox.kb_angle = 15;
		var box_angle = get_hitbox_angle(colbox);
		colbox.kb_angle = oang;
	}
	lockout = 10;
	hsp = dcos(box_angle) * (colbox.damage + (colbox.kb_value * colbox.kb_scale))*1.2;
	vsp = -dsin(box_angle) * (colbox.damage + (colbox.kb_value * colbox.kb_scale))*1.2;
}

if image_yscale >= 1 && instance_exists(colpla) && colpla != player_id && !instance_exists(grabp) && ((colpla.state_cat == SC_HITSTUN) || (abs(hsp) > 1 || abs(vsp) > 1)) && !colpla.super_armor && !colpla.invincible{
	grabp = colpla;
}
if instance_exists(grabp){
	grabp.x = x;
	grabp.y = y + grabp.char_height/2;
	grabp.state = PS_FLASHED;
	grab_timer++;
	if !(grab_timer % 10){
		create_hitbox(AT_NSPECIAL, 2, x, y);
	}
	if grab_timer >= 31 + ragnarok_lv*10{
		sound_play(sound_get("ragnarok_explode" + (ragnarok_lv < 3? "2": "")));
		spawn_dust_fx(x, y - 4, sprite_get("ragnarok_explosion"), 25);
		instance_destroy(self);
		exit;
	}
}

//bounce code for left facing wall and floor
if (place_meeting(x + hsp, y + vsp, asset_get("par_block")))
{
	hsp *= -1;
	vsp *= -1;
}

//bounce code for right facing wall and ceiling
if (place_meeting(x - hsp, y - vsp, asset_get("par_block")))
{
	hsp *= 1;
	vsp *= 1;
}

//death
if (instance_exists(self) && lifetime >= 200 + 100 * ragnarok_lv)
{
	sound_play(sound_get("ragnarok_destroyed"));
	var fx_orb = instance_create(x, y, "obj_article2");
	fx_orb.particle_type = 1;
	fx_orb.sprite_index = sprite_get("ragnarok_artc_3");
	instance_destroy(self);
	exit;
}
break;

//wisdom keyblade
case 1:
colp = collision_ellipse(x, y + 20, x + 60*spr_dir, y - 40, oPlayer, 1, 1);
timer++;
lifetime--;
switch state{
	case 0: //spawn
	image_index = timer/5;
	if timer == 15{
		state = (instance_exists(player_id.fsp_grab)? 2: 1);
		timer = 0;
	}
	break;
	case 1: //idle
	image_index = (timer/5)%6 + 5 + 17*deck + 6*(deck>0);
	if !lifetime || (instance_exists(colp) && colp != player_id && colp.state_cat == SC_HITSTUN && !colp.hitstop){
		state = 2;
		timer = 2;
		if instance_exists(colp) colp.hitstop = 99;
	}
	break;
	case 2: //attack
	if instance_exists(colp) && timer < 16 && colp != player_id && colp.state_cat == SC_HITSTUN && !colp.hitstop colp.hitstop = 99;
	image_index = (timer/4) + 11 + 17*deck + 6*(deck>0);
	if timer == 14 sound_play(asset_get("sfx_swipe_medium2"))
	if timer == 16{
		hbox = create_hitbox(AT_FSPECIAL, 6, x + 10*spr_dir, y - 14);
		with hbox if "deck" not in self deck = other.deck;
		switch deck{
			case 0:
			hbox.effect = 1;
			hbox.hit_effect = 253;
			hbox.sound_effect = sound_get("KB_hitmedium1");
			break;
			case 1:
			hbox.hit_effect = 199;
			hbox.sound_effect = sound_get("KB_hitmedium1");
			break;
			case 2:
			hbox.extra_hitpause = 40;
			hbox.hit_effect = 157;
			hbox.sound_effect = sound_get("sora_thunder3");
			break;
			case 3:
			hbox.sound_effect = sound_get("KB_hitmedium1");
			break;
		}
	}
	if timer >= 43{
		state = 3;
		timer = 0;
		sound_play(asset_get("sfx_oly_flashstun"), 0, noone, 0.5, 1.2);
	}
	break;
	case 3: //die
	image_index = (timer/4) + 22;
	if timer == 23{
		instance_destroy(self);
		exit;
	}
	break;
}
if !lifetime && state < 2{
	state = 2;
	timer = 0;
}
break;

//wisom trap
case 2:
timer++;
lifetime--;
switch state{
	case 0://spawn
	image_index = timer/5;
	if timer == 31{
		state = 1;
		timer = 0;
	}
	break;
	
	case 1://idle
	image_index = (timer/5)%6 + 8 + 12*deck;
	if !lifetime || trigger{
		state = 2;
		timer = 0;
		hbox = create_hitbox(AT_NSPECIAL, 4, x - 1 *spr_dir, y);
		with hbox if "deck" not in self deck = other.deck;
		switch deck{
			case 0:
			hbox.effect = 1;
			hbox.hit_effect = 253;
			sound_play(sound_get("sora_fire2"));
			sound_play(sound_get("ragnarok_explode"), 0, noone, 0.2);
			break;
			case 1:
			hbox.hit_effect = 199;
            sound_play(asset_get("sfx_abyss_hazard_burst"));
			sound_play(sound_get("ragnarok_explode"), 0, noone, 0.2);
			break;
			case 2:
			hbox.extra_hitpause = 40;
			hbox.hit_effect = 157;
			sound_play(sound_get("sora_thunder3"));
			sound_play(sound_get("ragnarok_explode"), 0, noone, 0.2);
			break;
			case 3:
			sound_play(sound_get("ragnarok_explode"));
			break;
		}
	}
	break;
	
	case 2://explode and die
	image_index = timer/4 + 14 + 12*deck;
	if timer == 24{
		instance_destroy(self);
		exit;
	}
	break;
}
break;

//final keyblade
case 3:
colp = collision_ellipse(x, y + 20, x + 60*spr_dir, y - 40, oPlayer, 1, 1);
timer++;
hsp = lerp(hsp, 0, 0.05);
alive_time++;
switch(state){
	case 0://spawn
	image_index = timer/5;
	if timer == 25{
		state = (instance_exists(player_id.fsp_grab)? 2: 1);
		timer = 0;
	}
	break;
	case 1://idle
	depth = player_id.depth - 2;
	image_index = (timer/5)%10 + 5
	if(instance_exists(colp) && colp != player_id && colp.state_cat == SC_HITSTUN && !colp.hitstop){
		state = 2;
		timer = 2;
		if instance_exists(colp) colp.hitstop = 99;
	}
	if force_cd{
		force_cd = 0;
		state = 3;
		timer = 0;
	}
	if player_id.form != 4 || force_death{
		state = 4;
		timer = 0;
	}
	break;
	case 2://attack
	if instance_exists(colp) && timer < 16 && colp != player_id && colp.state_cat == SC_HITSTUN && !colp.hitstop colp.hitstop = 99;
	image_index = (timer/4)%14 + 15;
	if timer == 14 sound_play(sound_get("blade" +  string(final_blade_sprite) + "_swipe"));
	if timer == 20{
		var blade = create_hitbox(AT_FSPECIAL, 6, x + 10*spr_dir, y - 14);
		blade.sound_effect = sound_get("blade" +  string(final_blade_sprite) + "_hitmed" + string(get_gameplay_time()%2 + 1));
		blade.damage = 4;
		blade.hit_effect = player_id.hfx[random_func(abs(floor((get_gameplay_time())%200)), 4, 1)];
	}
	if timer >= 55{
		state = 3;
		timer = 0;
	}
	break;
	case 3://cooldown
	image_index = (timer/5)%10 + 5;
	if timer >= cooldown{
		state = 1;
		cooldown = 120;
	}
	if force_cd{
		force_cd = 0;
		state = 3;
		timer = 0;
	}
	if player_id.form != 4 || force_death{
		state = 4;
		timer = 0;
	}
	break;
	case 4://despawn
	image_index = (timer/4) + 44;
	if timer = 1{
		sound_play(asset_get("sfx_oly_flashstun"), 0, noone, 0.5, 1.2);
		player_id.final_blades[@final_blade_sprite] = noone;
	}
	if timer == 31{
		instance_destroy(self);
		exit;
	}
	break;
	case 5://flowmotion
	image_index = 5;
	break;
	case 6: //spin
	image_index = (timer/4)%15 + 29;
	if timer == 1 sound_play(asset_get("sfx_spin"));
	if (timer - 1)%8 == 0 && timer < 29{
		spinbox = create_hitbox(AT_FSPECIAL, 6, x, y);
		spinbox.sound_effect = sound_get("blade" +  string(final_blade_sprite) + "_hitweak");
		spinbox.damage = 1;
		spinbox.hit_flipper = 4;
		spinbox.length = 8;
		spinbox.kb_angle = 50;
		spinbox.hit_effect = player_id.hfx[random_func(abs(floor((get_gameplay_time())%200)), 4, 1)];
	}
	if instance_exists(spinbox){
		spinbox.x = x;
		spinbox.y = y;
	}
	if timer >= 59{
		state = 3;
		timer = 0;
	}
	break;
}

break;
}