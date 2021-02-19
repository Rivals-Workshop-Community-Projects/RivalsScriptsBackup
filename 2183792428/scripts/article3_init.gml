number = obj_stage_main.number

if number = 0 {
number = -1
}

sprite_index = sprite_get("platform")

depth = 8

xPos = 0

platState = 0
platStateTimer = 0

platStart = 180

platMaxDist = 256
platMaxWait = 180
