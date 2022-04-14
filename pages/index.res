@react.component
let default = (): React.element => {

    <div>
      <p style={ReactDOM.Style.make(
                    ~color="#FFF",        
                    ~fontSize="2.1rem",  
                    ~textAlign="justify",
                    ~textDecoration="underline",        
                    ~textDecorationColor="#ad2f40",  
                    ()
                )}>{React.string("Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                Lorem Ipsum has been the industry's standard dummy text")}</p>
    </div>

}