// --- Article Unique Constants
CARD_TYPE = 0; // 0 - Sun, 1 - Star, 2 - Moon, 3 - Teleport
CARD_STARTX = -1000;
CARD_STARTY = -1000;
CARD_SPEED = player_id.CARD_SPEED;  // Astral Card Air Speed
CARD_FRICTION = 0.9;                // Astral Card Air Friction
CARD_LIFETIME = 18;                 // Astral Card Lifetime
CARD_SPRITE_SMALL = sprite_get("card_small");
CARD_SPRITE_SET = sprite_get("card_set");

// --- Article Unique Vars
// Card State
// 0 - OnHand, 1 - OnAir, 2 - Set, 3 - Active, 4 - Inactive, 5 - Return
card_state = 0;
card_timer = 0;
card_count = 0; // Star Count

card_trapid = noone;
card_trapx = 0;
card_trapy = 0;

// --- Article Specific Vars
sprite_index = CARD_SPRITE_SMALL;
ignores_walls = false;
uses_shader = true;
spr_dir = 1;
image_speed = 0;
x = CARD_STARTX;
y = CARD_STARTY;
old_y = y;
hsp = 0;
vsp = 0;
