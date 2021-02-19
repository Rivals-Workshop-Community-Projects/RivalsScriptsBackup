
//triangle/percentage
draw_sprite_ext(sprite_get("indicator"), 0, x, y - 48, 1, 1, 0, get_player_hud_color(player), 1);
draw_set_font(asset_get("roundFont"));
draw_set_halign(fa_center);
draw_text_colour_outline(x, y - 84, string(damage) + "%", c_white,c_white,1,c_black,c_black,1,2,4,1,1,0);

if (drawMasks) {
    var colour = c_white;
    if (state == PS_HITSTUN) || (state == PS_HITSTUN_LAND) {
        colour = c_red;
    }
    
    if (mask_index != undefined) {
        draw_sprite_ext(mask_index, image_index, x, y, spr_dir, 1, image_angle, colour, 0.5);
    }
}

if (drawTurret) {
    var angle = turretAngle;
    var xMod = 0;
    var yMod = 0;
    var drawDir = spr_dir;
    var turretIndex = 0;
    if (origID == player_id) {
        var turretSprite = sprite_get("nspecial_B_turret");
    } else {
        with origID {
            if (other.image_index == 0) || (other.image_index == 8) {
                var turretSprite = sprite_get("kirby_turret_light");
            } else {
                var turretSprite = sprite_get("kirby_turret");
            }
        }
    }
    if (attack == AT_NSPECIAL) || (attack == AT_EXTRA_3) {
        var frameIndex = 0;
        if (window == 1) {
            if (turretTurning >= 0) {
                frameIndex = clamp(floor(turretTurning/2), 1, 4);
                drawDir = -spr_dir;
            }
        }
        if (window == 3) && (window_timer > 0) && (window_timer < 4) {
            xMod = -6*dcos(angle);
            yMod = 6*dsin(angle);
        }
        draw_sprite_ext(turretSprite, frameIndex, x - drawDir*(6 - xMod), y - 23 + drawDir*yMod, drawDir, 1, angle, c_white, 1);
    } else if (attack == AT_DSPECIAL_2) {
        yMod = -27;
        xMod = -5;
        if (window == 1 && window_timer > 2 && window_timer < 6) {
            xMod -= 5;
        }
        draw_sprite_ext(turretSprite, turretIndex, x + spr_dir*xMod + dsin(angle)*5, y + yMod, spr_dir, 1, angle, c_white, 1);
    }
}

if (drawLightning) {
    if (window_timer < 10) {
        draw_sprite_ext(sprite_get("lightning"), floor(window_timer/2), x - (x-player_id.x)/1.5, y - 30 - (y-player_id.y)/1.5, 1, 1, turretAngle, c_white, 1);
    }
}

if strongCharging {
    if (strong_charge mod 10 < 5) {
        draw_sprite_ext(strong_mask, image_index, x, y, spr_dir, 1, 0, c_white, 0.6);
    }
}

if (state == PS_PRATFALL) {
    draw_sprite_ext(sprite_get("pratfall_B_shade"), 0, x, y, spr_dir, 1, image_angle, c_white, 0.5);
}

if (state == PS_PRATLAND) {
    draw_sprite_ext(sprite_get("pratland_B_shade"), 0, x, y, spr_dir, 1, image_angle, c_white, 0.5);
}

if (shieldActive) {
    var shieldIndex = clamp(floor(shieldTimer/3), 0, 5);
    var shieldAlpha = dsin(360*shieldTimer/200)/8 + 0.5;
    //print_debug(string(shieldAlpha));
    draw_sprite_ext(sprite_get("shield_B"), shieldIndex, x, y, 1, 1, 0, c_white, shieldAlpha);
} else {
    var shieldIndex = 5 - clamp(floor(shieldEndTimer/2), 0, 6);
    var shieldAlpha = 0.5 - (shieldEndTimer/50);
    if (shieldIndex >= 0) {
        draw_sprite_ext(sprite_get("shield_B"), shieldIndex, x, y, 1, 1, 0, c_white, shieldAlpha);
    }
}

var offX = undefined;
var offY = undefined;
var offIndex = 0;
var offRot = 0;
if (x < view_get_xview() - 30) {
    offX = view_get_xview() + 35;
    if (y > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = -90;
    } else if (y < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 180;
    } else {
        offY = y;
        offIndex = 0;
        offRot = -90;
    }
} else if (x > view_get_xview() + view_get_wview() + 30) {
    offX = view_get_xview() + view_get_wview() - 35;
    if (y > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = 0;
    } else if (y < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 90;
    } else {
        offY = y;
        offIndex = 0;
        offRot = 90;
    }
} else if (y > view_get_yview() + view_get_hview() - 60) {
    offX = x;
    offY = view_get_yview() + view_get_hview() - 85;
    offIndex = 0;
    offRot = 0;
} else if (y < view_get_yview() + 35) {
    offX = x;
    offY = view_get_yview() + 35;
    offIndex = 0;
    offRot = 180;
}

if (offX != undefined) {
    draw_sprite_ext(sprite_get("offscreen_indicator"), offIndex, offX, offY, 1, 1, offRot, get_player_hud_color(player), 1);
    draw_sprite_ext(sprite_get("zo_offscreen"), 0, offX, offY, spr_dir, 1, 0, c_white, 1);
}
#define draw_text_colour_outline
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);
//By Blokatt - @blokatt, blokatt.net
var i;
for (i = 0; i < 360; i += 360 / argument10){
    draw_text_transformed_color(argument0 + lengthdir_x(argument9, i), argument1 + lengthdir_y(argument9, i), string(argument2), argument11, argument12, argument13, argument6, argument6, argument7, argument7, argument8);
}
draw_text_transformed_color(argument0, argument1, string(argument2), argument11, argument12, argument13, argument3, argument3, argument4, argument4, argument5);