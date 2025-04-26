// article1_init

init = 0;
shader = get_player_color( player_id.player );
sprite_index = sprite_get( (shader == 0 ? "unshaded_" : "") + "trap");
state = 0;
state_timer = 0;
life_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = false;
uses_shader = true;
offset = 0;
should_die = false;
busy = false;
hits = 0;
hsp = 0;
owner = player_id.player;
is_hittable = true;
hitpause_time = 0;

while(!position_meeting(x,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x,bbox_bottom+1,asset_get("par_jumpthrough"))){
    y++;
    if(y > room_height + 100){
        instance_destroy(); 
        exit;
    }
}

spr_dir = player_id.spr_dir;

if (state == 0) { //code borrowed from Mycolich DTilt
    
    var maxlen = 76;
    var of = 34*player_id.spr_dir;
    
    for (x = player_id.x; abs(x - player_id.x) < maxlen; x += player_id.spr_dir*10) {
    
        if (!position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough"))){
            repeat(30){
                x *= player_id.spr_dir;
                if (position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) or position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough"))) break;
            }
            break;
        }
    }    
}