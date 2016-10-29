##Montrgomery examples

#Anova 2 way example. Page 515:

# rep(1:2, each = 4)
# rep(1:2, 4)

Primer <- factor(rep(1:3, each = 6))
Application <- factor(rep(rep(1:2, each = 3), 3))
Trials <- factor(rep(1:3, 6))
Measurements <- c(4.0,4.5,4.3,
                  5.4,4.9,5.6,
                  5.6,4.9,5.4,
                  5.8,6.1,6.3,
                  3.8,3.7,4.0,
                  5.5,5.0,5.0)


PrimerData <- data.frame(Primer,Application,Trials, Measurements)


Primer_lm <- lm (Measurements ~ Primer* Application, data=PrimerData)
summary(Primer_lm)


g <- anova(Primer_lm)
g