star__draw_hud()

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define star__draw_hud // Version 0
    if ("star_cooldown" in self and star_cooldown > 1){
        shader_start();
        draw_sprite( sprite_get("cooldown"), 0, temp_x + 184, temp_y - 24);
        shader_end();
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion