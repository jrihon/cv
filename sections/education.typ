// import template here as well, to get all the functions
#import "../brilliant-template/template.typ": *

#v(-1.5em) // comment out when using profile picture
#boxEnvironment(
    "About me",
    right,
    [ 
      Currently a PhD candidate on the topic of modified nucleic acids by means of _in silico_ research.
      I use computational chemistry to characterise nucleosides and perform simulations to understand their structural dynamics.
      I program to optimise research methodologies. Coming from a pharmaceutical background, I bring the best of both worlds.\
      \
      I am interested in writing performant libraries for chem- and bioinformatics tools, targetting developers as my audience.\
      Open to academic and industry positions.
    ]
)



#cvSection("Professional and Education")

#cvEntry(
    title: [PhD in Pharmaceutical Sciences],
    society: [Rega Institute for Medical Resarch, Catholic University of Leuven, Leuven],
    date: [2020 - Present],
    location: [BE],
    logo: "../src/logos/Kuleuven_logo.png",
    description: list(
      [Thesis: _Molecular modeling tools to improve and expand computational research on synthetic nucleic acids_ (Supervisors : prof.dr. E. Lescrinier, prof.dr. V.B. Pinheiro)],
      [Researching the fundamentals of (xenobiotic) nucleic acids through computational chemistry and molecular modeling],
      [Software development to facilitate computational research on nucleic acids],
      [Teaching assistant in the Biopharmaceutical Analysis practical courses],
    ),
    keywords : [Molecular Dynamics, Computational Chemistry, Python, Rust, Linux, Shell, Linear Algebra],
)

#cvEntry(
    title: [Master of Drug Design and Development (_cum laude_)],
    society: [Catholic University of Leuven, Leuven],
    date: [2018 - 2020],
    location: [BE],
    logo: "../src/logos/Kuleuven_logo.png",
    description: list(
      [Thesis: _Development of an allergophore to predict and analyse cross-reactivity in corticosteroid-mediated drug allergy_ (Supervisor : prof.dr. E. Lescrinier)]
      ),
    keywords : [Molecular Dynamics, Linux, Shell, Molecular Docking],
)

#cvEntry(
    title: [Bachelors of Pharmaceutical Sciences],
    society: [Catholic University of Leuven, Leuven],
    date: [2013 - 2018],
    location: [BE],
    logo: "../src/logos/Kuleuven_logo.png",
)

#v(-9pt)
