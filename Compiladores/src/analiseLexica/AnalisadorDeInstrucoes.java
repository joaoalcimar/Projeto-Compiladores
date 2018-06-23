package analiseLexica;

import java.io.IOException;
import java.io.StringReader;

public class AnalisadorDeInstrucoes {

    public static void main(String[] args) throws IOException {

        String expr2 = "-34i + 52 + 5i * 942 - 32i / 5 == B >= 4.433333 * 42+5321i ! true";

        AnalisadorLexico lexical2 = new AnalisadorLexico(new StringReader(expr2));
        lexical2.yylex();

    }
}
