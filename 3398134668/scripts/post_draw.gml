// post-draw is a script that draws things in front of the player

//user_event(12);
var inAttack = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

if grabFlash > 0{
    alpha = grabFlash/10;
    
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 0, c_white, alpha);
    maskMidder();
    draw_sprite_tiled(sprite_get("gauge_bar2"), 0, x, y);
    maskFooter();
}

if instance_exists(abyssItem){
    
    var increaseTime = round((current_time / 120) / 2) * 2;
    maskHeader();
    draw_sprite_ext(sprite_get("azula_itemselect"), abyssItem.itemNumber+2, abyssItem.x, abyssItem.y, 1, 1, 0, c_white, 1);
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("azula_shieldmask14"), 0, 0+increaseTime, 0+increaseTime, 2, 2, c_white, 1);
    maskFooter();
    
}
if has_rune("O"){
    if attack == AT_NSPECIAL && inAttack && window == 1{
        if nspecialCycleTimer > 0{
            var spriteOffsetY = y-80;
            draw_sprite_ext(sprite_get("azula_itemselect"), ((nspecialCycleTimer)/itemCycleFrequency mod itemAmount), x, spriteOffsetY, 1*spr_dir, 1, 0, c_white, 1-(instance_exists(ownItemOut[itemIndex])/2));   
        }
    }
    
    var itemArray = ownItemOut;
    for (var r = 0; r < array_length(itemArray); r++){
        if instance_exists(itemArray[r]){
            if itemArray[r].itemNumber != 3 && itemArray[r].itemNumber != 1{
                var rotation = round((itemArray[r].rotationAnimation mod 360) / 90) * 90;
                draw_sprite_ext(itemArray[r].sprite_index, itemArray[r].image_index, itemArray[r].x, itemArray[r].y, 1, 1, rotation, c_white, 1);
            }
            if itemArray[r].image_index == 2{
                draw_sprite_ext(sprite_get("bowlingshine"), 0, itemArray[r].x, itemArray[r].y, 2, 2, 0, c_white, .6);
            }
        }
    }
}
if levelupEffectTimer > 0{
    var posX = x;
    var posY = y-40;
    var index = floor(30-(levelupEffectTimer/5));
    
    draw_sprite_ext(levelupEffects[clamp(comboLevel-1, 0, 4)], index, posX, posY, 1, 1, 0, c_white, 1);
}


if incrementDspecial > 0 && attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    var index = clamp(incrementDspecial/3, 0, 5);
    var ypos = y - 30;
    if free ypos = y - 40;
    shader_start();
    draw_sprite_ext(sprite_get("dspecial_shine"), index, x, ypos, 2, 2, 0, c_white, 1);
    
    if has_rune("D") && window_timer > 1 && window == 2{
        var alpha = (window_timer/12) + ((state_timer mod 7)/10);
        maskHeader();
            draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 0, c_white, .4*alpha);
        maskMidder();
        
            draw_sprite_tiled_ext(sprite_get("electric_noise"), 0, x, y, 2, 2, c_white, 1);
        maskFooter();
        
    }
    shader_end();
}
shader_start();
if airDstrongTimer < 100 && attack == AT_DSPECIAL_2 && state == PS_ATTACK_GROUND{
    var index = clamp(airDstrongTimer/3, 0, 5);
    shader_start();
    draw_sprite_ext(sprite_get("rune_dstrong_effect"), index, x, y, 1, 1, 0, c_white, 1);
    shader_end();
}
    

if has_rune("O"){
    if instance_exists(closestItem){
        if closestDistance < itemPickupDist{
            var extraOffset = (player*12)
            draw_sprite_ext(sprite_get("azula_pickuparrow"), 0, closestItem.x, closestItem.y-32-extraOffset, 1, 1, 0, c_white, 1);
        }
    }
}
shader_end();
//this version works properly for the CSS playtest
#define maskHeader
{
    //this saves some gpu data, it's used to allow us to draw masks safetly without breaking anything
    //as we later reset the state
    gpu_push_state();
    
    //set the mask to take effect on pretty much everything in the room
    //below this function, add the MASK
    gpu_set_alphatestenable(false);
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
#define maskMidder
{
    //sets the thing underneath the mask to be drawn
    //below this function, add the TEXTURE
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
#define maskFooter
{
    //playtest zone fix by frtoud
    //this piece of code essencially cancels out the black void in playtest when using masks
    if (object_index == oTestPlayer)
    {
        gpu_set_blendenable(false);
        gpu_set_alphatestenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
    }
    //gpu state reset, restores everything back to normal
    gpu_pop_state();
}
