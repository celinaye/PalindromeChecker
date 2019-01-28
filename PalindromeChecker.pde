public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String pal = new String();
  pal = nospace(word);
  pal = nocase(pal);


  if(reverse(pal).equals(pal))
  {
    return true;
  }
  return false;
}

public String reverse(String str)
{
  String rev = new String();
  for(int i = str.length()-1; i>=0; i--)
  {
    rev = rev + str.charAt(i);
  }
  return rev;
}

public String nospace(String word1)
{
  String blank1 = new String();
  for(int i = 0; i<word1.length(); i++)
  {
    if(Character.isLetter(word1.charAt(i)))
    {
      blank1 = blank1 + word1.charAt(i);
    }
  }
  return blank1;
}
public String nocase(String word2)
{
  String blank2 = new String();
  blank2 = word2.toLowerCase();
  return blank2;
}

