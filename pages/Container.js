// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import Link from "next/link";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as Css from "@emotion/css";

var name = "Hello world";

var element = name !== undefined ? React.createElement("div", undefined, "Hello " + name) : null;

var menuItems = [
  {
    name: "Home",
    route: "/"
  },
  {
    name: "About me",
    route: "/about"
  },
  {
    name: "Posts",
    route: "/posts"
  },
  {
    name: "Projects",
    route: "/projects"
  }
];

var content = Belt_Array.map(menuItems, (function (item) {
        return React.createElement(Link, {
                    href: item.route,
                    children: React.createElement("a", {
                          style: {
                            fontSize: "1.1rem"
                          }
                        }, item.name)
                  });
      }));

var container = Css.css({
      color: "#0",
      backgroundColor: "#fff"
    });

var imgContainer = Css.css({
      width: "210px",
      display: "flex",
      alignItems: "center",
      justifyContent: "center",
      height: "210px",
      border: "2px solid white",
      backgroundColor: "#000",
      borderRadius: "50%"
    });

function Container$default(Props) {
  var children = Props.children;
  return React.createElement("div", {
              style: {
                backgroundColor: "#000",
                height: "100vh",
                width: "100%"
              }
            }, React.createElement("div", {
                  style: {
                    margin: "auto",
                    width: "60%"
                  }
                }, React.createElement("div", {
                      style: {
                        display: "flex",
                        height: "50vh",
                        margin: "auto",
                        flexDirection: "column"
                      }
                    }, React.createElement("div", {
                          style: {
                            display: "flex",
                            margin: "auto auto 0",
                            width: "85%"
                          }
                        }, React.createElement("div", {
                              style: {
                                cursor: "pointer",
                                display: "flex",
                                width: "5%",
                                alignItems: "center",
                                flexDirection: "column-reverse",
                                justifyContent: "center"
                              }
                            }, React.createElement("div", undefined, React.createElement("svg", {
                                      height: "30",
                                      width: "30",
                                      fill: "rgba(255,255,255,1)",
                                      viewBox: "0 0 24 24",
                                      xmlns: "http://www.w3.org/2000/svg"
                                    }, React.createElement("path", {
                                          d: "M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"
                                        }))), React.createElement("div", {
                                  style: {
                                    marginBottom: "5px"
                                  }
                                }, React.createElement("svg", {
                                      height: "30",
                                      width: "30",
                                      fill: "rgba(255,255,255,1)",
                                      viewBox: "0 0 24 24",
                                      xmlns: "http://www.w3.org/2000/svg"
                                    }, React.createElement("path", {
                                          d: "M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"
                                        })))), React.createElement("div", {
                              style: {
                                display: "flex",
                                width: "35%",
                                alignItems: "center",
                                justifyContent: "center"
                              }
                            }, React.createElement("div", {
                                  className: imgContainer
                                }, React.createElement("img", {
                                      style: {
                                        height: "190px",
                                        width: "190px",
                                        borderRadius: "50%"
                                      },
                                      src: "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg"
                                    }))), React.createElement("div", {
                              style: {
                                display: "flex",
                                paddingLeft: "10px",
                                width: "60%",
                                alignItems: "center"
                              }
                            }, React.createElement("p", {
                                  style: {
                                    color: "#FFF",
                                    fontSize: "3rem",
                                    fontWeight: "bold",
                                    textDecoration: "underline",
                                    textDecorationColor: "#ad2f40"
                                  }
                                }, "Hello there 👋,", React.createElement("br", undefined), "I'am Gabriel Angelo"))), React.createElement("div", {
                          style: {
                            color: "white",
                            display: "flex",
                            fontSize: "1.2rem",
                            margin: "15px auto 0",
                            width: "50%",
                            justifyContent: "space-between"
                          }
                        }, React.createElement(React.Fragment, undefined, content))), React.createElement("div", undefined, children)));
}

var Link$1;

var $$default = Container$default;

export {
  Link$1 as Link,
  name ,
  element ,
  menuItems ,
  content ,
  container ,
  imgContainer ,
  $$default ,
  $$default as default,
  
}
/* element Not a pure module */