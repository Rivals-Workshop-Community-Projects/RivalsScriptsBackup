
with oPlayer{
//print(string(get_player_color(player)))
}


atk = my_hitboxID.attack
hbox = my_hitboxID.hbox_num 
if my_hitboxID.attack == AT_NSPECIAL_AIR {
    if (free && !fast_falling) {
        old_vsp--
    }
    
    //clamp hsp on multihits (also in attack_update)
    if (hbox <= 6) {
        old_hsp = clamp(old_hsp, -3, 3);
        if !fast_falling old_vsp = -3
		hit_player_obj.x = lerp(hit_player_obj.x, (x + 10 * spr_dir), 0.4);
		hit_player_obj.y = lerp(hit_player_obj.y, (y + 50), 0.4);

    }
    
    if hbox != 4 {
        var wibble = random_func( 5, 1, false) 
        //print(wibble)
        sound_play(asset_get("sfx_holy_lightning"), 0, noone, .5, wibble + .5)
    } 
    if hbox == 8 || hbox == 7 {
        spawn_gem(x+(44*spr_dir), y+32, 1.5*spr_dir, -8);
        sound_play(asset_get("sfx_holy_lightning"), 0, noone, 1.1, .7)

    }
}

if my_hitboxID.attack == AT_NSPECIAL_2 {
    if hbox != 4 {
        var wibble = random_func( 5, 1, false) 
        //print(wibble)
        sound_play(asset_get("sfx_holy_lightning"), 0, noone, .5, wibble + .5)
    } else {
        sound_play(asset_get("sfx_holy_lightning"), 0, noone, 1.1, .7)
    }
    if hbox == 4 {
        spawn_gem(x+40*spr_dir, y-4, 2.5*spr_dir, -6);
        }
}
switch(atk) {
    case AT_NSPECIAL_2: {

    }
    break;
    case AT_NAIR: {
        if hbox == 3 {
            sound_play(asset_get("sfx_blow_weak2"))
        }
    }
    break;
    case AT_FAIR: {
       // sound_play(sound_get("atk1"), noone, 0, .2, .6)
        sound_play(sound_get("atk3_nat"), noone, 0, 1.2, .97)
        sound_play(asset_get("sfx_blow_heavy1"), noone, 0, .8, .97)

    }
    break;
    case AT_USPECIAL: {
        if hbox == 3 {
            sound_play(sound_get("atk3_nat"), noone, 0, 1.2, .97)
            sound_play(asset_get("sfx_blow_heavy1"), noone, 0, .8, .97)
        }
    }
    break;
    case AT_DAIR: {
       // sound_play(sound_get("atk1"), noone, 0, .2, .6)
        sound_play(sound_get("atk3_nat"), noone, 0, 1, .95)
        //sound_play(asset_get("sfx_blow_heavy1"), noone, 0, .8, .96)

    }
    break;
    case AT_DTILT: {
        sound_play(asset_get("sfx_pom_slap1"))
    }
    break;
    case AT_JAB: {
        if hbox = 1 {
            sound_play(asset_get("sfx_orca_crunch"),noone,0, 1.5, .8)
        }
        if hbox = 2 {
            sound_play(asset_get("sfx_blow_medium3"))
        }
    }
    break;
    case AT_UTILT: {
       // sound_play(sound_get("atk1"), noone, 0, .2, .6)
        sound_play(sound_get("atk3_nat"), noone, 0, 1.2, .97)
        sound_play(asset_get("sfx_blow_heavy1"), noone, 0, .8, .97)

    }
    break;
    case AT_NSPECIAL: {
        my_hitboxID.hitbox_timer = 18

    }
    case AT_NSPECIAL_2: {
        // adrenaline = 1;
        // adrenaline_timer = 160
    }
    break;
    case AT_UAIR: {
    sound_play(sound_get("atk3_nat"), noone, 0, 1, .95)
    }
    break;
    case AT_FSTRONG: {
        sound_play(sound_get("atk3_nat"), noone, 0, 1, .8)
    }
    break;
    case AT_DSTRONG: {
        sound_play(sound_get("atk3_nat"), noone, 0, 1, .94)
    }
    break;
    case AT_FSPECIAL: {
        sound_play(sound_get("atk3_nat"), noone, 0, 1, .94)

    }
    break;
    case AT_BAIR: {
        sound_play(sound_get("atk3_nat"), noone, 0, 1.1, .9)
    }
    break;
    case AT_USTRONG: {
        sound_play(sound_get("atk3_nat"), noone, 0, 1.2, .95)
    }

}
if atk == AT_DSPECIAL && hbox != 3|| atk == AT_DSPECIAL_AIR && hbox != 3 {
    my_hitboxID.hitted = 1;
}


if atk == AT_DAIR {
    var hit = spawn_hit_fx(my_hitboxID.x,my_hitboxID.y,vfx_b);
    hit.draw_angle = 270;
} 
if atk == AT_UAIR {
    //var hit = spawn_hit_fx(x,y,vfx_b);
    //hit.draw_angle = 270;
} 


if atk == AT_DSPECIAL && hbox == 3 || atk == AT_DSPECIAL_AIR && hbox == 3 {
   var hit = spawn_hit_fx( my_hitboxID.x + 20, my_hitboxID.y - 10, vfx_b) 
    hit.draw_angle = 30;
}
if atk == AT_USPECIAL && hbox == 2 {
   var hit = spawn_hit_fx( my_hitboxID.x + 20, my_hitboxID.y - 10, vfx_b) 
    hit.draw_angle = 90;
    hitstop = hit_player_obj.hitstop
    hitpause = true
}
#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}


#define spawn_gem(_x, _y, nhsp, nvsp)
    gold_obj = instance_create(_x, _y, "obj_article1");
    if (!gold_obj.free) {
        gold_obj.y -= 1;
        gold_obj.free = true;
    }
    gold_obj.hsp = nhsp;
    gold_obj.vsp = nvsp;
    other.destroyed = true;
    if get_player_color(player) != 16 {
    sound_play(asset_get("sfx_abyss_hex_hit"))
    sound_play(asset_get("sfx_oly_nspecial_flashbreak"))
    }
