package analiseLexica;

import java.io.File;
import java.nio.file.Paths;

public class GeradorLexico {

    public static void main(String[] args) {

        String rootPath = Paths.get("").toAbsolutePath(). toString();
        String subPath = "/src/analiseLexica/";

        String file = rootPath + subPath + "Linguagem.lex";

        File sourceCode = new File(file);

        jflex.Main.generate(sourceCode);

    }
}
