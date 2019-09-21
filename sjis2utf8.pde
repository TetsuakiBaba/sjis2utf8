PFont font;
Encoder encoder;
void setup()
{
  size(500,500);
    // 日本語フォントを作成し指定する
  font = createFont("ipag.ttf", 72, true);
  textFont(font);
  textSize(72);
   textAlign(CENTER, CENTER);
   
   encoder = new Encoder();
   encoder.setup();
   
}

void draw()
{
  background(255);
  fill(0);
  // SJIS CODE(語) = 0x8CEA is converted 3 bytes UTF(0xE8AA9E) string type
  // 日本 is typed in UTF-8 character.
  String str = "日本" + encoder.getUtfString(byte(0x8C), byte(0xEA));
  text(str, width/2, height/2);
   
}
