public void setup()
{
        String[] lines = loadStrings("words.txt");
        System.out.println("there are " + lines.length + " lines");
        for (int i = 0 ; i < lines.length; i++)
        {
          System.out.println(pigLatin(lines[i]));
        }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
        return -1;
}
public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
        if(findFirstVowel(sWord) == -1) {
                    return sWord + "ay";
            }
            if(findFirstVowel(sWord) == 0) {
                    return sWord + "way";
            }
      if(sWord.substring(0,2).equals("qu")){
        return sWord.substring(2) + "quay";
      }
      return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
      }
}
/*class lowellhymnpig {
 
    public static String pigLatinHymn(String hymn)
    {
        String pig = "";
        for (int i = 0; i < hymn.length(); i++) {
            int j = i;
            if (i >= hymn.length())
                break;
            while (i < hymn.length() && hymn.charAt(i) != ' ')
                i++;
            if (pig.isEmpty()) {
                pig = pig.concat(
                    hymn.substring(j + 1, i)
                    + hymn.charAt(j) + "ay");
            }
            else {
                pig = pig.concat(
                    " " + hymn.substring(j + 1, i)
                    + hymn.charAt(j) + "ay");
            }
        }
        return pig;
    }
 
    public static void main(String[] args)
    {
      String line1 = "With heads bared we stand,";
      String line2 = "In tribute to thee,";
      String line3 = "Our Alma-Mater Lowell,";
      String line4 = "All true to thee we'll be.";
      String line5 = "Unfurled red and white,";
      String line6 = "None shall thee decry";
      String line7 = "Thy name we love,";
      String line8 = "Oh Lowell High,";
      String line9 = "Oh Lowell High.";
     
      hymn = line1;
        System.out.println(pigLatinHymn(hymn));
    }
}*/
