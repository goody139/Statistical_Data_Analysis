data {
  int<lower=0> N1 ;
  int<lower=0,upper=N1> k1 ;
  int<lower=0> N2 ;
  int<lower=0,upper=N2> k2 ;
  
}
parameters {
  real<lower=0,upper=1> theta1 ;
  real<lower=0,upper=1> theta2 ;
} 
model {
  // prior 
  theta1 ~ beta(1,1) ;
  theta2 ~ beta(1,1) ;

  // likelihood
  k1 ~ binomial(N1, theta1) ;
  k2 ~ binomial(N2, theta2) ;
}



