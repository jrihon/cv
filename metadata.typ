/* Personal Information */

// https://github.com/mintyfrankie/brilliant-CV <- Original repo
#let firstName = "Jérôme"
#let lastName = "Rihon"
#let personalInfo = (
  github: "jrihon",
  phone: "+32 123 45 78 90",
  email: "jeromerihon@gmail.com",
  linkedin: "jérôme-rihon",
  orcid: "0000-0002-9207-1556",
  address: "Thatstreet 1, 1111 SomeCity, Belgium"
)
#let headerQuoteInternational = (
  "": [PhD candidate in Molecular Modeling, Free and Open-Source Software enthusiast, toolmaker],
)

/* Layout Setting */

// Optional: skyblue, red, nephritis, concrete, darknight, babyblue, coral, nightblue, dark rose, greenish, kahki, brown, blood, anthracite
#let awesomeColor = "anthracite"

// Leave blank if profil photo is not needed
//#let profilePhoto = "../src/cv_photo.svg" 
#let profilePhoto = "" 

// Change this variable to control output language & cited module
// INFO: value must matches folder suffix; i.e "zh" -> "./modules_zh"
#let varLanguage = "" 

// Decide if you want to put your company in bold or your position in bold
#let varEntrySocietyFirst = false 

// Decide if you want to display organisation logo or not
#let varDisplayLogo = true

// for cvFooter and letterFooter arrays, add your own languages while the keys must match the varLanguage variable
#let cvFooterInternational = (
  "": "Curriculum vitae",
)

#let letterFooterInternational = (
  "": "Cover Letter",
)
