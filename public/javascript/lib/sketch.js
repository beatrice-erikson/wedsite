height = 600;
width = 600;
gravity = 1;
pipes = [];
score = 0;

function setup(){
    var canvas = createCanvas(600, 600);
    canvas.parent("page")
    bird = new Bird();
    pipes.push(new Pipe(width/2), new Pipe());
}

function draw(){
    bird.update();
    background(0);
    bird.draw();
    for (i = pipes.length-1; i >= 0; i--) {
        pipes[i].update();
        pipes[i].draw();
    }
    if (bird.hits(pipes[0])) {
        score = 0;
    } else {
        score += 1;
    }
    fill(255);
    text(score.toString(), 10, 10, 100, 50);
}

function keyPressed() {
    if (keyCode === 32) {
        bird.up();
    }
}