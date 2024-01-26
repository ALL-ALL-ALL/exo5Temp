import SwiftUI

struct ContentView: View {
    @State private var temperature: Double = 0.0

    var body: some View {

        ZStack{
            backgroundColorForTemperature(temperature: temperature)
                .edgesIgnoringSafeArea(.all)

           


            VStack {
                       
                       Text("\(Int(temperature))°C")
                           .bold()
                           .font(.system(size: 30))

                       



                           
                       Text(moodForTemperature(temperature: temperature))
                           .font(.system(size: 30))

                       


                       
                       Slider(value: $temperature, in: 0...50) // c'est la slide avec la marge de 0 à 50°
                       
                           
                   } // FIN VSTACK
            

        }
        
       



    } // FIN BODY
    

    func moodForTemperature(temperature: Double) -> String {
        switch temperature {
            
        case ..<22:
            return "Ça caille🥶🥶🥶"
        case 22..<32:
            return "C'est chill😎😎"
        case 32...50:
            return "Je brûle🔥🔥 "
        default:
            return "Hors"
        } // FIN SWICHT
    } // FIN FUNC
    
    func backgroundColorForTemperature(temperature: Double) -> Color {
           switch temperature {
           case ..<22:
               return Color.blue
               
           case 22..<32:
               return Color.green
               
           case 32...50:
               return Color.red
               
           default:
               return Color.gray
           } // FIN SWITCH
        
       } // FIN FUNC
    
    
} // FIN  STRUCT


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

