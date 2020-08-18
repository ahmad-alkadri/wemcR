#' Wood EMC using Hailwood-Horrobin methods
#'
#' @description Function to calculate the EMC of wood
#' using Hailwood-Horrobin methods. Standard values
#' all around with no distinction between softwood
#' and hardwood species.
#'
#' @usage wemcHH(RH, T, Tunit)
#'
#' @param RH The relative humidity of the air in percent.
#' @param T The temperature.
#' @param Tunit The unit used for temperature, either
#' degree celsius ("C") or fahrenheit ("F").
#'
#' @return The EMC value of wood for the given temperature
#' (T) and relative humidity (RH)
#'
#' @examples
#' library(wemcR)
#'
#' # Use only a combination of one temperature and humidity
#' T_1 <- 20
#' Tunit_1 <- "C"
#' RH_1 <- 65
#'
#' EMC_1 <- wemcHH(RH_1, T_1, Tunit_1)

# Define the functions
wemcHH <- function(RH,T,Tunit){

  if(Tunit == "F" | Tunit == "C"){

    if(Tunit == "F"){
      # If the temperature is in Fahrenheit
      # we need to convert it to Celsius

      Ti = (T-32)*5/9

    }else{
      # If it is already in Celsius,
      # save it directly as Ti

      Ti = T
    }

  }else{
    # If the Tunit is not in Fahrehnheit
    # not in Celsius

    return("Please use only Tunit = 'C' or 'F'")

  }

  h = RH/100

  # Calculate; T in °C
  W = 349+1.29*T+0.0135*T^2
  K = 0.805+0.000736*T-0.00000273*T^2
  K1 = 6.27-0.00938*T-0.000303*T^2
  K2 = 1.91+0.0407*T-0.000293*T^2

  # Calculate the EMC
  p_1 = 1800/W
  p_2 = (K*h)/(1-K*h)
  p_3 = (K1*K*h+2*K1*K2*K^2*h^2)
  p_4 = 1+K1*K*h+K1*K2*K^2*h^2

  EMC = p_1*(p_2+p_3/p_4)

  return(EMC)

}
