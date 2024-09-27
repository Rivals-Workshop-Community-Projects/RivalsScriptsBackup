// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

if (instance_exists(plunger_guard))
{
	draw_sprite(sprite_get("pg_icon2"), floor(1), temp_x + 218, temp_y - 0);
}

if (!instance_exists(plunger_guard))
{
    if (move_cooldown[AT_DSPECIAL] > 0)
    {
        draw_sprite(sprite_get("pg_icon2"), floor(1), temp_x + 218, temp_y - 0);
    }

    else
    {
        draw_sprite(sprite_get("pg_icon1"), floor(1), temp_x + 218, temp_y - 0);
    }
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);