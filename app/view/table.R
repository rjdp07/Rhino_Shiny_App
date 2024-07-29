box::use(
    shiny[moduleServer, NS, reactive],
    reactable[reactableOutput, renderReactable],
)

box::use(
    app/logic/table[table],
    app/logic/data[fetch_data]
)

#' @export
ui = function(id){
    ns = NS(id)
    reactableOutput(ns('table'))
}

#' @export
server = function(id,data){
    moduleServer(id, function(input, output, session) {
        output$table = renderReactable(
            table(data())
        )

    })
}