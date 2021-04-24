// the self check needs to be done because i guess this script gets called when you hit a stage hazard? weird
if (hit_player_obj != self) {
    // fractional damage
    var hitbox_damage = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE);
    var after_decimal = hitbox_damage % 1;
    if (after_decimal > 0) {
        hit_player_obj.fractional_damage += after_decimal;
    }

    while (hit_player_obj.fractional_damage >= 1.0) {
        take_damage(hit_player_obj.player, player, 1);
        hit_player_obj.fractional_damage -= 1.0;
    }

    // knife hitsound cooldown
    if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_NAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_UTILT || (my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)) || my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_DTILT) {
        if (cur_knife_hitsound_cooldown <= 0) {
            sound_play(sound_get("s03_hit"));
            cur_knife_hitsound_cooldown = knife_hitsound_cooldown;
        }

        if (my_hitboxID.kb_value >= 5) {
            sound_stop(sound_get("s03_hit"));
            sound_stop(sound_get("s03_hit_loop"));
            sound_play(sound_get("s03_hit_loop"));
        }
    }

    // timestop velocity magic
    if (hit_player_obj.timestopped) {
        my_hitboxID.can_tech = 1; // prevent teching attacks done during timestop

        if (my_hitboxID.attack != AT_DSPECIAL) {
            var new_kb = timestop_kb_dampening * hit_player_obj.orig_knock;
            hit_player_obj.orig_knock = hit_player_obj.stored_knockback + new_kb;

            // stored knockback's maximum increases based on how much damage the opponent has
            hit_player_obj.stored_knockback = min(hit_player_obj.orig_knock, get_player_damage(hit_player_obj.player) * stored_knockback_limit_growth);
            hit_player_obj.stored_angle = darctan2(-hit_player_obj.vsp, hit_player_obj.hsp);
        } else {
            timestop_active = false;
            
            hit_player_obj.orig_knock = hit_player_obj.stored_knockback;
            hit_player_obj.timestopped = false;
            hit_player_obj.hsp = hit_player_obj.stored_knockback * dcos(hit_player_obj.stored_angle);
            hit_player_obj.vsp = -hit_player_obj.stored_knockback * dsin(hit_player_obj.stored_angle);
            hit_player_obj.stored_knockback = 0;
            hit_player_obj.stored_angle = 0;
        }
    }

    // chainsaw suction
    if (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 1) {
        my_hitboxID.parent_chainsaw.x = floor((hit_player_obj.x + my_hitboxID.parent_chainsaw.x) * 0.5);
        my_hitboxID.parent_chainsaw.y = floor((hit_player_obj.y - hit_player_obj.char_height*0.5 + my_hitboxID.parent_chainsaw.y) * 0.5);
        my_hitboxID.parent_chainsaw.vsp = 0;
        my_hitboxID.parent_chainsaw.hsp = 0;
        my_hitboxID.parent_chainsaw.rot_speed = 0;
        my_hitboxID.parent_chainsaw.has_hit = true;
        my_hitboxID.parent_chainsaw.last_hit_time = my_hitboxID.parent_chainsaw.timer;
    }

    if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
        timestop_active = true;
        hit_player_obj.timestopped = true;
        hit_player_obj.timestop_spr_index = hit_player_obj.sprite_index;
        hit_player_obj.timestop_img_index = hit_player_obj.image_index;
        hit_player_obj.timestop_spr_dir = hit_player_obj.spr_dir;
        hit_player_obj.timestop_x = hit_player_obj.x;
        hit_player_obj.timestop_y = hit_player_obj.y-1;
        hit_player_obj.stored_knockback = 0;
        hit_player_obj.state = PS_HITSTUN;
        hit_player_obj.hitstop = 1;
    }
}