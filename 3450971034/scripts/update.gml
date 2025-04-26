//update.gml

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

// Footstool
if (state == PS_CROUCH && state_timer >= footstool_start && down_down) {
    var _x = [x+footstool_x, x+footstool_x+footstool_w];
    var _y = [y+footstool_y, y+footstool_y+footstool_h];
    var do_footstool = false;
    
    with oPlayer if (!do_footstool && self != other && state_cat != SC_HITSTUN && state != PS_TUMBLE && free && vsp > 0) {
        if (collision_rectangle(_x[0], _y[0], _x[1], _y[1], hurtboxID, true, false)) do_footstool = true;
    }
    
    if (do_footstool) {
        set_state(PS_ATTACK_GROUND);
        set_attack(AT_EXTRA_1);
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
}

// Poison status effect
with oPlayer if (spider_plant_poison_owner == other) {
    spider_plant_poison_timer++;
    
    if (state == PS_DEAD || state == PS_RESPAWN) {
        spider_plant_poison_damage = 0;
        spider_plant_poison_timer = 0;
        spider_plant_poison_owner = noone;
    }
    if (spider_plant_poison_timer >= other.poison_tick_time) {
        take_damage(player, other.player, 1);
        spider_plant_poison_damage--;
        spider_plant_poison_timer = 0;
        if (spider_plant_poison_damage <= 0) {
            spider_plant_poison_owner = noone;
            sound_play(asset_get("sfx_ell_cooldown"), false, noone, 0.6, 0.6);
        }
    }
    else if (spider_plant_poison_timer % 5 == 3) {
        var _x = x + min(char_height, 30) * (spider_plant_poison_timer % 10 == 3 ? -1 : 1);
        _x += random_func_2(33, 16, true) - 8;
        var _y = y - random_func_2(34, max(12, char_height-6), true);
        with (other) var hfx = spawn_hit_fx(_x, _y, poison_status_vfx);
        hfx.hsp = hsp / 2;
        hfx.vsp = -2;
    }
    
    if (spider_plant_poison_owner == other) outline_color = other.poison_outline;
    else if (outline_color == other.poison_outline) {
        outline_color = [0, 0, 0];
        init_shader();
    }
}

// FSpecial outline pulse
if (fspecial_charge >= fspecial_large_charge
    && (attack != AT_FSPECIAL || !is_attacking || window >= 5)
    && (outline_color == prev_outline || outline_color == [0, 0, 0])
    && spider_plant_poison_owner == noone
) {
    outline_color = charge_outline;
var intensity = 0.90 + sin(get_gameplay_time()/60) * 0.2; // 0.6 to 1
    outline_color = [charge_outline[@0] * intensity, charge_outline[@1] * intensity, charge_outline[@2] * intensity];
    init_shader();
}
prev_outline = outline_color;
// Gets reset to black in got_parried.gml, death.gml, and set_attack.gml

// FSpecial visual flash
if (fspecial_flash > 0) fspecial_flash -= 0.08;

// USpecial/pratfall toggle
if (state == PS_PRATFALL && attack == AT_USPECIAL && !was_parried) {
    hud_offset = 30;
    if (up_pressed) {
        set_state(PS_ATTACK_AIR);
        set_attack(AT_USPECIAL);
        window = 5;
        fast_falling = false;
        create_hitbox(AT_USPECIAL, 3, x, y);
    }
}

// Interruptable SFX
if (interruptable_sfx != noone && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
    sound_stop(interruptable_sfx);
    interruptable_sfx = noone;
}

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//ABYSS RUNES
if (get_match_setting(SET_RUNES))
{
    //rune setup
}

//tie hit particles with hit effects
with (pHitBox) if (orig_player == other.player)
{
    //put your hit fx value instead of 0
    if (hit_effect == 0) fx_particles = 1;
}

//if (shield_pressed) end_match(player); //victory screen check

//parry interraction testing
/*
with (oPlayer) if (temp_level != 0 && state == PS_PARRY && !perfect_dodged)
{
    window = 1;
    window_timer = 0;
    perfect_dodging = true;
}
*/

//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
prep_hitboxes();


//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if (orig_player_id == other && "dont_color" not in self)
    {
        if ("col" not in self)
        {
            with (other)
            {
                var parent = get_hitbox_value(other.attack, other.hbox_num, HG_PARENT_HITBOX)
                var true_hbox_num = parent ? parent : other.hbox_num
                other.col = get_hitbox_value(other.attack, true_hbox_num, HG_HITBOX_COLOR);
                if (other.col == 0) other.col = c_red;
                other.shape = get_hitbox_value(other.attack, true_hbox_num, HG_SHAPE)
                other.draw_colored = true;
                if (other.type == 1) other.sprite_index = __hb_hd_spr[other.shape];
                else if (get_hitbox_value(other.attack, true_hbox_num, HG_PROJECTILE_MASK) == -1) other.mask_index = __hb_hd_spr[other.shape];
                else other.draw_colored = false;
                other.draw_spr = __hb_draw_spr;
            }
        }
    }
}
//useful print function - allows us to print all variables in an specified object
//usage: print_vars(object_name); | print_vars();
#define print_vars
{
    //prints the variables in the given instance, or in whatever instance ran the function.
    var instance = argument_count > 0 ? argument[0] : self;
    with (instance) {
        var names = variable_instance_get_names(self);
        var str = "";
        var lb = "
    ";
        for (var i = 0; i < array_length_1d(names); i++) {
            var val_to_add = string(variable_instance_get(self, names[i]));
        str += names[i] + ': ' + (string_length(val_to_add) > 100 ? "!!value ommitted due to size!!" : val_to_add) + ';'+lb
        
        }
        var str_length = string_length(str);
        var it = 1;
        var max_pages = ceil(str_length/4096);
        for (var i = 1; i < str_length; i+=4096) {
            get_string(`variables pg ${it++}/${max_pages}`, string_copy(str,i,4096));
        }
    }
}