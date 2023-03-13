import SwiftUI

struct ContentView: View {

@State var subtitleText = [
    "Click the START GAME button to begin",
    "Who wrote the song \"Stairway to Heaven\"?",
    "Sorry, wrong answer",
    "Correct!"
]
@State var subtitleIndex = 0

@State var bottomButton = [
    "START GAME",
    "NEXT QUESTION"
]
@State var bottomButtonIndex = 0
    
    func gameStart() {
        print("gameStart ran")
    }
    
    var body: some View {
        ZStack{

            Color.red.ignoresSafeArea()

            VStack {
                Spacer()
                
                Text("THE CLASSIC ROCK TRIVIA GAME")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text(subtitleText[subtitleIndex])
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        print("Button clicked")
                    } label: {
                        Text("")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 150.0)
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    Button {
                        print("Button clicked")
                    } label: {
                        Text("")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 150.0)
                            .fontWeight(.bold)
                    }

                    Spacer()

                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        print("Button clicked")
                    } label: {
                        Text("")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 150.0)
                            .fontWeight(.bold)
                    }

                    Spacer()
                    
                    Button {
                        print("Button clicked")
                    } label: {
                        Text("")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 150.0)
                            .fontWeight(.bold)
                    }

                    Spacer()

                }

                
                Spacer()
                
                Button {
                    print("Button clicked")
                    gameStart()
                    
                } label: {
                    Text(bottomButton[bottomButtonIndex])
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
