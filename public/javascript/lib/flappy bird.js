class Bird {
    constructor() {
        this.y = height/2;
        this.x = 60;
        this.vel = 0;
        this.lift = 12;
        this.nextPos = this.y;
        this.size = 25;
    }
    draw() {
        noStroke();
        fill(255,0,0);
        ellipse(this.x, this.y, this.size);
        fill(255,255,0);
        triangle(this.x+this.size/2, this.y+(this.size/4), this.x+this.size/2, this.y-(this.size/4), this.x+(this.size/1.2), this.y);
        fill(0);
        ellipse(this.x+this.size/6, this.y-this.size/6, this.size/8);
        stroke(0);
        line(this.x+this.size/2, this.y, this.x+this.size/1.2, this.y);
    }

    update() {
        this.vel += gravity;
        this.vel = constrain(this.vel, -10,10);
        this.y = constrain(this.y + this.vel, 0, height);
    }

    up() {
        this.vel += -this.lift;
        this.vel = constrain(this.vel, -10,10);
        this.y = constrain(this.y + this.vel, 0, height);
    }

    hits(pipe) {
        if (this.x+this.size/2 > pipe.x && this.x-this.size/2 < pipe.x+pipe.width) {
            if (this.y+this.size/2 > pipe.bottom || this.y-this.size/2 < pipe.top) {
                return true;
            }
        }
        return false;
    }
}

class Pipe {
    constructor(x = width) {
        this.width = 60;
        this.x = x;
        var gap = Math.random()*height/2+height/10
        this.top = Math.random()*(height-gap);
        this.bottom = this.top + gap;
    }
    draw() {
        noStroke(); 
        fill(0,100,0);
        rect(this.x, 0, this.width, this.top);
        rect(this.x, this.bottom, this.width, height);
    }
    update() {
        this.x = lerp(this.x, this.x - 10, 1);
        if (this.x <= 0-this.width) {
            pipes.shift();
            pipes.push(new Pipe);
        }
    }
}