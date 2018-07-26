package analiseSintatica;
import java.io.File;
import java.io.StringReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Scanner;

import analiseLexica.*;


public class TestadorSintatico {

	public static void geraLexer(String path){
	    File arquivo = new File(path);
	    jflex.Main.generate(arquivo);
	}

    public static void main(String[] args) throws Exception {

        String rootPath = Paths.get("").toAbsolutePath(). toString();
        String subPath = "/test/";
        String path = rootPath + subPath + "test1.go";
	    File arquivo = new File(path);
        
        
        String s = new String(Files.readAllBytes(arquivo.toPath()));
        
    	Parser p = new Parser(new analiseLexica.AnalisadorLexico(new java.io.FileInputStream(arquivo)));
    	
    	int error = 0;
    	
    	try {
    	p.parse();
    	}catch (Exception ex){
        	ex.getMessage();
        	error++;
    	}
    	
    	if (error == 0){
    		System.out.println("Não contem erro sintatico");
    	}else {
    		System.out.println("Contem erro sintatico");
    	}

    	
    }
}
    