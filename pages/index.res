let name = Some("Hello world")

let element = switch name {
    | Some(name) => <div> {React.string("Hello " ++ name)} </div>
    | None => React.null
} 

@react.component

let default = () => {
    <div style={ReactDOM.Style.make(~backgroundColor="#000", ~width="100%", ~height="100vh", ())}>element</div>
}