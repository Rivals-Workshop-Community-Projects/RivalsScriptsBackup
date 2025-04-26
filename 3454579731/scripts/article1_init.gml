//article1_init
sprite_index = sprite_get("cannonstand_spawn");
cannonsprite = sprite_get("cannon_spawn");
image_index = 0;
cannon_index = 0;
cannon_angle = 0;
cannon_y = 0;
fired = false;
depth = -8;

cannonball_stuck = false;
player_stuck = false;

state = 0;
state_timer = 0;
exist_timer = 0;

vsp = 6;
hsp = 0;
knocked = false;

spawned = false;
busy = false;
should_die = false;
fucking_dies = false;
shots = 0;

can_be_grounded = true;
free = true;
ignores_walls = false;
uses_shader = true;

//depth = 15;

while(!position_meeting(x,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x,bbox_bottom+1,asset_get("par_jumpthrough"))){
    y++;
    if(y > room_height + 100){
        instance_destroy(); 
        exit;
    }
}

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