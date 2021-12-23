// While crouching, use different sprites for moving and turning
if ((state == PS_CROUCH) && (driving)) {
    // Turn around if needed
    if (spr_dir_prev != spr_dir) {
        crouch_turning_timer = 0;
        sound_play(tire_screech_sound, false, noone, 0.5, 1);
    }
    if (crouch_turning_timer < crouch_turning_timer_max) {
    	sprite_index = sprite_get("crouchturn");
    	image_index = floor(crouch_turning_timer / (crouch_turning_timer_max / 2));
    	crouch_turning_timer++;
    } else {
        // Movement sprite
    	if (left_down || right_down) {
    		sprite_index = sprite_get("crouchmoving");
    		image_index = floor(crouch_anim_timer / (crouch_anim_timer_max / 2));
    		//if (vroom_cooldown == 0) {
    	    if (vroom_allowed) {
    			sound_play(engine_vroom_sound);
    			vroom_allowed = false;
    			spawn_base_dust(x - (spr_dir * 20), y, "dash_start");
    			//vroom_cooldown = vroom_cooldown_max;
    		}
    	} else {
    	    vroom_allowed = true;
    	}
    }
    crouch_anim_timer++;
    crouch_anim_timer %= crouch_anim_timer_max;
    //if (vroom_cooldown > 0) {
    //    vroom_cooldown--;
    //}
} else {
    crouch_anim_timer = 0;
    crouch_turning_timer = crouch_turning_timer_max;
    //vroom_cooldown = 0;
    vroom_allowed = true;
}
spr_dir_prev = spr_dir;


// Function to spawn built-in dust effects, courtesy of SupersonicNK
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