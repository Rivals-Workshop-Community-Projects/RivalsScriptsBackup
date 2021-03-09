//Status effect
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

with (asset_get("oPlayer")){
    if (state == PS_DEAD || state == PS_RESPAWN) {
        swirlburned_timer = 0;
        status_swirlburned = false;
        init_shader();
        outline_color = [0, 0, 0];
    }
    
    if (status_swirlburned) {
        swirlburned_timer --;
        if (swirlburned_timer % 6 == 0) {
            var rand_x = round(x + (random_func(2, sprite_get_xoffset(hurtbox_spr) - sprite_get_bbox_left(hurtbox_spr), sprite_get_xoffset(hurtbox_spr) + sprite_get_bbox_right(hurtbox_spr))));
            var rand_y = round(y - (random_func(3, sprite_get_yoffset(hurtbox_spr) - sprite_get_bbox_top(hurtbox_spr), sprite_get_yoffset(hurtbox_spr) + sprite_get_bbox_bottom(hurtbox_spr))));
            
            with (other) spawn_hit_fx(rand_x, rand_y, burn_fx);
        }
        
        if (swirlburned_timer % 8 == 0) {
            init_shader();
            outline_color = [210, 51, 20];
        }
        if (swirlburned_timer % 8 == 4) {
            init_shader();
            outline_color = [0, 0, 0];
        }
        
        if (swirlburned_timer % 75 == 0) {
            take_damage(player, other.player, 1);
        }
        if (swirlburned_timer <= 0)
        {
            sound_play(asset_get("sfx_burnend"));
            swirlburned_timer = 0;
            status_swirlburned = false;
            init_shader();
            outline_color = [0, 0, 0];
        }
    }
}
//Spawn cat

if (state == PS_SPAWN || state == PS_RESPAWN) {        
    if (instance_exists(mycat)) {
        if ((state_timer == 1 && state == PS_SPAWN) 
        || (state_timer == 72 && state == PS_RESPAWN)) {
            mycat.state = "spawn";
            mycat.state_timer = 0;
            mycat.x = x - mycat.pet_w * 2 * spr_dir;
            mycat.y = y - 24;
            mycat.spr_dir = spr_dir;
        }
    }
}


//Prevent the cat from respawning when the player is dead.
if (state == PS_DEAD) {
    if (instance_exists(mycat)) {
        mycat.death_timer = 0;
    }
}

if (dspecial_gague >= dspecial_gague_max) {
    dspecial_blink_timer ++
}
else
    dspecial_blink_timer = 0;
/*
if (instance_exists(mycat)) 
{
    with (mycat) {
        if (state != "hurt" && state != "wait" && state != "spawn" && state != "dead") {
            if (other.hitpause >= other.hitstop_full) {
                hitstop_max = other.hitstop_full;
                hitpause = hitstop_max;
                hitstop = hitstop_max;
            }
        }
    }
}
*/


//Trummel & Alto support
if (trummelcodecneeded) {
    trummelcodec = 17;
    trummelcodecmax = 7;
    trummelcodecsprite1 = sprite_get("idle");
    trummelcodecsprite2 = sprite_get("idle");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "she so cute";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Agreed, but";
    trummelcodecline[page,2] = "she's dangerous with";
    trummelcodecline[page,3] = "her cat around.";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Her cat can whip";
    trummelcodecline[page,2] = "up extra hits";
    trummelcodecline[page,3] = "and cause major";
    trummelcodecline[page,4] = "damage.";
    page++; 

    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "She can even";
    trummelcodecline[page,2] = "launch her cat";
    trummelcodecline[page,3] = "and hit us from";
    trummelcodecline[page,4] = "far away.";
    page++; 

    //Page 4
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "woag now";
    trummelcodecline[page,2] = "she scary";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Not to worry!";
    trummelcodecline[page,2] = "If we take out";
    trummelcodecline[page,3] = "that pesky cat";
    trummelcodecline[page,4] = "first...";
    page++; 

    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "...she'll be";
    trummelcodecline[page,2] = "easier to manage.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "She can also";
    trummelcodecline[page,2] = "absorb projectiles";
    trummelcodecline[page,3] = "and unleash a";
    trummelcodecline[page,4] = "powerful explosion...";
    page++; 

    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "...with her";
    trummelcodecline[page,2] = "cat if she";
    trummelcodecline[page,3] = "snatches three";
    trummelcodecline[page,4] = "of them.";
    page++;

    //Page 7
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "she goin down";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
}

//if (runesUpdated) {
    if (runeA) {
        initial_dash_speed = 13;
        dash_speed = 12.5;
    }
    else {
        initial_dash_speed = 8.5;
        dash_speed = 6.5;
    }

    if (runeB) {
        max_fall = 8.5;
        fast_fall = 12.5;
    }
    else {
        max_fall = 11;
        fast_fall = 15;
    }
    
    if (runeE) {
        ground_friction = .3;
        air_friction = .005;
    }
    else {
        ground_friction = .45;
        air_friction = .015;
    }

    
    if (runeH) {
        var damage_multiplier = 1.5;

        for (var i = i; i <= get_num_hitboxes( AT_NAIR ); i++) {
            set_hitbox_value( AT_NAIR, i, HG_DAMAGE, get_hitbox_value (AT_NAIR, i, HG_DAMAGE) * damage_multiplier);
        }
        
        for (var i = i; i <= get_num_hitboxes( AT_FAIR ); i++) {
            set_hitbox_value( AT_FAIR, i, HG_DAMAGE, get_hitbox_value (AT_FAIR, i, HG_DAMAGE) * damage_multiplier);
        }
        
        for (var i = i; i <= get_num_hitboxes( AT_BAIR ); i++) {
            set_hitbox_value( AT_BAIR, i, HG_DAMAGE, get_hitbox_value (AT_BAIR, i, HG_DAMAGE) * damage_multiplier);
        }
        
        for (var i = i; i <= get_num_hitboxes( AT_UAIR ); i++) {
            set_hitbox_value( AT_UAIR, i, HG_DAMAGE, get_hitbox_value (AT_UAIR, i, HG_DAMAGE) * damage_multiplier);
        }
        
        for (var i = i; i <= get_num_hitboxes( AT_DAIR ); i++) {
            set_hitbox_value( AT_DAIR, i, HG_DAMAGE, get_hitbox_value (AT_DAIR, i, HG_DAMAGE) * damage_multiplier);
        }
    }
    else {
        for (var i = i; i <= get_num_hitboxes( AT_NAIR ); i++) {
            reset_hitbox_value( AT_NAIR, i, HG_DAMAGE);
        }
        
        for (var i = i; i <= get_num_hitboxes( AT_FAIR ); i++) {
            reset_hitbox_value( AT_FAIR, i, HG_DAMAGE);
        }
        
        for (var i = i; i <= get_num_hitboxes( AT_BAIR ); i++) {
            reset_hitbox_value( AT_BAIR, i, HG_DAMAGE);
        }
        
        for (var i = i; i <= get_num_hitboxes( AT_UAIR ); i++) {
            reset_hitbox_value( AT_UAIR, i, HG_DAMAGE);
        }
        
        for (var i = i; i <= get_num_hitboxes( AT_DAIR ); i++) {
            reset_hitbox_value( AT_DAIR, i, HG_DAMAGE);
        }
    }

    if (runeJ) {
        var damage_multiplier = 2;

        for (var i = i; i <= get_num_hitboxes( AT_DSPECIAL ); i++) {
            set_hitbox_value( AT_DSPECIAL, i, HG_DAMAGE, get_hitbox_value (AT_NAIR, i, HG_DAMAGE) * damage_multiplier);
        }
    }
    else {
        for (var i = i; i <= get_num_hitboxes( AT_DSPECIAL ); i++) {
            reset_hitbox_value( AT_DSPECIAL, i, HG_DAMAGE);
        }
    }
//}