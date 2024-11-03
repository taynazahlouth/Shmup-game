/// personagem não sair da tela
x = clamp(x, 8 , room_width-8)
y = clamp(y, 8, 1080-8)

//controls
var up, down, left, right, shoot, leave

up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
shoot = keyboard_check (ord("W"));
leave = keyboard_check(vk_escape)

if leave {
	game_end()
}

//Movement

if up {
	y -= 10;
}

if down {
	y += 10;
}

if left {        
	x -= 10;
}

if right {
	x += 10;
	
}


if can_shoot == true {
    if shoot {
	//instance_create_layer(x+8, y, "Instances", obj_bullet);
	bullet (bullet_type);
	effect_create_below(ef_ring, x, y, 1, c_white);
	can_shoot = false;
	alarm [0] = 10;
	
}
}

if hp_ <= 0 {
instance_destroy();
}
