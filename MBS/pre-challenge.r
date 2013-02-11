# Build two discrete-time models. The first should be based on the solution
# to the differential equation dN/dt = rN, where N is the size of the 
# population and r is a growth rate parameter. The second model should
# be an updating function of the form N(t) = r * N(t-1)
#--------------------------------------------------------------------
# Building the exponential growth model based on the solution to
# dN/dt = rN and graph the output, assuming the following:

N0 = 1000

r = -.1
time = 0:99 # run the models for 100 time steps.

# N1 = # provide the solution to the differential equation dN/dt = rN
population= function(r,t){
	return(N0*exp(r*t))	
}

#plot(population(r,time),xlab="Timestep",ylab="Population")
# plot the result of the model here

#---------------------------------------------
# Provide an interative solution to geometric growth.
# Use a for() loop to iterate the growth model for 
# 100 time steps.

N2 =1000
r = -.1
maxtime = 100 # iterate up to maxtime
# provide the for loop below

# plot the result of the model here
i=1

#popiter=function(rr,tmax){	
#	n=c(N2)
#	for(i in 2:tmax){
#		nstep=n[i-1]+rr*n[i-1]
#		n=append(n,nstep)
#		return(n)
#	}
#}

Nvec=c(N2)
steps=100
for(i in 1:steps){
	Nstep=Nvec[i-1]+Nvec[i-1]*r
	Nvec=append(Nvec,Nstep)
}

x11()
iterplot=plot(Nvec,xlab="Timestep",ylab="Population")
contplot=plot(population(r,time),xlab="Timestep",ylab="Population")


# Note that these two models do not give the same answer - why not?