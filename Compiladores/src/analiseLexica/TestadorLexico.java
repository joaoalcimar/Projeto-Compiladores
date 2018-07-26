package analiseLexica;

import java.io.IOException;
import java.io.StringReader;

public class TestadorLexico {

    public static void main(String[] args) throws IOException {

        String expr2 = "-34 + 52 + 5.565632 * 942 - 32 / 5 == B >= a43434.433333 * ! true";

        AnalisadorLexico lexical2 = new AnalisadorLexico(new StringReader(expr2));
        lexical2.yylex();

    }
}
