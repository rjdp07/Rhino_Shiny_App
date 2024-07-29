box::use(
    reactable[reactable],
    magrittr[`%>%`],
    dplyr,
    tidyr,
)

#' @export
table = function(data){
data %>%
    tidyr$pivot_wider(names_from = Species, values_from = Population) %>%
    dplyr$arrange(Year) %>%
    reactable()
}