int w = 2000;
int h = 1000;

public void setup() {

	size(2000, 1000);
	rectMode(CENTER);
	stroke(0, 255, 0);

}

public void draw() {

	background(0);
	fractal(1, 1, 1, 1, 5, 1);

}

public void fractal(float xShift, float yShift, float siz, float increment, float sensitivity, float numCount) {

	float adjustedX = (numCount*w/2 + sensitivity*mouseX)/(sensitivity+numCount);
	float adjustedY = (numCount*h/2 + sensitivity*mouseY)/(sensitivity+numCount);

	if(siz >= 300 || increment >= 30) {

		fill(0);
		rect(adjustedX - xShift, adjustedY - yShift, siz, siz);
		rect(adjustedX + xShift, adjustedY - yShift, siz, siz);
		rect(adjustedX - xShift, adjustedY + yShift, siz, siz);
		rect(adjustedX + xShift, adjustedY + yShift, siz, siz);
		noFill();
		rect(adjustedX, adjustedY, siz*2 + xShift, siz*2 + yShift);

	}

	else {

		fill(0);
		rect(adjustedX - xShift, adjustedY - yShift, siz, siz);
		rect(adjustedX + xShift, adjustedY - yShift, siz, siz);
		rect(adjustedX - xShift, adjustedY + yShift, siz, siz);
		rect(adjustedX + xShift, adjustedY + yShift, siz, siz);
		noFill();
		rect(adjustedX, adjustedY, siz*2 + xShift, siz*2 + yShift);

		fractal(xShift + increment, yShift + increment, siz + increment, increment+1, sensitivity - .2, numCount+1);

	}
}