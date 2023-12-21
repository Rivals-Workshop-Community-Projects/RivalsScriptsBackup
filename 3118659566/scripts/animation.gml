if (state == PS_ATTACK_AIR && attack == AT_EXTRA_1 && window == 1 && (get_gameplay_time() %  4 == 0)){
    var kx = x + (spr_dir * 20) - (spr_dir * random_func(0, 60, true));
    var ky = y - random_func(2, char_height - 20, true);
    var k = spawn_hit_fx(kx, ky, vfx_airdash_charge);
	k.depth = depth + 1;
} 


if state == PS_ATTACK_AIR && attack == AT_EXTRA_1 && window == 2 {
    
    if snapped_angle = 90 { 
        sprite_index = sprite_get("maildash_up");
		hurtboxID.sprite_index = sprite_get("maildash_up_hurt");
    } else if snapped_angle = 270 { 
        sprite_index = sprite_get("maildash_down");
   		hurtboxID.sprite_index = sprite_get("maildash_down_hurt");
    }
 
if spr_dir = 1 {    
    if snapped_angle = 360 || snapped_angle = 0 { 
        sprite_index = sprite_get("maildash_right");
		hurtboxID.sprite_index = sprite_get("maildash_right_hurt");
    } else if snapped_angle = 180 { 
        sprite_index = sprite_get("maildash_left");
		hurtboxID.sprite_index = sprite_get("maildash_left_hurt");
    } else if snapped_angle = 135 { 
        sprite_index = sprite_get("maildash_upleft"); 
		hurtboxID.sprite_index = sprite_get("maildash_upleft_hurt");
    } else if snapped_angle = 45 { 
        sprite_index = sprite_get("maildash_upright"); 
		hurtboxID.sprite_index = sprite_get("maildash_upright_hurt");
    } else if snapped_angle = 225 { 
        sprite_index = sprite_get("maildash_downleft"); 
		hurtboxID.sprite_index = sprite_get("maildash_downleft_hurt");
    } else if snapped_angle = 315 { 
        sprite_index = sprite_get("maildash_downright"); 
		hurtboxID.sprite_index = sprite_get("maildash_downright_hurt");
    }
} if spr_dir = -1 {
    if snapped_angle = 360 || snapped_angle = 0 { 
        sprite_index = sprite_get("maildash_left");
		hurtboxID.sprite_index = sprite_get("maildash_left_hurt");
    } else if snapped_angle = 180 { 
        sprite_index = sprite_get("maildash_right");
		hurtboxID.sprite_index = sprite_get("maildash_right_hurt");
    } else if snapped_angle = 135 { 
        sprite_index = sprite_get("maildash_upright"); 
		hurtboxID.sprite_index = sprite_get("maildash_upright_hurt");
    } else if snapped_angle = 45 { 
        sprite_index = sprite_get("maildash_upleft"); 
		hurtboxID.sprite_index = sprite_get("maildash_upleft_hurt");
    } else if snapped_angle = 225 { 
        sprite_index = sprite_get("maildash_downright"); 
		hurtboxID.sprite_index = sprite_get("maildash_downright_hurt");
    } else if snapped_angle = 315 { 
        sprite_index = sprite_get("maildash_downleft"); 
		hurtboxID.sprite_index = sprite_get("maildash_downleft_hurt");
    }
}
}

//================================================================
//updating flipped animation status (only update when not "busy" )
if !hitpause && (!free || !(state == PS_ATTACK_AIR || state == PS_AIR_DODGE))
{
    set_gravflipped(free && inside_flipfield_timer > 0);
}

//flipping animation
if (gravflip_anim_timer > 0) 
{
    gravflip_anim_timer--;
    spr_angle = ease_quadIn(0, 100, gravflip_anim_timer, gravflip_anim_timer_max);
    draw_x = (is_gravflipped ? 1 : -1) * lengthdir_y(1, spr_angle) * (char_height / 2);
    draw_y = (is_gravflipped ? 1 : -1) * (1 - lengthdir_x(1, spr_angle)) * (char_height / 2);
}
//================================================================
//reverse the logic that decides the jump sprite (felt like it)
if (sprite_index == sprite_get("jump")) && is_gravflipped
{
    //depends on the number of images in jump strip
    image_index = min((clamp(-max_fall, max_fall, -vsp)/ 2.0 / max_fall + 0.5) * image_number, image_number - 1);
}


//this makes sure the pre_draw overrides get restored in post_draw
//gravflipped_draw_backups.draw_y = draw_y;
gravflipped_draw_backups.sprite_index = sprite_index;
gravflipped_draw_backups.image_index = image_index;

//see set_attack.gml (keep in sync)
#define set_gravflipped(new_val)
if (new_val != is_gravflipped)
{
    is_gravflipped = !is_gravflipped;
    gravflip_anim_timer = gravflip_anim_timer_max;
    sound_play(gravflip_sfx);
}