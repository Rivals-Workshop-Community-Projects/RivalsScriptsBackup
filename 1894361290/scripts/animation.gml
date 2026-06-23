switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if ((state == PS_CROUCH || ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_2)) && down_down){
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
		if (crouch_walking){
				if (window == 1){
					sprite_index = sprite_get("crawl");
					hurtboxID.sprite_index = sprite_get("crawl_hurt");
					crouch_honk_vfx_timer = 0;
				}
				if (window == 2){
					if (window_timer < 6){
						sprite_index = sprite_get("dspecial_2_crawl");
						hurtboxID.sprite_index = sprite_get("dspecial_2_crawl_hurt");
					} else {
						sprite_index = sprite_get("crawl");
						hurtboxID.sprite_index = sprite_get("crawl_hurt");
					}
				}
		} else {
				sprite_index = sprite_get("dspecial_2");
				hurtboxID.sprite_index = sprite_get("dspecial_2_hurt");
		}
	} else {
		if (crouch_walking){
			sprite_index = sprite_get("crawl");
		}
	}
	if (crouch_walking){
		image_index = crouch_walk_timer*crouch_walk_anim_speed;
	}
	if (crouch_walk_timer % 9 == 0 && crouch_walk_timer != 0) spawn_base_dust(x - 6*sign(hsp), y, "walk", spr_dir*(sign(hsp)));
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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