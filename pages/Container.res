module Link = Next.Link

let name = Some("Hello world")

let element = switch name {
| Some(name) => <div> {React.string("Hello " ++ name)} </div>
| None => React.null
}

type menuItem = {name: string, route: string}

let menuItems = [
  {name: "Home", route: "/"},
  {name: "About me", route: "/about"},
  {name: "Posts", route: "/posts"},
  {name: "Projects", route: "/projects"},
]

let content = Belt.Array.map(menuItems, item => {
  <Link href={item.route}>
    <a
      style={ReactDOM.Style.make(
        // ~borderBottom="3px solid #ff1741",
        ~fontSize="1.1rem",
        (),
      )}>
      {React.string(item.name)}
    </a>
  </Link>
})

let container = Emotion.css({
  "color": "#0",
  "backgroundColor": "#fff",
})

let imgContainer = Emotion.css({
  "width": "210px",
  "display": "flex",
  "alignItems": "center",
  "justifyContent": "center",
  "height": "210px",
  "border": "2px solid white",
  "backgroundColor": "#000",
  "borderRadius": "50%",
})

@react.component
let default = (~children) => {
  <div style={ReactDOM.Style.make(~backgroundColor="#000", ~width="100%", ~height="100vh", ())}>
    <div style={ReactDOM.Style.make(~width="60%", ~margin="auto", ())}>
      <div
        style={ReactDOM.Style.make(
          // ~border="1px solid red",
          ~display="flex",
          ~flexDirection="column",
          ~margin="auto",
          // ~border="1px solid red",
          ~height="50vh",
          (),
        )}>
        <div style={ReactDOM.Style.make(
            ~display="flex", 
            ~width="85%", 
            ~margin="auto auto 0", 
            // ~border="1px solid red", 
            ())}>
          <div
            style={ReactDOM.Style.make(
              ~width="5%",
              ~display="flex",
              ~alignItems="center",
              ~justifyContent="center",
              ~flexDirection="column-reverse",
              ~cursor="pointer",
              (),
            )}>
            <div>
             <svg  xmlns="http://www.w3.org/2000/svg" fill="rgba(255,255,255,1)" width="30" height="30" viewBox="0 0 24 24">
              <path
                d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"
              />
            </svg>
            </div>
            <div style={ReactDOM.Style.make(~marginBottom="5px", ())}>
            <svg xmlns="http://www.w3.org/2000/svg" fill="rgba(255,255,255,1)" width="30" height="30" viewBox="0 0 24 24"><path d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"/></svg>
            </div>
           
          </div>
          <div
            style={ReactDOM.Style.make(
              ~width="35%",
              // ~border="1px solid red",
              ~display="flex",
              ~alignItems="center",
              ~justifyContent="center",
              (),
            )}>
            <div className={imgContainer}>
              <img
                src="https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg"
                style={ReactDOM.Style.make(
                  ~width="190px",
                  ~height="190px",
                  ~borderRadius="50%",
                  (),
                )}
              />
            </div>
          </div>
          <div
            style={ReactDOM.Style.make(
              ~width="60%",
              ~paddingLeft="10px",
              // ~border="1px solid red",
              ~display="flex",
              ~alignItems="center",
              (),
            )}>
            <p
              style={ReactDOM.Style.make(
                ~color="#FFF",
                ~fontSize="3rem",
                ~fontWeight="bold",
                ~textDecoration="underline",
                ~textDecorationColor="#ad2f40",
                (),
              )}>
              {React.string(`Hello there 👋,`)} <br /> {React.string(`I'am Gabriel Angelo`)}
            </p>
          </div>
        </div>
        <div
          style={ReactDOM.Style.make(
            ~display="flex",
            ~color="white",
            ~width="50%",
            ~margin="15px auto 0",
            ~fontSize="1.2rem",
            ~justifyContent="space-between",
            (),
          )}>
          {<> {React.array(content)} </>}
        </div>
      </div>
      <div> children </div>
    </div>
  </div>
}
