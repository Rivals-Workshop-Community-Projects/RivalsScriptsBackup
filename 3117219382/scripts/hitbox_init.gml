//hitbox_init.gml
//hitbox_init works similarly to init.gml, we put all our hitbox variables in here, the ones that we will later use in hitbox_update.gml

//if the destroy effect isn't set, just make it the hit effect (no idea why this *isn't* a thing)
if (destroy_fx == 0) destroy_fx = hit_effect;

//PROJECTILE WITH MELEE HITBOX BEHAVIOUR
psuedo_melee_hitbox = false;
hbox_width = 1
hbox_height = 1

//MULTIHIT PROJECTILE
proj_hit_count = 0; //counts up the hits
proj_gap_timer = 0; //timer that counts down when hits should connect
hitbox_hitstop = 0; //hitbox is affected by hitpause
proj_multihit_final = false; //if true, it will stop the multihit code and remove the projectile
multihit_hit_player = noone; //records hit player
multihit_escape_time = 0; //when it reaches 5, the multihit_hit_player will stop being affected by the projectile
additional_radius = 10; //exta threshhold for the multihit projectile's collision

//hitbox grid stuff
multihit_amount = 0; //sets amount of hits
multihit_gap = 0; //sets time between hits
multihit_damage = 0;
multihit_vfx = 0; //sets the hit effect for when a multihit hits
multihit_sfx = 0;

//HOMING PROJECTILE
homing_enabled = false;
home_target = noone; //the player to target with the homing
home_max_speed = abs(point_distance(0, 0, hsp, vsp)); //speed limiter, it prevents the projectile from going faster than what you put as HG_PROJECTILE_HSPEED and _VSPEED
home_turn_speed = 0.1; //turning speed

//stores hitbox grid varuables
with (player_id)
{
  other.psuedo_melee_hitbox = get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MELEE);
  other.hbox_width = get_hitbox_value(other.attack, other.hbox_num, HG_WIDTH);
  other.hbox_height = get_hitbox_value(other.attack, other.hbox_num, HG_HEIGHT);
  
  other.old_hsp = get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_HSPEED)
	other.old_vsp = get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_VSPEED)

}

if(psuedo_melee_hitbox == 1){
	if(owner == noone) owner = player_id
	
  x = owner.x + abs(x_pos)*owner.spr_dir + owner.hsp
  y = owner.y + y_pos + owner.vsp
  
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


solids = asset_get("par_block");
plats = asset_get("par_jumpthrough");

if(attack == player_id.coin_atk){
	max_bounces = 1
	bounces = max_bounces
	bounced = false
	bounced_player_id = noone
	bounced_hit_delay = 35
	bounced_hit_timer = 0;
	
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