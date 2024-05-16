//hitbox_init.gml
//hitbox_init works similarly to init.gml, we put all our hitbox variables in here, the ones that we will later use in hitbox_update.gml

//if the destroy effect isn't set, just make it the hit effect (no idea why this *isn't* a thing)
if (destroy_fx == 0) destroy_fx = hit_effect;

//PROJECTILE WITH MELEE HITBOX BEHAVIOUR
pseudo_melee_hitbox = false;
hbox_width = 1
hbox_height = 1

//stores hitbox grid varuables
with (player_id)
{
  other.pseudo_melee_hitbox = get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MELEE);
  other.hbox_width = get_hitbox_value(other.attack, other.hbox_num, HG_WIDTH);
  other.hbox_height = get_hitbox_value(other.attack, other.hbox_num, HG_HEIGHT);
  
  other.old_hsp = get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_HSPEED)
	other.old_vsp = get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_VSPEED)

}

if(pseudo_melee_hitbox == 1){
	if(owner == noone) owner = player_id
	
  x = floor(owner.x + abs(x_pos)*owner.spr_dir + owner.hsp)
	y = floor(owner.y + y_pos + owner.vsp)
  
  transcendent = true
  // projectile_parry_stun = true
  plasma_safe = true
  enemies = true
  grounds = true
  walls = true
  grav = 0
  
}

if("mist_angle" not in self){
	mist_angle = 0
}
if("lvl" not in self){
	lvl = 0
}

hitbox_hitstop = 0;
solids = asset_get("par_block");
plats = asset_get("par_jumpthrough");

if(attack == player_id.coin_atk){
	max_bounces = 1;
	bounces = max_bounces;
	bounced = false;
	bounced_player_id = noone;
	bounced_hit_delay = 35;
	bounced_hit_timer = 0;
	hit_gs = false;
	upgrade_cooldown = 5;
	switched_owner = false;
	
  if((place_meeting(x, y+2, solids) or place_meeting(x, y+2, plats)) and vsp >= 0){
  	if(old_vsp > 0.5){
  		vsp = old_vsp*-1*0.85;
	  	var vol = clamp(abs(vsp/20), 0, 0.15);
	  	var pitch = clamp(1/vol, 1, 2);
	  	sound_play(asset_get("sfx_absa_cloud_placepop"), false, noone, vol, 1/vol)
	  }
	}
	// print(vsp)
	old_vsp = vsp
}