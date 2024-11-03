 /// colisão com inimigo
 if can_hurt == true {
	 hp_ -= 1
	 can_hurt = false;
	 image_alpha = .5;
	 alarm [1] = 60;
 }

instance_destroy (other);

 