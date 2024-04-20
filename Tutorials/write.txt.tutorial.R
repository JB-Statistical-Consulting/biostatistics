write.txt <- function(name, content){
  #Takes name (string) and content (string) and writes content to name.txt files in the wd
  options(max.print=1000000000)
  fileConn<-file(name)
  writeLines(content, fileConn)
  on.exit(close(fileConn))
} 

# Replace data.analysis with your own list of data.frames!

class(data.analysis)
names(data.analysis)

class(data.analysis$outcome1)
names(data.analysis$outcome1)

lm.models <- lapply(data.analysis, \(x) lm(value ~ time*treatment, data = x))
class(lm.models)

lm.summaries <- lapply(lm.models, summary.lm)

write.txt("outputs/lm_model_summaries.txt", capture.output(lm.summaries))
