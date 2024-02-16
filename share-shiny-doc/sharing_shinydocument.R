# get your machine ip (ipv4)
# caution with file paths and which ports are open
# getwd()

my_ip <- "127.0.0.1" 
path_file <- "mydashboards/dashboard1.Rmd"

rmarkdown::run(file = path_file, shiny_args = list(host = my_ip, port = 1234))

# share the address/open in browser, in this example it is 127.0.0.1:1234/dashboard1.Rmd
