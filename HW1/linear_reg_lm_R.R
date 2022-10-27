df <- read.csv('https://raw.githubusercontent.com/YounSooKimTech/BoMethod/main/HW1/assignment1-research-methods.csv', sep="\t")

head(df)
str(df)
summary(df)

lm1 <- lm('calledback~recruiteriswhite + recruiterismale +
        MaleCandidate + EliteSchoolCandidate +  
        BigCompanyCandidate', data=df)
summary(lm1)

print(summary(lm1))

matrix_coef = summary(lm1)$coefficients
print(matrix_coef)

# when I put the all variables except calledback and id,
# it seems like most of Xs are statistically significant.
# Among them, being an elite school candidate has the highest beta coef (0.137) which is statistically significant.
# When all other variables are controlled, when a candidate is from elite school (vs. not), the probability of getting a call back is increased by 0.137