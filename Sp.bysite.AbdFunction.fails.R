# An ecologist really likes your hurdle function (will you never learn?). Write them a function that simulates
# lots of species (each with their own p and λ) across n sites. Return the results in a matrix where each
# species is a column, and each site a row (this is the standard used for ecology data in R).


#steps:
#so we already has a function that does it for ONE species at MANY sites.  Lets see what we can do to this function to make it do multiple species

#right now we have 2 function


########################################################################################################################
#early fails at bottom



  
########Trying again, maybe need it as a file to input
  ListofSpecies <- read.csv("/Users/Mal/Documents/ProgrammingClass/r-intro-mahagadorn/ListofSpecies.csv", sep = ",", header=TRUE)



#First we need to calculate the probability and abundance by site??
#step one is you have to figure out how many rows are in the datafile you are working with

Prob.Ab.Sp <- function(ListofSpecies){
  numbSp <- nrow(ListofSpecies)
  for(i in numbSp){
    Ind.Species <- ListofSpecies[i,1]       #saying species Name
    Ind.Prob <- ListofSpecies[i,2]      #Individual Probabilities
    Ind.Lamba <- ListofSpecies[i,3]
    (Num.Sites <- ListofSpecies[i,4])
        if(Num.Sites<1){
          return("You don't have the number of sites listed")
        }
        if(Num.Sites==1){
            Spp.Abund <- Abd.Sp.Sim(prob = Ind.Prob, n = 1, lambda = Ind.Lamba)
            Data <- data.frame(Ind.Species, Spp.Abund)
            return(Data)
     } else {
        for (i in i:Num.Sites) {
          Spp.Abund <- Abd.Sp.Sim(prob = Ind.Prob, n = Num.Sites, lambda = Ind.Lamba)
          Data <- data.frame(Ind.Species, Spp.Abund)
        }
       return(Data)
    }
  }
}




SpeciesDATA.TEST <- Prob.Ab.Sp(ListofSpecies)




#Tries that have failed subsetting after Abd.Sp.Sim
  #[[1]]
  #[[i:Num.Sites]]
  #[[Num.Sites]]
  #[[Ind.Species]]
  #[i[Num.Sites]] #1    SpeciesE        NA





############################################################
############################################################
############################################################
############################################################
#Earlier Fails
Abd.Sp.Sim #will give us abundance per site

Abd.Sp.Sim.test <- function(prob, n, lambda){      #is the number of sites, lambda=mean of a vector (or mean of abundances)
  prob.of.pres <- Prob.Presence(prob = prob)
  for (i in Species) {
    if(prob.of.pres!=1){                    
      Species[i] <- c("Species not Present")
    } else {
      abundance[i]<- rpois(n=n, lambda = lambda)
      return(abundance)
    }  
  }
  
  
  SpeciesData <- c(SpeciesA, SpeciesB)
  
  SpeciesData <- data.frame(SpeciesA, SpeciesB, SpeciesC, SpeciesD, SpeciesE)
  
  
  
  SpeciesA <- c(Abd.Sp.Sim (prob = .5, n=5, lambda = 20))
  SpeciesB <- c(Abd.Sp.Sim (prob = .5, n=5, lambda = 50))
  SpeciesC <- c(Abd.Sp.Sim (prob = .5, n=5, lambda = 10))
  SpeciesD <- c(Abd.Sp.Sim (prob = 1, n=5, lambda = 50))
  SpeciesE <- c(Abd.Sp.Sim (prob = .5, n=5, lambda = 2))
  
  
  
  Cal.Sp.Ab <- function() {
    
    
  }
  
  
  Make.DF <- function(){
    for(i in 1:species)
  }
  
  SpeciesA.p <- c(Prob.Presence (prob = .5))
  SpeciesB.p <- c(Prob.Presence (prob = .5))
  SpeciesC.p <- c(Prob.Presence (prob = .5))
  SpeciesD.p <- c(Prob.Presence (prob = 1))
  SpeciesE.p <- c(Prob.Presence (prob = .5))
  
  
  
  SpeciesProb<- data.frame(SpeciesA.p, SpeciesB.p, SpeciesC.p, SpeciesD.p, SpeciesE.p)
  
  
  SpeciesAB.DF <- function(SpeciesList, )
    