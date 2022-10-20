open Tyxml

let%html greet who = {|
  <html>
    <head>
    <title>Home</title>
    <style>
      h1 {
        font-family: 'Helvetica', 'Arial', sans-serif;
        color: black;
        font-size: 100pt;
      }
    </style>
    </head>
    <body>
      <h1>|}[Html.txt ("plz hire me " ^ who ^ " 🥺 👉 👈")]{|</h1>
    </body>
  </html>
|}

let html_to_string html =
  Format.asprintf "%a" (Tyxml.Html.pp ()) html

let unwrap_string (s: string option): string =
  match s with
  | None -> ""
  | Some x -> x

let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router [
    Dream.get "/"
      (fun _ -> Dream.html (html_to_string (greet "")));
    Dream.get "/:company"
      (fun req -> Dream.html (html_to_string (greet (Dream.param req "company"))));
  ]




