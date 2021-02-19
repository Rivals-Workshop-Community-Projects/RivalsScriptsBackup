var myhitfx = asset_get("hit_fx_obj");

if (instance_exists(myhitfx))
{
    if (myhitfx.hit_fx == dspecial_projeffect) {
        with (myhitfx) {
            mp_linear_step(other.x, other.y - 80, (80/18), false);
        }
    }
}

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

with (asset_get("obj_article_solid")) {
    var hit_collision = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, asset_get("pHitBox"), true, true);
    var valid = true;
    
    if (hit_collision != noone) {
        if (player_id == hit_collision.player_id && (hit_collision.attack == AT_DSPECIAL || hit_collision.attack == AT_FSPECIAL))
            valid = false;
        if (destroyed || moving)
            valid = false;
    }
    else {
        valid = false;
    }
    if (valid) {
        sound_play(sound_get("sfx_duff_icedestroy"));
            
        with (player_id) spawn_hit_fx( other.x + hit_collision.hit_effect_x, other.y + hit_collision.hit_effect_y, hit_collision.hit_effect);
        sound_play( hit_collision.sound_effect)
        destroyed = 1;
        player_hit = hit_collision.player_id.player;
    }
}

//Trummel & Alto codec
if trummelcodecneeded {
    trummelcodec = 17;
    trummelcodecmax = 12;
    trummelcodecsprite1 = sprite_get("idle");
    trummelcodecsprite2 = sprite_get("idle");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Jeez! Look";
    trummelcodecline[page,2] = "at the size";
    trummelcodecline[page,3] = "this guy!";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I know he's";
    trummelcodecline[page,2] = "big in Mega Man";
    trummelcodecline[page,3] = "X5, but this is";
    trummelcodecline[page,4] = "ridiculous!";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Focus, dude.";
    trummelcodecline[page,2] = "This guy isn't";
    trummelcodecline[page,3] = "even the biggest";
    trummelcodecline[page,4] = "in the roster.";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Ok, ok. His";
    trummelcodecline[page,2] = "powers seem";
    trummelcodecline[page,3] = "to be similar";
    trummelcodecline[page,4] = "to his fight in-";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "im gonna";
    trummelcodecline[page,2] = "say it";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "...X5. Expect";
    trummelcodecline[page,2] = "there to be a";
    trummelcodecline[page,3] = "lot of ice thrown";
    trummelcodecline[page,4] = "on the field.";
    page++; 

    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "His down special";
    trummelcodecline[page,2] = "can even pull";
    trummelcodecline[page,3] = "ice towards him.";
    trummelcodecline[page,4] = "If you-";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "im gonna";
    trummelcodecline[page,2] = "say his name";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "...";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "...attack his";
    trummelcodecline[page,2] = "ice while he's";
    trummelcodecline[page,3] = "close, it will";
    trummelcodecline[page,4] = "counter the attack.";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "i srsly will";
    trummelcodecline[page,2] = "say it";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Please don't...";
    trummelcodecline[page,2] = "He's probably";
    trummelcodecline[page,3] = "heard that joke";
    trummelcodecline[page,4] = "a million times.";
    page++; 
    
    //Page 12
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "ok";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
}

//Runes
//if runesUpdated {
    if runeA {
        set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 4);
    }
    else {
        reset_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH);
        reset_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH);
        reset_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH);
        reset_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH);
        reset_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH);
    }
    
    if (runeD) {
        set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 5);
    }
    else {
        reset_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT);
    }
    
    if (runeE)
        knockback_adj = 0.85;
    else
        knockback_adj = 0.9;
        
    if (runeF) {
        set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);
    }
    else {
        reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION);
        reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION);
        reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION);
    }
    
    if (runeG) {
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
    }
    else {
        reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
    }
//}