%%raw("import '../styles/globals.css'")
module MyApp = {
    @react.component @module("./index")
    external make: () => React.element = "default"
}

type result<'a, 'b> = 
	| Ok('a)
	| Error('b)

@react.component
let default = () => {
    <div style={ReactDOM.Style.make(~backgroundColor="#000", ~width="100%", ~height="100vh", ())}>    
        <MyApp/>
    </div>
}