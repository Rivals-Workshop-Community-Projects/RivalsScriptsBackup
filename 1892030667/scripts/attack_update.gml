//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}




if (has_gun == 0 && attack == AT_FSPECIAL && window == 2 && window_timer == 1) {
    gun.stay_timer = 0;
    //gun.can_be_grounded = false;
    gun.free = true;
    gun.hsp = gun_throw_hsp*spr_dir - (1/3)*gun_throw_hsp*spr_dir*(up_down);
    gun.vsp = (2/3)*gun_throw_vsp + (1/6)*gun_throw_vsp*(up_down);

}

//Uspecial Code
if (attack == AT_USPECIAL && window == 1) {
    vsp *= .9;
    hsp *= .9;
}

if (attack == AT_USPECIAL && window == 4 && has_gun == 1 && can_uspec == 1) {
    can_uspec = 0;
    window = 5;
}

if (has_gun == 0 && attack == AT_USPECIAL && window == 2 && window_timer == 1 && can_uspec == 1 && !special_down) {
    can_uspec = 0;
    window = 4;
}

if (has_gun == 0 && attack == AT_USPECIAL && window == 4) {
    with (asset_get("obj_article1")) {
        if (player_id == other.id) {
            other.gun_tether_ang = point_direction(other.x,other.y,x,y);
        }
    }
    fall_through = true;
    hsp = gun_tether_sp*(dcos(gun_tether_ang));
    vsp = gun_tether_sp*-dsin(gun_tether_ang);
    //image_angle = gun_tether_ang;
    can_fast_fall = false;
}

if (has_gun == 1 && attack == AT_FSPECIAL && window == 2 && window_timer == 1) {
    has_gun = 0;
    gun = instance_create(x,y-40,"obj_article1");
    gun.id = player.id;
    gun.player = player;
    gun.sprdir = spr_dir;
    gun.hsp = gun_throw_hsp*spr_dir + gun_throw_hsp*spr_dir*((right_down || left_down) && !up_down)+gun_throw_hsp*spr_dir*((right_down || left_down) && down_down);
    gun.vsp = (2/3)*gun_throw_vsp+(1/3)*gun_throw_vsp*(up_down)-(1/3)*gun_throw_vsp*((right_down || left_down) && !up_down)-(1/6)*gun_throw_vsp*((right_down || left_down) && down_down);
    gun.gun_load = gun_load;
    gun_load = 0;
}


//if (attack == AT_NSPECIAL && has_gun == 0) {
   // window = 4;
    
//}


//Float
if (attack == AT_NSPECIAL && window == 3) {
    hsp = clamp(hsp,-1,1);
    vsp = 0;
    can_fast_fall = false;
}
//Loading Rifle
if (attack == AT_NSPECIAL && gun_load < gun_load_max) {
    if window == 1 && window_timer == 6 {
        gun_load++;
        sound_play(musky_reload);
    }
    
}

//Shooting Rifle With Gun Out
if attack == AT_NSPECIAL && instance_exists(gun) && gun_load > 0 && (gun.gun_load == 0 || gun.has_shot == 1) {
    if window == 1 && window_timer == 3 && window_timer < 6 {
        old_gun_load = gun_load;
        gun_load = 0;
        hitb = instance_create(x+spr_dir*40,y-42,"obj_article2");
        hitb.player_id = id;
        hitb.spr_dir = spr_dir;
        window_timer = 1;
        window = 3;
        sound_play(shot_sound);
        spawn_hit_fx(x,y,shoot_ring_vfx);
    }
}

//Shooting Rifle
if (gun_load > 0 && attack == AT_NSPECIAL && move_cooldown[AT_NSPECIAL] == 0 && (!instance_exists(gun) || gun.shoot == 1)) { //&& special_down == 0) {
    if window == 1 && window_timer == 3 && window_timer < 6 {
        old_gun_load = gun_load;
        gun_load = 0;
        hitb = instance_create(x+spr_dir*40,y-42,"obj_article2");
        hitb.player_id = id;
        hitb.spr_dir = spr_dir;
        window_timer = 1;
        window = 3;
        sound_play(shot_sound);
        spawn_hit_fx(x,y,shoot_ring_vfx);
    }
    
}

// if (has_gun == 0 && attack == AT_NSPECIAL && window == 1) {
//     sound_play(dry_sound);
//     window = 4;
//     if gun_load == 0
//         move_cooldown[AT_NSPECIAL] = 20;
// }

//Shooting Rifle Out
// if ((attack == AT_NSPECIAL) && has_gun == 0 && gun_load > 0) {
if ((attack == AT_NSPECIAL) && instance_exists(gun) && gun.gun_load > 0 && gun.has_shot == 0) {
    hitb = instance_create(gun.x,gun.y,"obj_article2");
    hitb.gunmade = 1;
    hitb.player_id = id;
    hitb.spr_dir = gun.sprdir;
    hitb.visible = false;
    //hitb.sprdir = gun.sprdir;
    // gun_load = 0;
    sound_play(shot_sound);
    gun.shoot = 1;
    move_cooldown[AT_NSPECIAL] = 10;
    set_state(PS_IDLE);
}



//Down-B Counter
if attack == AT_DSPECIAL && window == 1 {
    effected = 0;
}
if (attack == AT_DSPECIAL && window == 2 ) { //&& window == 2) {
    hit_check = noone;
    if hit_check == noone {
        hit_check = instance_place(x+55*spr_dir,y,oPlayer);
    }
    if hit_check == noone {
        hit_check = instance_place(x+55*spr_dir,y,obj_article1);
    }
    if hit_check == noone {
        hit_check = instance_place(x+55*spr_dir,y,obj_article2);
    }
    if hit_check == noone {
        hit_check = instance_place(x+55*spr_dir,y,obj_article3);
    }
    if hit_check == noone {
        hit_check = instance_place(x+55*spr_dir,y,obj_article_solid);
    }
    if hit_check == noone {
        hit_check = instance_place(x+55*spr_dir,y,obj_article_platform);
    }
    if hit_check == noone {
        hit_check = instance_place(x+55*spr_dir,y,pHitBox);
    }
    
    if hit_check != noone {
        hit_dist = distance_to_object(hit_check);
    }
    
    if (hit_check != noone && (!("was_parried" in hit_check) || !hit_check.was_parried) && (hit_check != pHitBox || (hit_check == pHitBox && hit_check.type == 2)) && effected != hit_check) {
        //set_state(PS_PARRY);
        effected = hit_check;
        invince_timer = 30;
        invincible = 1;
        if hit_check.object_index != oPlayer {
            //hit_check.player = player;
            //hit_check.player_id = id;
            hit_check.was_parried = true;
            hit_check.can_hit_self = true;
            hit_check.x = x + 40*spr_dir;
            hit_check.y = y -32;
            hit_check.image_angle = 0+(180*(spr_dir+1));
            hit_check.hsp = hit_check.hsp* 1.5;
            
        }
        hit_check.hsp = hit_check.hsp* -1;
        if variable_instance_exists(hit_check, "damage") {
           hit_check.damage *= 1.25;
        }
        if variable_instance_exists(hit_check, "kb_value") {
            hit_check.kb_value *= 1.25;
        }
        if variable_instance_exists(hit_check, "sprdir") {
            hit_check.image_xscale = 0.01;
            hit_check.sprdir *= -1;
        } else {
            hit_check.spr_dir *= -1;
        }
        sound_play(sound_get("musky_ping"));
        spawn_hit_fx(hit_check.x,hit_check.y-32,306);
    }
    if hit_check == noone {
        effected = 0;
    }
    
}

//Cancel Dair
if (attack == AT_DAIR) {
    can_walljump = true;
    if ((window >= 3 && window_timer >= 15) || has_hit ) al_jump = 1;
    if has_hit && window < 4 {
        //attack_end(AT_DAIR);
        old_vsp = -4;
        old_hsp += -1*spr_dir;
        window_timer = 0;
        window = 5;
        
    }
}
if (al_jump == 1 && !was_parried) {
    djumps = 0;
    can_jump = true;
    if (jump_down || shield_down || special_down) {
        set_state(PS_IDLE_AIR);
        al_jump = 0;
    }
} 

//Super-Armor
if attack == AT_UAIR {
    if window == 2 super_armor = 1;
    else super_armor = 0;
}
if ((attack == AT_USTRONG && window == 1 && window_timer == 8)) {
    super_armor = 1;
    old_dmg = get_player_damage(player);
    reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
}
if (attack == AT_USTRONG && old_dmg != get_player_damage(player) && window == 1 && window_timer > 8) {
    sound_play(musky_ping);
    old_dmg = get_player_damage(player);
    set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 13);
    set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
    set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.3);
    /*window = 2;
    window_timer = 0;*/
    strong_charge = 60;
}

if ((attack == AT_USTRONG) && window == 3) super_armor = 0;

if attack == AT_DSTRONG && window == 2 sound_stop(asset_get("sfx_absa_jabloop"));

//if (attack == AT_DSTRONG && window == 3 && window_timer == 15) spr_dir *= -1;