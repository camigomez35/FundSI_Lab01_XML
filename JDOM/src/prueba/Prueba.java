/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prueba;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.jdom2.*;
import org.jdom2.output.XMLOutputter;
/**
 *
 * @author Equipo Fundamentos Jhonatan, Frank, Santiago, Yoiner, Camila
 */
public class Prueba {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException, JDOMException {
        write();
        read();
    }
    
    public static void read() throws JDOMException, IOException{
        
      String cadena;
      FileReader f = new FileReader("src/file.xml");
      BufferedReader b = new BufferedReader(f);
      while((cadena = b.readLine())!=null) {
          System.out.println(cadena);
      }
      b.close();
    }
    
    public static void write() throws IOException{
        //Se crea un numero documento
        Document document = new Document();
        //Se abre el buffer para la lectura por consola
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        System.out.print("Ingrese el nombre del elemento raiz(root):");
        String raiz = br.readLine();
        //Se asigna el elemento raiz
        Element root = new Element(raiz);
        System.out.print("Numero de atributos a crear en su archivo XML:");
        int numeroElementos = Integer.parseInt(br.readLine());
        //Creacion del vector que contendra los elementos del xml 
        String [] elementos = new String[numeroElementos];
        //Creacion del vector que contendra los contenidos del xml
        String [] contenidos = new String[numeroElementos];
        for (int i = 0; i < numeroElementos ; i++) {
            System.out.print("Nombre del atributo ("+(i+1)+"):");
            elementos [i] = br.readLine();
        }
        for (int i = 0; i < numeroElementos; i++) {
            System.out.print("Digite el contenido del elemento("+elementos[i]+"):");
            contenidos[i] = br.readLine();
        }     
        for (int i = 0; i < numeroElementos; i++) {
            Element element = new Element(elementos[i]);
            element.setText(contenidos[i]);
            root.addContent(element);
        }
        document.setRootElement(root);
        XMLOutputter outputter = new XMLOutputter();
        outputter.output(document, new FileOutputStream(new File("src/file.xml")));
    }
    
}
