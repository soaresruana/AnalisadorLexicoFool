import java.io.FileReader;

public class Lexersimpletest {
    public static void main(String[] args) throws Exception {
        FOOLLexersimple lexer = new FOOLLexersimple(new FileReader("simpletest.txt"));
        Yytoken token;
        while ((token = (Yytoken) lexer.yylex()) != null) {
            System.out.println(token);
        }
    }
}
