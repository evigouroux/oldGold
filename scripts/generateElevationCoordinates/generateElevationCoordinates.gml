function generateElevationCoordinates(xX, yY){
	var elevation = perlinNoise(0.25*xX, 0.25*yY);
	return elevation;
}