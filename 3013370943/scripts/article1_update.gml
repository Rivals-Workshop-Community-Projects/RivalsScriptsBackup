//article1_update.gml
timer++

hsp = 0.5

image_index = timer/30

if timer > 3000 {
	//print('die')
	instance_destroy()
}