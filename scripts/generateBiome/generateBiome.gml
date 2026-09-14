
function generateBiome(node){

	var r = 0;
	var g = 0;
	var b = 0
	
	//global.waterLevel/20
	
	var elevation = (node.elevation - global.worldAge/20)*global.worldIntensity/10;
	
	if (elevation < global.waterLevel/20) { // Eau profonde
        r = 25;
        g = 30;
        b = 90;
    }
    else if (elevation < global.waterLevel/10) { // Eau
        r = 48;
        g = 64;
        b = 127;
    }
	else if (elevation < 0.1) { // Plaine/Plage
		r = 255;
        g = 255;
        b = 153;
	}
	else if (elevation < 0.2) { // Plaines/foret
		r = 153;
        g = 255;
        b = 51;
	}
	else if (elevation < 0.3) { // Plaines/collines
		r = 0;
        g = 204;
        b = 0;
	}
	else if (elevation < 0.4) { // Collines hautes
		r = 40;
        g = 204;
        b = 40;
	}
	else if (elevation < 0.5) { // Montagnes
		r = 180;
        g = 90;
        b = 0;
	}
	else if (elevation < 0.6) { // Haute montagne

		r = 100;
        g = 50;
        b = 0;
	}
	else { // Pics
		r = 50;
        g = 25;
        b = 0;
	}
	
    return make_color_rgb(r, g, b);

}