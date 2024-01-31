// unload.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/init_and_attack_scripts.html#unload-gml
// Runs at the end of each match.
// If you have ds_ data structures, destroy them here so they don't keep taking memory.

sound_stop(asset_get("sfx_orcane_water_loop"))
sound_stop(asset_get("sfx_bubblemouth"))
sound_stop(asset_get("sfx_plasma_field_loop"))