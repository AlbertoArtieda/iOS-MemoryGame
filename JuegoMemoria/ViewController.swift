
import UIKit

var imagenes : [UIImage] = []
var botones : [UIButton] = []
var puntuacion = 0

class ViewController: UIViewController {
    var imagenesCopia : [UIImage] = []
    var vista01 = false
    var vista02 = false
    var contador = 0
    let interrogacion = UIImage(named: "?")
    var botonSeleccionado = 0
    
    let customAlert = MyAlert()
    
    @IBOutlet weak var boton01: UIButton!
    @IBOutlet weak var boton02: UIButton!
    @IBOutlet weak var boton03: UIButton!
    @IBOutlet weak var boton04: UIButton!
    @IBOutlet weak var boton05: UIButton!
    @IBOutlet weak var boton06: UIButton!
    @IBOutlet weak var boton07: UIButton!
    @IBOutlet weak var boton08: UIButton!
    @IBOutlet weak var boton09: UIButton!
    @IBOutlet weak var boton10: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        rellenarYMezclarImagenes() // Al iniciar el programa rellena y mezcla el array de imágenes
        rellenarbotones() // Al iniciar el programa rellena el array con los botones para solo hacerlo una vez
       
    }
    
    @IBAction func boton01Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected // Si el botón no está seleccionado lo selecciona y viceversa
        sender.setBackgroundImage(interrogacion, for: .normal) // La imagen base del background del botón es la interrogación
        sender.setBackgroundImage(imagenes[0], for: .selected) // Al seleccionar el botón, muestra la imagen correspondiente del array
        imagenesCopia.append(imagenes[0]) // Añade la imagen correspondiente a un array vacío para posteriormente hacer comprobaciones en él
        if sender.isSelected {
            botonSeleccionado += 1 // Si el botón se selecciona se suma uno a la variable para hacer comprobaciones más adelante
        }
        else {
            botonSeleccionado -= 1 // Si el botón se selecciona se resta uno a la variable para hacer comprobaciones más adelante
        }
        comprobarVistas() // Comprueba cuántos botones han seleccionado
        comprobarSeleccion() // Llama a la función para hacer todas las comprobaciones
    }
    @IBAction func boton02Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setBackgroundImage(interrogacion, for: .normal)
        sender.setBackgroundImage(imagenes[1], for: .selected)
        imagenesCopia.append(imagenes[1])
        if sender.isSelected {
            botonSeleccionado += 1
        }
        else {
            botonSeleccionado -= 1
        }
        comprobarVistas()
        comprobarSeleccion()
    }
    @IBAction func boton03Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setBackgroundImage(interrogacion, for: .normal)
        sender.setBackgroundImage(imagenes[2], for: .selected)
        imagenesCopia.append(imagenes[2])
        if sender.isSelected {
            botonSeleccionado += 1
        }
        else {
            botonSeleccionado -= 1
        }
        comprobarVistas()
        comprobarSeleccion()
    }
    @IBAction func boton04Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setBackgroundImage(interrogacion, for: .normal)
        sender.setBackgroundImage(imagenes[3], for: .selected)
        imagenesCopia.append(imagenes[3])
        if sender.isSelected {
            botonSeleccionado += 1
        }
        else {
            botonSeleccionado -= 1
        }
        comprobarVistas()
        comprobarSeleccion()
    }
    @IBAction func boton05Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setBackgroundImage(interrogacion, for: .normal)
        sender.setBackgroundImage(imagenes[4], for: .selected)
        imagenesCopia.append(imagenes[4])
        if sender.isSelected {
            botonSeleccionado += 1
        }
        else {
            botonSeleccionado -= 1
        }
        comprobarVistas()
        comprobarSeleccion()
    }
    @IBAction func boton06Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setBackgroundImage(interrogacion, for: .normal)
        sender.setBackgroundImage(imagenes[5], for: .selected)
        imagenesCopia.append(imagenes[5])
        if sender.isSelected {
            botonSeleccionado += 1
        }
        else {
            botonSeleccionado -= 1
        }
        comprobarVistas()
        comprobarSeleccion()
    }
    @IBAction func boton07Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setBackgroundImage(interrogacion, for: .normal)
        sender.setBackgroundImage(imagenes[6], for: .selected)
        imagenesCopia.append(imagenes[6])
        if sender.isSelected {
            botonSeleccionado += 1
        }
        else {
            botonSeleccionado -= 1
        }
        comprobarVistas()
        comprobarSeleccion()
    }
    @IBAction func boton08Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setBackgroundImage(interrogacion, for: .normal)
        sender.setBackgroundImage(imagenes[7], for: .selected)
        imagenesCopia.append(imagenes[7])
        if sender.isSelected {
            botonSeleccionado += 1
        }
        else {
            botonSeleccionado -= 1
        }
        comprobarVistas()
        comprobarSeleccion()
    }
    @IBAction func boton09Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setBackgroundImage(interrogacion, for: .normal)
        sender.setBackgroundImage(imagenes[8], for: .selected)
        imagenesCopia.append(imagenes[8])
        if sender.isSelected {
            botonSeleccionado += 1
        }
        else {
            botonSeleccionado -= 1
        }
        comprobarVistas()
        comprobarSeleccion()
    }
    @IBAction func boton10Pulsado(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.setBackgroundImage(interrogacion, for: .normal)
        sender.setBackgroundImage(imagenes[9], for: .selected)
        imagenesCopia.append(imagenes[9])
        if sender.isSelected {
            botonSeleccionado += 1
        }
        else {
            botonSeleccionado -= 1
        }
        comprobarVistas()
        comprobarSeleccion()
    }
    
    // Rellena el array con las imágenes y las mezcla
    func rellenarYMezclarImagenes() {
        imagenes = [
            UIImage(named: "arnold")!,
            UIImage(named: "titeuf")!,
            UIImage(named: "vacaypollo")!,
            UIImage(named: "catdog")!,
            UIImage(named: "ededdeddy")!,
            UIImage(named: "arnold")!,
            UIImage(named: "titeuf")!,
            UIImage(named: "vacaypollo")!,
            UIImage(named: "catdog")!,
            UIImage(named: "ededdeddy")!
        ]
        imagenes = imagenes.shuffled() // Desordena las imágenes
    }
    
    // Comprueba que se han seleccionado dos botones
    func comprobarVistas() {
        if !vista01 && !vista02 { // Si ningún boton se ha seleccionado se activa una booleana al pulsar el primero
            vista01 = true
        }
        else if vista01 && !vista02 { // Si ya hay una booleana activada se activa la segunda
            vista02 = true
        }
    }
    
    // Activa un contador que cuando llega a 1 realiza las comprobaciones de las imágenes para ver si son iguales o no
    func comprobarSeleccion() {
        if vista01 && vista02 && botonSeleccionado == 2{ // Si se han seleccionado dos botones, entra (evita que se seleccione 2 veces el mismo botón)
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { // Contador
                timer in
                self.contador += 1
                if self.contador == 1 && self.imagenesCopia[0] == self.imagenesCopia[1] { // Si llega a 1 y las dos imágenes del nuevo array son iguales
                    self.aumentarPuntuacionYComprobar()
                    self.accionAciertoEnBotones()
                    self.reseteoVistasYArray()
                }
                else if self.contador == 1 && self.imagenesCopia[0] != self.imagenesCopia[1] { //Si llega a 1 y las dos imágenes del nuevo array son diferentes
                    self.voltearBotones()
                    self.reseteoVistasYArray()
                }
                timer.invalidate() // Termina el contador
                self.contador = 0 // Pone el contador a cero
            }
            botonSeleccionado = 0 // Terminada la comprobación se resetea la variable a cero
        }
    }
    
    // Suma uno a la variable "puntuación" con cada acierto y si es 5 activa la alerta
    func aumentarPuntuacionYComprobar() {
        puntuacion += 1 // Suma 1 a la variable
        if puntuacion == 5 { // Si la puntuación llega a 5 salta el mensaje con la animación
            customAlert.showAlert(with: "¡Enhorabuena!",
                                  message: "Has completado el nivel",
                                  on: self)            
        }
    }
    
    // Rellena el array con los botones
    func rellenarbotones() {
        botones = [
            boton01, boton02, boton03, boton04, boton05, boton06, boton07, boton08, boton09, boton10
        ]
    }
    
    // Desactiva todos los botones que estén seleccionados
    func voltearBotones() {
        for i in 0...botones.endIndex - 1 {
            botones[i].isSelected = false
        }
    }
    
    // Cambia la imagen de fondo a los botones seleccionados y los desactiva
    func accionAciertoEnBotones() {
        for i in 0...botones.count - 1 {
            if botones[i].isSelected == true {
                botones[i].setBackgroundImage(UIImage(named: "acierto"), for: .normal)
                botones[i].isEnabled = false
            }
        }
    }
    
    // Elimina todos los elementos del nuevo array y pone las booleanas de las vistas en falso
    func reseteoVistasYArray() {
        self.imagenesCopia.removeAll()
        self.vista01 = false
        self.vista02 = false
    }
    
    // Desactiva la alerta
    @objc func dismissAlert() {
        customAlert.dismissAlert()
    }
}

class MyAlert {
    
    struct Constants {
        static let backgroundAlphaTo: CGFloat = 0.6
    }
    
    private let backgroundView: UIView = {
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        backgroundView.alpha = 0
        return backgroundView
    }()
    
    private let alertView: UIView = {
        let alert = UIView()
        alert.backgroundColor = .cyan
        alert.layer.masksToBounds = true
        alert.layer.cornerRadius = 12
        return alert
    }()
    
    private var myTargetView: UIView?
    
    func showAlert(with title: String,
                   message: String,
                   on ViewController: UIViewController) {
        guard let targetView = ViewController.view else {
            return
        }
        
        myTargetView = targetView
        
        backgroundView.frame = targetView.bounds
        targetView.addSubview(backgroundView)
        
        targetView.addSubview(alertView)
        alertView.frame = CGRect(x: 40,
                                 y: -300,
                                 width: targetView.frame.size.width-80,
                                 height: 300)
        
        let titleLabel = UILabel(frame: CGRect(x: 0,
                                               y:0,
                                               width: alertView.frame.size.width,
                                               height: 80))
        titleLabel.text = title
        titleLabel.textAlignment = .center
        alertView.addSubview(titleLabel)
        
        let messageLabel = UILabel(frame: CGRect(x: 0,
                                                 y:80,
                                                 width: alertView.frame.size.width,
                                                 height: 170))
        messageLabel.numberOfLines = 0
        messageLabel.text = message
        messageLabel.textAlignment = .center
        alertView.addSubview(messageLabel)
        
        let button = UIButton(frame: CGRect(x: 0,
                                            y: alertView.frame.size.height-50,
                                            width: alertView.frame.size.width,
                                            height: 50))
        
        button.setTitle("Volver a empezar", for: .normal)
        button.setTitleColor( .link , for: .normal)
        button.addTarget(self,
                         action: #selector(dismissAlert),
                         for: .touchUpInside)
        alertView.addSubview(button)
        
        UIView.animate(withDuration: 0.25,
                       animations: {
            self.backgroundView.alpha = Constants.backgroundAlphaTo
        }, completion: { done in
            if done {
                UIView.animate(withDuration: 0.25, animations: {
                    self.alertView.center = targetView.center
                })
            }
        })
    }
    @objc func dismissAlert() {
        
        guard let targetView = myTargetView else {
            return
        }
        
        UIView.animate(withDuration: 0.25,
                       animations: {
            self.alertView.frame = CGRect(x: 40,
                                          y: targetView.frame.size.height,
                                     width: targetView.frame.size.width-80,
                                     height: 300)
        }, completion: { done in
            if done {
                UIView.animate(withDuration: 0.25, animations: {
                    self.backgroundView.alpha = 0
                }, completion: { done in
                    if done {
                        self.alertView.removeFromSuperview()
                        self.backgroundView.removeFromSuperview()
                        self.resetear()
                    }
                    
                })
            }
        })
    }
    
    func resetear() {
        for i in 0...botones.endIndex - 1 {
            botones[i].isEnabled = true // Activa los botones
            botones[i].setBackgroundImage(UIImage(named: "?"), for: .normal) // Pone la imagen base a todos los botones
            botones[i].isSelected = false // Deselecciona los botones
            puntuacion = 0 // Resetea la puntuación
        }
        imagenes = imagenes.shuffled() // Desordena de nuevo las imágenes para crear un juego diferente
    }

}
