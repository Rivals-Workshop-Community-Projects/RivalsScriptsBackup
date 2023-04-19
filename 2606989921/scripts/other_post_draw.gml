//other_post_draw.gml
if ("other_player_id" not in self) exit;

//===============================================================================
if (marked && marked_player == other_player_id.player) with (other_player_id)
{
    //Draw on behalf of Maypuls everywhere
    shader_start();
    var width = 40;
    draw_sprite(asset_get("fer_leaf_spr"), 0, other.x - width + 2 * (get_gameplay_time() % width), other.y - 20);
    shader_end();
}

//===============================================================================
if ("msg_unsafe_handler_id" in self && other_player_id == msg_unsafe_handler_id)
{
    //restore draw params
    msg_copy_params(msg_anim_backup, self, msg_anim_backup);
    msg_gpu_clear();
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_copy_params(source, target, limiter) // Version 0
    // Usage: for all variables in LIMITER: copy value from SOURCE to TARGET
    var keys = variable_instance_get_names(limiter)
    for (var k = 0; k < array_length(keys); k++)
    {
        variable_instance_set(target, keys[k],
                                variable_instance_get(source, keys[k]));
    }

#define msg_gpu_clear // Version 0
    while (msg_unsafe_gpu_stack_level > 0)
    {
        gpu_pop_state(); msg_unsafe_gpu_stack_level--;
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion