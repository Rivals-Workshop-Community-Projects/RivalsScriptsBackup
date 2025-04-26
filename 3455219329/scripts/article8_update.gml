//Launch status update
time++;
//Connect to player and launch
if(time < maxtime){
	if(place_meeting(x, y, asset_get("par_block")) or place_meeting(x, y, asset_get("par_jumpthrough"))){
		time = 300;
	}
	if(time%3 = 1){//Baby want smoko
		spawn_base_dust(x,y,"smoke",0)
	}
	if(instance_exists(blast_hit)){
		blast_hit.x = x;
		blast_hit.y = y;
		blast_hit.player = hitplayer.player
		print(blast_hit.player)
	}
	if(hitplayer != noone){
	    with(oPlayer){
	        if (self = other.hitplayer){
	            other.y = y
	            other.x = x;
            }
        }
    }
} else {
	destroy_hitboxes();
	//blast_hit.instance_destroy();
	instance_destroy();
	exit;
}

#define spawn_base_dust
/// @param x
/// @param y
/// @param name
/// @param dir=0
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
    case "smoke": dlen = 12; dfx = 13; dfg = 2646; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;