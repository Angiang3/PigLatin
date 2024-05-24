void setup() {
  String[] lines = loadStrings("words.txt");
  System.out.println("There are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}

void draw() {
  // Not used
}

int findFirstVowel(String sWord) {
  String vowels = "aeiouAEIOU";
  for (int i = 0; i < sWord.length(); i++) {
    if (vowels.indexOf(sWord.charAt(i)) != -1) {
      return i;
    }
  }
  return -1;
}

String pigLatin(String sWord) {
  int firstVowel = findFirstVowel(sWord);

  if (firstVowel == -1) {
    return sWord + "ay";
  }

  if (firstVowel == 0) {
    return sWord + "way";
  }

  if (sWord.substring(0, 2).equalsIgnoreCase("qu")) {
    return sWord.substring(2) + "quay";
  }

  return sWord.substring(firstVowel) + sWord.substring(0, firstVowel) + "ay";
}
