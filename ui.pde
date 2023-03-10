void ui() {
    fill(#704040);
    rect(displayWidth-120, 0, 120, displayHeight);
    fill(#FF8080);
    rect(0, displayHeight-130, displayWidth, 130);
    fill(#FFFFFF);
    textSize(64);
    text(score, displayWidth/2-50, displayHeight-80);
}