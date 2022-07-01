// Text Debug

//draw_debug_text(offX, offY + 5, string(debug));

if (word != "adj"){ var sprite = sprite_get("text" + word);}
else var sprite = sprite_get("text" + adj);

var active = false;
switch spawn_variables[1] {
    case 0: active = true; break;
    case 1: active = (rules[1].state != "none"); break;//Rival Is ___
    case 2: active = rules[2].state; break;//Skull Is Defeat
    case 3: active = rules[3].state; break;//Wall Is Stop
    case 4: active = rules[4].state; break;//Hedge is Stop
}

var off = (current_time * jiggle + x * 15.2 + -0.7 * y) mod 3;

var color = c_white;
if !active color = c_gray;

var offX = view_get_xview() - 2 * 32 * scale;
var offY = view_get_yview() - 1.68 * 32 * scale;
draw_sprite_ext(sprite, off, x + drawX + offX * parX, y + drawY + offY * parY, imageScale, imageScale, 0, color, 1);
