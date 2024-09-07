//article2_update

// update

var state_stats = player_id.state_map[? state]

switch (state) {
	case PS_SPAWN:
		if !instance_exists(hitbox_small) or (player_id.state != PS_ATTACK_AIR and player_id.state != PS_ATTACK_GROUND) {
			setState(PS_DEAD);
		}
		hitbox_small.x = x + hsp;
		hitbox_small.y = y + vsp;
		hitbox_small.hitbox_timer = 1;
	break;
	case PS_IDLE:
	    vsp = (abs(vsp)>0.01?vsp*0.85:0);
	    hsp = (abs(hsp)>0.01?hsp*0.85:0);

	    if (player_id.fspec_article != self)
	    {
	        state = PS_DEAD;
	        state_timer = 0;
	        
	    }


	    with pHitBox
		{
		    if !(place_meeting(x,y,other.id) && other.player_id == player_id && orig_player == player) continue;
			
			switch attack {
				case AT_NSPECIAL:
				case AT_USPECIAL_2: //red
					if hbox_num != 1 break;
					
		            other.state = PS_DEAD;
		            other.state_timer = 0;
		            
		        	var effect, hitbox;
		        	if (other.isRed) {
		        		effect = player_id.red_explosion
		        		hitbox = 4
		        	}
		        	else {
		        		effect = player_id.mixed_hit
		        		hitbox = 5
		        	}
					spawn_hit_fx(player_id.fspec_article.x,player_id.fspec_article.y, effect);
		            sound_play(asset_get("sfx_mol_flare_explode"))
		            var hb = create_hitbox(AT_NSPECIAL, hitbox, other.x, other.y);
		            hb.owner = self;
		            player_id.move_cooldown[AT_FSPECIAL] = 100;
		            destroyed = true;				
				break;
				case AT_USPECIAL: //blue
				case AT_NSPECIAL_2:
		            other.state = PS_DEAD;
		            other.state_timer = 0;
		            
		        	var effect, hitbox;
		        	if (other.isRed) {
		        		effect = player_id.mixed_hit
		        		hitbox = 5;
		        	}
		        	else {
		        		effect = player_id.fspec_effect
		        		hitbox = 6;
		        	}
					spawn_hit_fx(player_id.fspec_article.x,player_id.fspec_article.y, effect);
		            sound_play(asset_get("sfx_mol_flare_explode"))
		            var hb = create_hitbox(AT_NSPECIAL, hitbox, other.x, other.y);
		            hb.owner = self;
		            player_id.move_cooldown[AT_FSPECIAL] = 100;
		            destroyed = true;

				break;
				case AT_DAIR:
				case AT_DSPECIAL:
		            other.state = PS_DEAD;
		            other.state_timer = 0;
		
		            other.player_id.hitpause = true;
		            other.player_id.hitstop = 5;
		            other.player_id.hitstop_full = 5;
		            other.player_id.old_hsp = 0;
		            other.player_id.old_vsp = attack == AT_DAIR ? -13 : -9;
		            other.player_id.has_hit = true;
		    		sound_play(sound_effect);
					var fx = spawn_hit_fx(other.x+(hit_effect_x*spr_dir)+x-other.x,other.y+hit_effect_y+y-other.y,hit_effect);
					player_id.move_cooldown[AT_FSPECIAL] = 100;
					fx.spr_dir = spr_dir;			
				break;
			}
		}
	break;
	case PS_DEAD:
	if !aggro_death || state_timer != 1 break;
	
		if (isRed)
        {
            spawn_hit_fx(x,y+16,player_id.nspec_effect_red);
            var hb = create_hitbox(AT_FSPECIAL, 1, x, y);
        	hb.owner = self;
        	
        }
        else
        {
            spawn_hit_fx(x,y+16,player_id.nspec_effect);
            var hb = create_hitbox(AT_FSPECIAL, 1, x, y);
            hb.owner = self;
        }
	break;
}


image_index =  (state_timer / state_stats.length) * image_number;
if state_timer >= state_stats.length {
	if !state_stats.loop {
		setState(state_stats.next)
	}
	
	state_timer = 0;
}

// switch (state)
// {
// 	case PS_SPAWN: // appear
		
// 	break;
// 	case PS_IDLE: // idle
//     vsp = (abs(vsp)>0.01?vsp*0.85:0);
//     hsp = (abs(hsp)>0.01?hsp*0.85:0);
    
//     with pHitBox
// 	{
// 	    if !(place_meeting(x,y,other.id) && other.player_id == player_id && orig_player == player) continue;
		
// 		switch attack {
// 			case AT_NSPECIAL:
				
// 			break;
// 			case AT_DAIR:
// 			case AT_DSPECIAL:
// 	            other.state = 2;
// 	            other.state_timer = 0;
	
// 	            other.player_id.hitpause = true;
// 	            other.player_id.hitstop = 5;
// 	            other.player_id.hitstop_full = 5;
// 	            other.player_id.old_hsp = 0;
// 	            other.player_id.old_vsp = attack == AT_DAIR ? -13 : -9;
// 	            other.player_id.has_hit = true;
// 	    		sound_play(sound_effect);
// 				var fx = spawn_hit_fx(other.x+(hit_effect_x*spr_dir)+x-other.x,other.y+hit_effect_y+y-other.y,hit_effect);
// 				fx.draw_angle = kb_angle;
// 				fx.spr_dir = spr_dir;			
// 			break;
// 		}

// 	}
//     if (player_id.fspec_article != self || player_id.wisps[2] != -1)
//     {
//         state = 2;
//         state_timer = 0;
        
//         if (isRed)
//         {
//             spawn_hit_fx(x,y+16,player_id.nspec_effect_red);
//             create_hitbox(AT_NSPECIAL, 3, x, y);
//         }
//         else
//         {
//             spawn_hit_fx(x,y+16,player_id.nspec_effect);
//             create_hitbox(AT_NSPECIAL, 2, x, y);
//         }
//     }
// 	break;
// 	case 2: // disppear
//     vsp = 0;
//     hsp = 0;
//     if (image_index == 6) // if finish disappear anim
//     {
//         if (player_id.fspec_article == self)
//             player_id.fspec_article = noone;
//         instance_destroy();
//         exit;
//     }
// 	break;
// }


// render

var new_sprite;
new_sprite = state_stats.sprite[!isRed];

if (sprite_index != new_sprite)
{
    sprite_index = new_sprite;
    image_index = 0;
}

state_timer++;

if should_die {
	player_id.fspec_article = noone;
	instance_destroy();
}

#define setState(new_state)
state = new_state;
state_timer = 0;
if state == -1 {
	should_die = true;
}