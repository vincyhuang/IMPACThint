## workHORSE is an implementation of the IMPACTncd framework, developed by Chris
## Kypridemos with contributions from Peter Crowther (Melandra Ltd), Maria
## Guzman-Castillo, Amandine Robert, and Piotr Bandosz. This work has been
## funded by NIHR  HTA Project: 16/165/01 - workHORSE: Health Outcomes
## Research Simulation Environment.  The views expressed are those of the
## authors and not necessarily those of the NHS, the NIHR or the Department of
## Health.
##
## Copyright (C) 2018-2020 University of Liverpool, Chris Kypridemos
##
## workHORSE is free software; you can redistribute it and/or modify it under
## the terms of the GNU General Public License as published by the Free Software
## Foundation; either version 3 of the License, or (at your option) any later
## version. This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
## FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
## details. You should have received a copy of the GNU General Public License
## along with this program; if not, see <http://www.gnu.org/licenses/> or write
## to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
## Boston, MA 02110-1301 USA.


# get all unique LADs included in locality vector. KEEP!!!
#' @export
get_unique_LADs <- function(locality) {
  indx_hlp <-
    read_fst("./synthpop/lsoa_to_locality_indx.fst",
             as.data.table = TRUE)

  if ("England" %in% locality) {
    lads <- indx_hlp[, unique(LAD17CD)] # national
  } else {
    lads <-
      indx_hlp[LAD17NM %in% locality |
                 RGN11NM %in% locality, unique(LAD17CD)]
  }
  return(lads)
}

# Get dt projections for the input localities. KEEP!!!
#' @export
get_pop_size <- function(design, parameters) {
  tt <- read_fst("./ONS_data/pop_size/pop_proj.fst", as.data.table = TRUE)
  lads <- get_unique_LADs(parameters$locality_select)
  tt <- tt[LAD17CD %in% lads &
             between(age, design$ageL, design$ageH) &
             between(year, parameters$ininit_year_slider_sc1,
                     parameters$inout_year_slider),
           .(pops = sum(pops)), keyby = .(year, age, sex)]

  return(tt)
}

