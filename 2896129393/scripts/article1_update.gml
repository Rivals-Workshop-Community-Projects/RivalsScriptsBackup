//article to make so that blood puddles follow moving platforms
if !is_draw_article {
    floord.x = x;
    floord.y = y;
    timer += 1;
    if free && timer >= 2 {
        //floord.dead = true;
        print_debug(floord)
        instance_destroy();
        exit;
    }
}