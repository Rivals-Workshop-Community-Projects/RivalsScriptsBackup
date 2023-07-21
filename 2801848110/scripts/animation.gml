switch (state){
    case PS_WALK_TURN:
    image_index = 2
    break;
    
    case PS_LAND:
    sprite_index = sprite_get("jumpstart")
    image_index = 0
    break;

    
    case PS_PRATLAND:
    sprite_index = sprite_get("landinglag")
    image_index = min(state_timer/5,2)
    break;  
    
    case PS_TECH_GROUND:
    sprite_index = sprite_get("waveland")
    image_index = min(state_timer/3,3)
    break;
    
    case PS_ROLL_BACKWARD:
    case PS_TECH_BACKWARD:
    sprite_index = sprite_get("roll_forward")
    //image_index = min(state_timer/3,3)
    break;
    

}


if state == PS_SPAWN {
     if state_timer < 35 {
       draw_indicator = false
     }
     if state_timer == 15 {
         sound_stop(asset_get("sfx_ori_grenade_aim"))
           spawn_hit_fx(x,y,RC)
sound_play(asset_get("sfx_ori_grenade_aim"),false,noone,.9,1.4)     }
    if state_timer == 35 {
        vfx = spawn_hit_fx(x,y - 40,306)
         vfx.pause = 10
         sound_stop(asset_get("sfx_clairen_spin"))
         sound_stop(asset_get("sfx_waveland_abs"))
         sound_stop(asset_get("sfx_ori_energyhit_medium"))
        sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.6)
     	sound_play(asset_get("sfx_waveland_abs"),false,noone,1,1)
         	spawn_hit_fx(x,y,RC)
     	spawn_hit_fx(x,y - 60,air)
     	spawn_hit_fx(x,y - 160,air)
     	spawn_hit_fx(x,y - 260,air)
     	draw_y = 0
    } else if state_timer < 45{
        draw_y = 999
    } else if state_timer < 55 { 
       sprite_index = sprite_get("crouch")
    } else {
       sprite_index = sprite_get("idle") 
    }
}


if state == PS_RESPAWN {
    if state_timer == 70 {
         vfx = spawn_hit_fx(x,y,306)
         vfx.pause = 5
         sound_play(asset_get("sfx_ori_grenade_aim"),false,noone,.9,1.2)
     }
    if state_timer == 90 {
        sound_play(asset_get("sfx_clairen_spin"),false,noone,1,1.6)
     	sound_play(asset_get("sfx_waveland_abs"),false,noone,1,1)
     	spawn_hit_fx(x,y,RC)
    }
}


if !is_attacking {
    last_spr = sprite_index
    last_img = image_index
}

if is_attacking && attack == AT_NSPECIAL {
    sprite_index = last_spr
    image_index = last_img
}