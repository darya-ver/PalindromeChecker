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
  //your code here
  // for (int i = 0 ; i<sString.length(); i++)
  //   if(Character.isLetter(sString.charAt(i)))
  //     d++;

  String answer = new String();
  for(int i = 0; i<word.length(); i++)
    if(word.charAt(i)!=' ' || Character.isLetter(word.charAt(i)))
      answer += word.charAt(i);

  String answer2 = new String();
  for (int i = answer.length()-1; i>=0; i--)
  {
    answer2 += answer.charAt(i);
  }
  return answer2.equals(answer);
}

public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for (int i = str.length()-1; i>=0; i--)
    {
      sNew += str.charAt(i);
    }
    return sNew;
}


