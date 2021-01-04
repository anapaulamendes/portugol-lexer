import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.Token;
import java.io.IOException;

public class Lexer {

  public static void main(String[] args) throws IOException {

    ANTLRInputStream input = new ANTLRInputStream(System.in);
    PortugolLexer lexer = new PortugolLexer(input);
    Token t;

    while(true) {
      t = lexer.nextToken();
      System.out.println("<" + t.getType() + ", " + t.getText() + ">");
      if( t.getType() == Token.EOF || t.getType() < 0 ) break;
    }

  }

}
