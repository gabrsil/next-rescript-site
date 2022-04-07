%%raw("import '../styles/globals.css'")
module MyApp = {
    @react.component @module("./index")
    external make: () => React.element = "default"
}

@react.component
let default = () => {
    <div>    
    <MyApp/>
    </div>
}