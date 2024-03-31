#import "../brilliant-template/template.typ": *


#cvSection("Competencies")

#columns(2, gutter: 24pt)[


  #cvSubSection("Informatics")
  #skill("Python (Software development, figures, scripting)", 4)
  #skill("Shell (Scripting, sysadmin)", 3)
  #skill("LaTeX (Manuscripts, presentations)", 3)
  #skill("Rust (Software development)", 3)
  #skill("Typst (PhD thesis, this CV)", 3)
  #skill("Lua (NeoVim plugins)", 1)
  
  
  #colbreak()
  
  
  #cvSubSection("Languages")
  #skill("Dutch (native)", 5)
  #skill("English", 5)
  #skill("French", 4)

]

#cvSubSection("Software knowledge")
- *Operating System* : #graytext("I main") #underline("GNU/Linux", offset:0.1em)#graytext(" on all machines, but am comfortable on Windows and MacOS.")
- *Scientific Software* : #underline("ORCA", offset:0.1em) #graytext("for quantum mechanics applications,") #underline("AMBER MD", offset:0.1em) #graytext("for atomistic simulations of biomolecular systems.") 
- *Graphic Design* : #graytext("Proficient in") #underline("InkScape", offset:0.1em) #graytext("for vectorised figures.") #underline("Matplotlib", offset:0.1em) #graytext("for all generated graphs.")
- *Dev. Environment* : #underline("NeoVim", offset:0.1em) #graytext("for programming and general text manipulation purposes.") #underline("Tmux", offset:0.1em) #graytext(" to keep track of multiple projects. ") #underline("Git ", offset:0.1em)#graytext(" for version control.")
