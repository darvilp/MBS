# R Challenge 0.9. Feb. 8, 2013
#
# Using the work you completed previously by going through:
#
# "An Introduction to a Few Quantitative Skills for Modeling: 
# Biological Systems (BIOL/MATH 340)
#
# please discretize and graph the output which yields an epidemic
# curve for the standard SIR model:
#
# dS/dt = -BSI
# dI/dt = BSI - gI
# dR/dt = gI
#
# Please run the model for time steps from 1-100 and use the 
# following starting and parameter values:
#
# S[1] = 999
# I[1] = 1
# R[1] = 0
# B = 0.0001
# g = 0.025
# 
# Please make your graph look just like the beauty on MyCourses called
# "discrete SIR.jpeg".
#------------------------------------------------------
s0=999
i0=1
r0=0
B = 0.0001
g = 0.025
S=c(s0)
I=c(i0)
R=c(r0)
tmax=250
for(i in 1:tmax){
	S = append(S,S[i-1]+(-B*S[i-1]*I[i-1]))
	I = append(I,I[i-1]+B*S[i-1]*I[i-1] - g*I[i-1])
 	R= append(R,R[i-1]+g*I[i-1])
	
}
x11()	
plot(S,xlab="Time Step",ylab="Population Size",cex.lab=1.5,type="l",col="green",lwd=3,ylim=c(0,1200))
lines(I,col="Red",lwd=3)
lines(R,col="Black",lwd=3)
legend("topright",c("S","I","R"),col=c("green","red","black"),lwd=2,lty=1 )

