void ui() {
    fill(#704040);
    rect(displayWidth-120, 0, 120, displayHeight);
    for (int i = 25; i < 1000; i += 50) {
        fill(#920020);
        circle(displayWidth-100, i, shikaku_size/2);
    }
    fill(#FF8080);
    rect(0, displayHeight-130, displayWidth, 130);
    fill(#FFFFFF);
    textSize(64);
    text(score, displayWidth/2-50, displayHeight-80);
}