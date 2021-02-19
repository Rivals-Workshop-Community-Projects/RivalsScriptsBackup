// article1_init

init = 0;

sprite_index = sprite_get("boneslow");
state = 0;
state_timer = 0;
life_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = false;
uses_shader = true;
offset = 0;

hsp = 0;


hitbox = noone;

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
                x -= player_id.spr_dir;
                if (position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) or position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough"))) break;
            }
            break;
        }
    }    
}