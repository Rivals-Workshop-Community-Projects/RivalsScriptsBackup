lock_state = false;

can_be_grounded = (vsp >= 0 && !free);
vsp = free ? min(vsp + grav_sp, 12) : 0;

player_id.move_cooldown[AT_DSPECIAL] = 2;

//print(state_timer)

var shouldLoop = false;
var loop_frame = 0;
var shouldDestroy = false;

with pHitBox
{
	if player_id != other.player_id break;
	
    if attack == AT_FSPECIAL and place_meeting(x,y,other)
    {
        if other.state == "idle"
        {
            with other
            {
                shouldLoop = false;
                image_index = 8;
                switchState("throw");
                
            }
            
            vsp = -10;
            break;
        }
    }
}

switch (state)
{
    
    case "idle":
	
		if (player_id.nspecial_grabbed_player == id){
			spr_dir = player_id.spr_dir;

			shouldLoop = true;
			loop_frame = 7
			image_index += 0.18
				
			if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){

				var angle = 50;
				var knockback = 8; //get_hitbox_value(player_id.attack, 1, player_id.HG_BASE_KNOCKBACK)
					
				var throw_windtimer = 1;
				var throw_window = 1;
				switch(player_id.attack){
					case AT_DTHROW:
						angle = 270;
						throw_window = 2;
					break;
					case AT_UTHROW:
						angle = 100;
						throw_window = 2;
					break;
					case AT_EXTRA_1:
						angle = 135;
						throw_window = 2;
					break;
					default:
						angle = 50;
						throw_window = 2;
					break;
				}
						
				if (player_id.attack == AT_FTHROW || player_id.attack == AT_DTHROW || player_id.attack == AT_UTHROW || player_id.attack == AT_EXTRA_1) && (player_id.window == throw_window && player_id.window_timer == throw_windtimer){
					player_id.nspecial_grab_timer = 0;
						player_id.nspecial_grabbed_player = noone;
						
					hsp = (knockback * cos(degtorad(angle)) * player_id.spr_dir);
					vsp = (-knockback * sin(degtorad(angle)));
						
					if hsp != 0 // correct face dir
						spr_dir = sign(hsp);
				}
			}
		}
		else{
			shouldLoop = true;
			loop_frame = 7
			image_index += 0.18
			if state_timer == 0
			{
				vsp = 0;
			}
			
			if !free{
			hsp = lerp(hsp, move_speed * spr_dir, 0.05);
			}
			
			with (oPlayer)
			{
				if place_meeting(x,y,other) and self != other.player_id && !(invincible || hitpause)
				{
					with other
					{
						shouldLoop = false;
						image_index = 8;
						sound_play(sound_get("sm64_woosh"))
						with player_id create_hitbox(AT_DSPECIAL, 1, other.x + 10*(other.spr_dir), other.y - 24)
						switchState("throw");
					}
					break;
				}
				
			}
			
			var chuck_distance = point_distance(player_id.x, player_id.y, x, y);
			if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
				if (player_id.attack == AT_NSPECIAL) && (chuck_distance <= 50 && player_id.nspecial_grabbed_player == noone) && (player_id.window <= 2) && state == "idle"{
					player_id.nspecial_grab_timer = player_id.nspecial_grab_max_time;
					player_id.nspecial_grabbed_player = id;
				}
			}
		}	
    break;
    
    case "throw":
    if state_timer == 0
    {
        sound_stop(whir)
    }
    hsp = lerp(hsp, 0, 0.2)
    image_index += throw_aspeed;
    if image_index == 12 switchState("throwhold");
    break;
    
    case "throwhold":
    if state_timer == 20
    {
        image_index = 13;
        switchState("boom");
        create_hitbox(AT_DSPECIAL, 2, x-(spr_dir*6), y - 24)
        sound_play(sound_get("sm64_blast"))
    }
    break;
    
    case "boom":
    image_index += 0.4
    break;
}

if place_meeting(x + hsp,y, asset_get("par_block")){
	spr_dir = -spr_dir;
	hsp = -hsp;
}

if shouldLoop and image_index > loop_frame image_index = 0; 

if image_index >= sprite_get_number(sprite_index) shouldDestroy = true;

state_timer += !lock_state;

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	shouldDestroy = true;
}

if (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y)) || shouldDestroy
{
    sound_stop(whir);
    with player_id move_cooldown[AT_DSPECIAL] = 5
    instance_destroy();
}

#define switchState(_state)
state = _state;
state_timer = 0;
lock_state = true;
