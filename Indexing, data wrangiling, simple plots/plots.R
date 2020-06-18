# scatter plots
populations_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(populations_in_millions,total_gun_murders)

#histograms
hist(murders$rate)

#box plot
boxplot(rate~region, data=murders)