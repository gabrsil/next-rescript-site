%%raw("import '../styles/globals.css'")
type pageProps

module PageComponent = {
    type t = React.component<pageProps>
}

module Container = {
    @react.component @module("./Container")
    external make: (~children: React.element) => React.element = "default"
}

type props = {
    @as("Component")
    component: PageComponent.t,
    pageProps: pageProps
}

let default = (props: props): React.element => {
    let { component, pageProps } = props    
    
    let content = React.createElement(component, pageProps)

    <Container> content </Container>
}