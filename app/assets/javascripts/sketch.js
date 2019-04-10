let strips = []
let r;


function windowResized() {
	resizeCanvas(windowWidth, windowHeight);
}


function setup() {
	canvas = createCanvas(windowWidth, windowHeight);
  canvas.position(0, 0);
	canvas.style('z-index', '-1');
	angleMode(DEGREES);
}

function draw() {
	background(255);
	stroke(238, 47, 3);
	noFill();
	strokeWeight(0.5);
for (let i = 0; i < floor(random(5, 50)); i++) {
	push();
	translate(i*5+100, i*60+100)
	strips[i] = new Strip();
	strips[i].show();
	pop();
}
noLoop();
}

class Strip {
	constructor() {
		this.h = 40;
		this.w = 3;
		this.c = 5;
		this.y = 0;
		this.xoff = 0;
	}

show() {
	for (let i = 0; i < floor(random(10, 5000)); i += 3) {
		push();
		this.y = noise(random(100, 300))*(random(-i, i));
		translate(i*this.c, this.y*i/10)
		rotate((floor(random(-i/15, i/30))));
		rect(0, 0, this.w, this.h);
		pop();
	}
}
}
