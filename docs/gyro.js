let angleX = 0;
let angleY = 0;
let angleZ = 0;
let axisLength = 100;
let axisThickness = 4;
let gridSize = 100;
let gridSpacing = 200;
let gyroX = 0;
let gyroY = 0;
let gyroZ = 0;

function setup() {
    createCanvas(10, 10, WEBGL);
}

function draw() {
    background(200);

    gyroX += 0.01;
    gyroY += 0.01;
    gyroZ += 0.01;
    // gyroX += angleX * 0.0;
    // gyroY += angleY * 0.00001;
    // gyroZ += angleZ * 0.0;

    rotateScene(gyroX, gyroY, gyroZ);

    drawGrid(gridSize, gridSpacing);
    drawAxis(255, 0, 0, axisLength, 0, 0, 0, HALF_PI + PI); // X軸
    drawAxis(0, 255, 0, 0, axisLength, 0, 0, 0); // Y軸
    drawAxis(0, 0, 255, 0, 0, axisLength, HALF_PI, 0); // Z軸

    drawCenterPoint();
}

function rotateScene(rx, ry, rz) {
    rotateX(rx);
    rotateY(ry);
    rotateZ(rz);
}

function drawAxis(r, g, b, x, y, z, rotX = 0, rotZ = 0) {
    stroke(r, g, b);
    strokeWeight(axisThickness);
    line(0, 0, 0, x, y, z);
    drawArrowHead(x, y, z, color(r, g, b), rotX, rotZ);
}

function drawArrowHead(x, y, z, color, rotX, rotZ) {
    push();
    translate(x, y, z);
    fill(color);
    noStroke();
    rotateX(rotX);
    rotateZ(rotZ);
    cone(5, 20);
    pop();
}

function drawCenterPoint() {
    noStroke();
    fill(0);
    sphere(5);
}

function drawGrid(size, spacing) {
    stroke(150);
    strokeWeight(1);

    for (let i = -size; i <= size; i += spacing) {
        // XZ平面
        line(i, 0, -size, i, 0, size);
        line(-size, 0, i, size, 0, i);
        
        // XY平面
        line(i, -size, 0, i, size, 0);
        line(-size, i, 0, size, i, 0);
        
        // YZ平面
        line(0, i, -size, 0, i, size);
        line(0, -size, i, 0, size, i);
    }
}
