library(googlesheets)
library(trendct)
suppressMessages(library(dplyr))
(my_sheets <- gs_ls())

sm <- gs_title("SmarterBalance")

states <- sm %>% gs_read(ws = "BigSheet")

statewide <- subset(states, Grade=="Statewide")

state_ela <- subset(statewide, Test=="ELA")
state_math <- subset(statewide, Test=="Math")

state_ela <- state_ela[c("State", "Proficient")]
colnames(state_ela) <- c("State", "ELA.Proficient")

# ELA TIME

state_ela <- state_ela[order(-state_ela$ELA.Proficient),]
state_ela <- data.frame(state_ela)

trendchart(state_ela, headline = "Overall Smarter Balanced test results: ELA", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# MATH TIME

state_math <- state_math[c("State", "Proficient")]
colnames(state_math) <- c("State", "Math.Proficient")

state_math <- state_math[order(-state_math$Math.Proficient),]
state_math <- data.frame(state_math)

trendchart(state_math, headline = "Overall Smarter Balanced test results: Math", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# OVERALL?

state_all <- merge(state_ela, state_math)

trendchart(state_all, headline = "Overall Smarter Balance test results by state", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "bar", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")


# 3rd grade

statewide <- subset(states, Grade=="Grade 3")

state_ela <- subset(statewide, Test=="ELA")
state_math <- subset(statewide, Test=="Math")

state_ela <- state_ela[c("State", "Proficient")]
colnames(state_ela) <- c("State", "ELA.Proficient")

# ELA TIME (3rd Grade)

state_ela <- state_ela[order(-state_ela$ELA.Proficient),]
state_ela <- data.frame(state_ela)

trendchart(state_ela, headline = "Third grade Smarter Balanced test results: ELA", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# MATH TIME (3rd Grade)

state_math <- state_math[c("State", "Proficient")]
colnames(state_math) <- c("State", "Math.Proficient")

state_math <- state_math[order(-state_math$Math.Proficient),]
state_math <- data.frame(state_math)

trendchart(state_math, headline = "Third grade Smarter Balanced test results: Math", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# 4th Grade

statewide <- subset(states, Grade=="Grade 4")

state_ela <- subset(statewide, Test=="ELA")
state_math <- subset(statewide, Test=="Math")

state_ela <- state_ela[c("State", "Proficient")]
colnames(state_ela) <- c("State", "ELA.Proficient")

# ELA TIME (4th Grade)

state_ela <- state_ela[order(-state_ela$ELA.Proficient),]
state_ela <- data.frame(state_ela)

trendchart(state_ela, headline = "Fourth grade Smarter Balanced test results: ELA", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# MATH TIME (4th Grade)

state_math <- state_math[c("State", "Proficient")]
colnames(state_math) <- c("State", "Math.Proficient")

state_math <- state_math[order(-state_math$Math.Proficient),]
state_math <- data.frame(state_math)

trendchart(state_math, headline = "Fourth grade Smarter Balanced test results: Math", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# 5th Grade

statewide <- subset(states, Grade=="Grade 5")

state_ela <- subset(statewide, Test=="ELA")
state_math <- subset(statewide, Test=="Math")

state_ela <- state_ela[c("State", "Proficient")]
colnames(state_ela) <- c("State", "ELA.Proficient")

# ELA TIME (5th Grade)

state_ela <- state_ela[order(-state_ela$ELA.Proficient),]
state_ela <- data.frame(state_ela)

trendchart(state_ela, headline = "Fifth grade Smarter Balanced test results: ELA", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# MATH TIME (5th Grade)

state_math <- state_math[c("State", "Proficient")]
colnames(state_math) <- c("State", "Math.Proficient")

state_math <- state_math[order(-state_math$Math.Proficient),]
state_math <- data.frame(state_math)

trendchart(state_math, headline = "Fifth grade Smarter Balanced test results: Math", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# 6th Grade

statewide <- subset(states, Grade=="Grade 6")

state_ela <- subset(statewide, Test=="ELA")
state_math <- subset(statewide, Test=="Math")

state_ela <- state_ela[c("State", "Proficient")]
colnames(state_ela) <- c("State", "ELA.Proficient")

# ELA TIME (6th Grade)

state_ela <- state_ela[order(-state_ela$ELA.Proficient),]
state_ela <- data.frame(state_ela)

trendchart(state_ela, headline = "Sixth grade Smarter Balanced test results: ELA", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# MATH TIME (6th Grade)

state_math <- state_math[c("State", "Proficient")]
colnames(state_math) <- c("State", "Math.Proficient")

state_math <- state_math[order(-state_math$Math.Proficient),]
state_math <- data.frame(state_math)

trendchart(state_math, headline = "Sixth grade Smarter Balanced test results: Math", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# 7th Grade

statewide <- subset(states, Grade=="Grade 7")

state_ela <- subset(statewide, Test=="ELA")
state_math <- subset(statewide, Test=="Math")

state_ela <- state_ela[c("State", "Proficient")]
colnames(state_ela) <- c("State", "ELA.Proficient")

# ELA TIME (7th Grade)

state_ela <- state_ela[order(-state_ela$ELA.Proficient),]
state_ela <- data.frame(state_ela)

trendchart(state_ela, headline = "Seventh grade Smarter Balanced test results: ELA", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# MATH TIME (7th Grade)

state_math <- state_math[c("State", "Proficient")]
colnames(state_math) <- c("State", "Math.Proficient")

state_math <- state_math[order(-state_math$Math.Proficient),]
state_math <- data.frame(state_math)

trendchart(state_math, headline = "Seventh grade Smarter Balanced test results: Math", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# 8th Grade

statewide <- subset(states, Grade=="Grade 8")

state_ela <- subset(statewide, Test=="ELA")
state_math <- subset(statewide, Test=="Math")

state_ela <- state_ela[c("State", "Proficient")]
colnames(state_ela) <- c("State", "ELA.Proficient")

# ELA TIME (8th Grade)

state_ela <- state_ela[order(-state_ela$ELA.Proficient),]
state_ela <- data.frame(state_ela)

trendchart(state_ela, headline = "Eighth grade Smarter Balanced test results: ELA", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# MATH TIME (8th Grade)

state_math <- state_math[c("State", "Proficient")]
colnames(state_math) <- c("State", "Math.Proficient")

state_math <- state_math[order(-state_math$Math.Proficient),]
state_math <- data.frame(state_math)

trendchart(state_math, headline = "Eighth grade Smarter Balanced test results: Math", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# 11th Grade

statewide <- subset(states, Grade=="Grade 11")

state_ela <- subset(statewide, Test=="ELA")
state_math <- subset(statewide, Test=="Math")

state_ela <- state_ela[c("State", "Proficient")]
colnames(state_ela) <- c("State", "ELA.Proficient")

# ELA TIME (11th Grade)

state_ela <- state_ela[order(-state_ela$ELA.Proficient),]
state_ela <- data.frame(state_ela)

trendchart(state_ela, headline = "Eleventh grade Smarter Balanced test results: ELA", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")

# MATH TIME (11th Grade)

state_math <- state_math[c("State", "Proficient")]
colnames(state_math) <- c("State", "Math.Proficient")

state_math <- state_math[order(-state_math$Math.Proficient),]
state_math <- data.frame(state_math)

trendchart(state_math, headline = "Eleventh grade Smarter Balanced test results: Math", subhead = "Students meeting or exceeding achievement levels (Level 3 or higher)", src = "<a href='https://docs.google.com/a/trendct.org/spreadsheets/d/18dZa4KuSJWdVen8wFzSrxClwc_V4MV_FAM-VC-vqbOQ/edit?usp=sharing'>Each</a> state's Department of Education",
           byline = "TrendCT.org", type = "column", xTitle = "", yTitle = "",
           xSuffix = "", ySuffix = "%", xPrefix = "", yPrefix = "", option = "")
