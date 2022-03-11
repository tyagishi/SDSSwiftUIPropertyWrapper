# SDSSwiftUIPropertyWrapper

convenient property wrapper for SwiftUI

## AnimateState
with using AnimateState, no need to use explicit withAnimation closure

### example
```
struct ContentView: View {
    @AnimateState(wrappedValue: false, animation: Animation.easeInOut(duration: 2))
    private var offset: Bool

    var body: some View {
        VStack {
            Button(action: {
                offset.toggle()
            }, label: {
                Text("Toggle offset")
            })
            Text("Hello, world!")
                .offset(y: offset ? 100 : 0)
        }
        .padding()
    }
}
```
