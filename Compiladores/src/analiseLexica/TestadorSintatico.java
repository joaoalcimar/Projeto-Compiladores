package analiseLexica;
import java.io.File;
import java.io.StringReader;
import analiseLexica.*;


public class TestadorSintatico {

	public static void geraLexer(String path){
	    File arquivo = new File(path);
	    jflex.Main.generate(arquivo);
	}

    public static void main(String[] args) {

    	String string; // string seria um codigo qualquer em go
    	AnalisadorLexico a = new analiseLexica.AnalisadorLexico(new StringReader(string));
        parser p = new parser(a);
        p.parse();
    	
    }
}
    