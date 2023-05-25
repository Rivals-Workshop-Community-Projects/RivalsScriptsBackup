if !instance_exists(self) exit;
if ("other_player_id" not in self or ("curse_sprite_a" not in other_player_id)) exit;

if (visual_timer[0] != -1)
{
    with other_player_id
    {
        shader_start();
        draw_sprite_ext(curse_sprite_a, other.visual_timer[0], other.x, other.y - other.char_height + 10, 1, 1, 0, c_white, 1);
        shader_end();
    }
}