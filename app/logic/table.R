box::use(
    reactable[reactable],
    magrittr[`%>%`]
)

#' @export
table = function(data){
data %>%
    reactable()
}