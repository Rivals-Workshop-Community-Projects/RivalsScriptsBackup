//print(get_state_name(state))
switch (state){
    case PS_IDLE:
        if nspecial_grabbed_player != noone {
            sprite_index = sprite_get("grab_idle");
			if (state_timer == 45){ state_timer = 0; }
        }
    
    break;
    case PS_RESPAWN:
    case PS_SPAWN:
    break;
    
    case PS_JUMPSQUAT:
    if nspecial_grabbed_player != noone sprite_index = sprite_get("grab_jumpstart");
    break;
    case PS_LAND:
    if nspecial_grabbed_player != noone sprite_index = sprite_get("grab_land");
    break;
    
    case PS_FIRST_JUMP:
    case PS_DOUBLE_JUMP:
    case PS_IDLE_AIR:
    if nspecial_grabbed_player != noone sprite_index = sprite_get("grab_jumpstart");
    break;
    case PS_DASH_TURN:
    case PS_WALK_TURN:
    if nspecial_grabbed_player != noone sprite_index = sprite_get("grab_turn");
    break;
    case PS_WALK:
    case PS_DASH:
    if nspecial_grabbed_player != noone sprite_index = sprite_get("grab_dash");
    break;
    case PS_DASH_START:
    if nspecial_grabbed_player != noone sprite_index = sprite_get("grab_dashstart");
    break;
    case PS_DASH_STOP:
    if nspecial_grabbed_player != noone sprite_index = sprite_get("grab_dashstop");
    break;
    case PS_WALL_JUMP:
    if (vsp == 0 || hsp == 0){ sprite_index = sprite_get("wallcling"); }
    else {
    sprite_index = sprite_get("walljump"); //Change when he flies off
    image_index = floor(image_number*state_timer/(image_number*8)); }
    //image_index = floor(image_number*state_timer/(image_number*5)); }
    break;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    if (bomb_numbering >= 3.5){
    if (attack == AT_FSPECIAL){
        if (window == 1){ sprite_index = sprite_get("fspecial_bully"); }
        }
    }
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    if (attack == AT_USPECIAL){
        sprite_index = spr_dir <= -1 ? sprite_get("uspecial_left") : sprite_get("uspecial")
    }
}

if (state == PS_SPAWN) {
    if (introTimer < 15 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if(state == PS_RESPAWN){
sprite_index = sprite_get("plat_hoot");
image_index = floor(image_number*state_timer/(image_number*4));
}
if(respawn_taunt){
sprite_index = sprite_get("plat_taunt");
}

if(state == PS_WALL_JUMP) && (clinging == 1){
sprite_index = sprite_get("wallcling");
image_index = floor(image_number*state_timer/(image_number*6));
    if(cling == 0){
    cling = 1;
    sound_play(sound_get("ssbu_sephimpale"));
    }
}


//ALL THIS BECAUSE DAN DECIDED "hmmm today i will make wall_frames nOT FUCKING W O R K P R O P E R L Y"
if(state == PS_WALL_JUMP && clinging == 0){
sprite_index = sprite_get("walljump");
wallanim++
    if (cling == 1){
	cling = 2; wallanim = 0;
	}
	if (wallanim >= 0 && wallanim < 8){ image_index = 0}
	if (wallanim >= 8 && wallanim < 16){ image_index = 1}
	if (wallanim >= 16 && wallanim < 24){ image_index = 2}
	if (wallanim > 24 ){ image_index = 3}
}

// IDLE TWEAKS
if(state == PS_IDLE)
{
    

    switch(idleState)
    {
        case 0:
            {
                if(image_index%8 == 0 && image_index != 0 && state_timer >10)
                {
                    idleState = (random_func(10,2,true) == 0) ? 0 : random_func(11,4,true);
                    set_state(PS_IDLE);
					image_index = 0;
                }
            
            }
            break;
        case 1:
            {
                sprite_index = sprite_get("idle2");
                if(state_timer == 40)
                {
                    idleState = 0;
                    set_state(PS_IDLE);
                }
            }
            break;
        case 2:
            {
                sprite_index = sprite_get("idle3");
                if(state_timer == 38)
                {
                    idleState = 0;
                    set_state(PS_IDLE);
                }
            }
            break;
       
    }
   
   // idleState
   // 0 - Basic Idle
   // 1 - Portal Tweak
   // 2 - Twirl Tweak
   // 3 - Pose Tweak
}
else
{
    idleState = 0;
}