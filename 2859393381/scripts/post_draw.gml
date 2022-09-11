if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_DSPECIAL && window > 1) 
{
        char_height = 80;
        draw_sprite_ext(sprite_get("evidence_box"), evidence_box_index, x+(44*spr_dir), y-90, 1, 1, 0, c_white, 1);
        if (evidence_box_index = 2) draw_sprite_ext(sprite_get("evidence_icons"), evidence_box_icon - 1, x+(44*spr_dir), y-90, 1, 1, 0, c_white, 1);
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_NSPECIAL && window > 1) 
{
        draw_sprite_ext(sprite_get("nspecial_holdit"), nspecial_bubble_index, x+(90*spr_dir), y-38, 1, 1, 0, c_white, 1);
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_NSPECIAL_AIR && window > 1) 
{
        draw_sprite_ext(sprite_get("nspecial_holdit"), nspecial_bubble_index, x+(90*spr_dir), y-6, 1, 1, 0, c_white, 1);
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_NSPECIAL_2 && window > 1) 
{
        draw_sprite_ext(sprite_get("nspecial_objection"), nspecial_bubble_index, x+(90*spr_dir), y-38, 1, 1, 0, c_white, 1);
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_NSPECIAL_2_AIR && window > 1) 
{
        draw_sprite_ext(sprite_get("nspecial_objection"), nspecial_bubble_index, x+(90*spr_dir), y-6, 1, 1, 0, c_white, 1);
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_EXTRA_1 && window = 1 && window_timer < 5) 
{
        draw_sprite_ext(sprite_get("nspecial_objection"), 5, x+(90*spr_dir), y-38+(free*32), 1, 1, 0, c_white, 1);
}