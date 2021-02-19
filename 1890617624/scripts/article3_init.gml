// Basically everything else

// Willowisp, Soul Siphon, French Fries, Giant Hamburger destroy particles, Mc. Burst particles, Ronald Girl


sprite_index = asset_get("empty_sprite")
mask_index = sprite_get("willowisp_mask")
uses_shader = false;

exceptions = ["burst_particles"];
var shortest_id = 0;
init = false;
type = "";
timer = 0;
v_alpha = 0;
has_hit = false;
golden = false;

state = "active"
damage = 10;
angle = 0;
projectile = false;

sprite = 0;

platform = false;