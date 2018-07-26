package analiseSemantica;

import java.util.*; 

public class VerificadorConstantes
{
	public static List<String> tipos = Arrays.asList("uint", "uint8", "uint16", "uint32", "uint64",
						"int",		"int8",		"int16",		"int32", 	"int64",
						"float32",	"float64", 	"complex64",	"complex128",
						"byte",		"rune",		"bool",			",uintptr",
						"string"
		);

	public static List<String> tiposNumericos = Arrays.asList("uint", "uint8", "uint16", "uint32", "uint64",
						"int",		"int8",		"int16",		"int32", 	"int64",
						"float32",	"float64", 	"complex64",	"complex128",
						"byte"
		);

	public static List<String> tiposNumericosIntegrais = Arrays.asList("uint", "uint8", "uint16", "uint32", "uint64",
						"int",		"int8",		"int16",		"int32", 	"int64"
		);
	
	

	public static List<String> palavrasChave = Arrays.asList( "break", "default", "func", "interface",
						"select",  		"case",     "defer",        "go",
				      	"map",     		"struct",   "chan",		    "else",
		      	        "goto",    		"package",  "switch",       "const",
	      	            "fallthrough",  "if",       "range",	    "type",
						"continue",		"for",      "import",       "return",  
						"var",			"error");

	public static List<String> constantes = Arrays.asList("true", "false", "iota", "nil");

	public static List<String> funcoes = Arrays.asList("append", "cap", "close", "complex", 
						"copy", 	"delete", 	"imag", 	"len",
						"make", 	"new", 		"panic", 	"print", 
						"println", 	"real", 	"recover");

	public static List<String> reservadas = Arrays.asList("ret","goto","push","import","package","call");
	
	public static boolean ehReservada(String s)
	{
		if( reservadas.contains(s))
			return true;
		
		return false;
	}
	public static boolean ehPalavraChave(String s)
	{
		
		if ( tipos.contains(s))
			return true;
		
		if(reservadas.contains(s))
			return true;
		
		if (palavrasChave.contains(s))
			return true;

		if (constantes.contains(s))
		 	return true;

		if (funcoes.contains(s) )
			return true;

		return false;
	}

	public static boolean ehNumerico(String s)
	{

		if (tipos.contains(s))
			return true;

		return false;
	}

	public static boolean ehNumericoIntegral(String s)
	{

		if (tiposNumericosIntegrais.contains(s))
			return true;

		return false;
	}
	
}