library(readxl)
library(ggplot2)
df <- read_excel("C:/GitHubRepository/AnaEE France2023/data-Lautaret-2023-09-18_month.xlsx")
plot(df$TIMESTAMP, df$Albedo_Avg)

soildf <- data.frame(df$TIMESTAMP,df$WindSpeed_Avg, df$Quantite_TR_Tot)
ggplot(soildf, aes(x = soildf$df.TIMESTAMP)) +
  geom_line(aes(y = soildf$df.WindSpeed_Avg, color = "windSpeed")) +
  geom_line(aes(y = soildf$df.Quantite_TR_Tot, color = "Pre")) +
  labs(color = "Variables") +
  xlab("Time") +
  ylab("Value") +
  scale_color_manual(values = c("windSpeed" = "orange", "Pre" = "grey")) +
  theme_minimal()
raster_files02 <- list.files("I:/VoCC/Data/Output/Final FVoCC by Country/", pattern = ".tif$", full.names = TRUE)