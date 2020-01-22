

import UIKit

class ViewController: UIViewController {
    
    
    var numero  = 0.0
    var numS = ""
    var operacion = "c"
    var resultadoAcum = 0.0
    var resultadoFinal = 0.0
    var comprueba = -1
    
    
    @IBOutlet weak var labprincipal: UILabel!
    @IBOutlet weak var txtsegundario: UITextField!
    
    @IBAction func butsuma(_ sender: Any) {
        tipooperacion()
        txtsegundario.text! = String (resultadoAcum)
        
        labprincipal.text! = ""
        
        operacion = "+"
        numS = ""
    }
    
    @IBAction func butresta(_ sender: Any) {
        tipooperacion()
        txtsegundario.text! = String (resultadoAcum)
           
           labprincipal.text! = ""
           comprueba = -1
           operacion = "-"
        numS = ""
    }
    @IBAction func butmult(_ sender: Any) {
        tipooperacion()
        txtsegundario.text! = String (resultadoAcum)
           
           labprincipal.text! = ""
           comprueba = -1
           operacion = "x"
        numS = ""
    }
    @IBAction func butdivision(_ sender: Any) {
        
        
        
        tipooperacion()
        txtsegundario.text! = String (resultadoAcum)
           
           labprincipal.text! = ""
           comprueba = -1
           operacion = "/"
        if numS == "infinity"{
            numero = 0.0
            resultadoAcum = 0.0
        } else{
            numero = Double(numS) ?? 0.0
            resultadoAcum=numero
        numS = ""
            
        }
        
        
    }
    
    @IBAction func butigual(_ sender: Any) {
        if comprueba == -1{
        numS = ""
        resultadoFinal = resultadoAcum
        labprincipal.text = String( resultadoFinal )
            
        }else{
          tipooperacion()
          numS = ""
          resultadoFinal = resultadoAcum
          labprincipal.text = String( resultadoFinal )
        }
        numero  = 0.0
        numS = ""
        txtsegundario.text = ""
        operacion = "+"
        resultadoAcum = resultadoFinal
        resultadoFinal = 0.0
        comprueba = 0
        
        
    }
    
    
    @IBAction func but1(_ sender: Any) {
        
        labprincipal.text = labprincipal.text! + "1"
        
             
                numS = numS + "1"
                
        comprueba = 0
                 
    }
   
    
    @IBAction func but2(_ sender: Any) {
              labprincipal.text = labprincipal.text! + "2"
         
               
               numS = numS + "2"
            

            comprueba = 0
         
     }
    
    
    @IBAction func but3(_ sender: Any) {
                    labprincipal.text = labprincipal.text! + "3"
                         numS = numS + "3"
                    
                    comprueba = 0
           
       }
    
    
    @IBAction func but4(_ sender: Any) {
        labprincipal.text = labprincipal.text! + "4"
                 numS = numS + "4"
            
            comprueba = 0
        
        
    }
    
    @IBAction func but5(_ sender: Any) {
                labprincipal.text = labprincipal.text! + "5"
                        numS = numS + "5"
                     
                  comprueba = 0
          
      }
    
    @IBAction func but6(_ sender: Any) {
           labprincipal.text = labprincipal.text! + "6"
                       numS = numS + "6"
                    
                    comprueba = 0
     }
    
    
    @IBAction func but7(_ sender: Any) {
           labprincipal.text = labprincipal.text! + "7"
                      numS = numS + "7"
                    
                    comprueba = 0
    }
 

    
    @IBAction func but8(_ sender: Any) {
        
            labprincipal.text = labprincipal.text! + "8"
              numS = numS + "8"
            
              comprueba = 0
            
    }
    
    @IBAction func but9(_ sender: Any) {
        
            labprincipal.text = labprincipal.text! + "9"
        
              numS = numS + "9"
              
              comprueba = 0
             
    }
    
    @IBAction func but0(_ sender: Any) {
        
        labprincipal.text = labprincipal.text! + "0"
           
                 numS = numS + "0"
                 
                 comprueba = 0
                
        
    }
    @IBAction func butac(_ sender: Any) {
        
        
            
            labprincipal.text! = ""
            txtsegundario.text! = ""
        numero  = 0.0
            numS = ""
            operacion = "+"
        resultadoAcum = 0.0
        resultadoFinal = 0.0
            comprueba = 0
        
        
        
    }
    
    func tipooperacion() {
        numero = Double(numS) ?? 0.0
        if operacion == "+" {
            
            resultadoAcum = resultadoAcum + numero
    
        }
        
        if operacion == "-" {
                   
                   resultadoAcum = resultadoAcum - numero
           
               }
        
        if operacion == "x" {
                   
                   resultadoAcum = resultadoAcum * numero
           
               }
        
       if operacion == "/" {
        
        
        if resultadoAcum != 0 {
        
            if numero == 0 {
                labprincipal.text = "infinity"
                numero == 0.0
                resultadoAcum == 0.0
            }else{
                 resultadoAcum = resultadoAcum / numero
                
            }
  
        } else{
            
            txtsegundario.text! = "error"
        }
                 
           
               }
        if operacion == "c" {
                
                resultadoAcum = numero
        
            }
        
        
        
        
        
    }
        
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

