sir <- function(t, y, parms){
  with(c(as.list(y), parms),{
    
    FOI <- brn * I
    
    dSdt <- -FOI * S
    dIdt <- FOI * S - I
    # Note: Population size is constant, so don't need to specify dRdt
    list(c(dSdt, dIdt))
  })
}

sis <- function(t, y, parms){
  with(c(as.list(y), parms),{
    
    FOI <- brn * I
    
    dSdt <- -FOI * S + I
    dIdt <- FOI * S - I
    
    list(c(dSdt, dIdt))
  })
}

run_model <- function(model, tt = seq(0, 30, .5), vals = values){
  ts_out <- data.frame(ode(
    y = c(S = 1 - vals$init_I, I = vals$init_I),
    func = model, 
    parms = vals,
    times = tt
  ))
  return(ts_out)
}
