import java.io.*;

class Sbhtmps {
  public static void main(String[] args) throws IOException{

        //first argument holds the file name to be output
        String file_dest = args[0];

        //second argument hold the string to use as the javascript 
        //object that will hold all the templates

  	//variable to hold template strings
	String file_cnt_res = "var "+args[1]+" = {};\n";

	for(int i=2; i < args.length; i++){

		InputStream filest = new FileInputStream(args[i]+".htmp");
		BufferedReader buf = new BufferedReader(new InputStreamReader(filest));
		
		String file_ln = buf.readLine();
		StringBuilder file_cnt = new StringBuilder();

		while(file_ln != null){
			file_cnt.append(file_ln.replace("\\","\\\\")).append("\\n");
			file_ln = buf.readLine();
		}

		//append variable to hold string
		file_cnt_res = file_cnt_res + args[1] + "." + args[i] +" = \""+file_cnt.toString().replace("\"", "\\\""	)+"\";\n";
	
	}

	//create file with all templates
	BufferedWriter writer = new BufferedWriter(new FileWriter(file_dest+".js"));
	writer.write(file_cnt_res);
	writer.close();

  }




}
