/// bullet();
/// @param bullet_type
#region standard
switch (argument0) {
	case "standard":
	if o_stats.weapon_power == 0 {
	    instance_create_layer(x, y, "Instances", obj_bullet);	
		
	}
	
	if o_stats.weapon_power == 1 {
		instance_create_layer (x, y-10, "Instances", obj_bullet);
		instance_create_layer (x, y+10, "Instances", obj_bullet);
		
	}
	
	if o_stats.weapon_power == 2 {
	    instance_create_layer (x, y-25, "Instances", obj_bullet);
		instance_create_layer (x, y, "Instances", obj_bullet);
		instance_create_layer (x, y+25, "Instances", obj_bullet);
		
	}
	
	if o_stats.weapon_power >= 3 {
	    instance_create_layer (x, y-25, "Instances", obj_bullet);
		instance_create_layer (x, y-10, "Instances", obj_bullet);
		instance_create_layer (x, y+10, "Instances", obj_bullet);
		instance_create_layer (x, y+25, "Instances", obj_bullet);
		
	
	}  
			
	break;


#endregion standard 

#region spread

  case "spread":
  var a, b, c;
  a=    instance_create_layer (x, y-25, "Instances", obj_bullet);
  b=	instance_create_layer (x, y, "Instances", obj_bullet);
  c=	instance_create_layer (x, y+25, "Instances", obj_bullet);
  a.direction = 15;
  b.direction = 0;
  c.direction = 345;
  
  break;
 
 #endregion spread

}




