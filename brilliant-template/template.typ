// awesomeCV-Typst 2023-07-05 mintyfrankie
// Github Repo: https://github.com/mintyfrankie/brilliant-CV
// Typst version: 0.6.0

/* Packages */
#import "../metadata.typ": *
#import "@preview/fontawesome:0.1.0": * // all the fa-FUNCTION calls

/* Styles */

#let awesomeColors = (
  skyblue: rgb("#0395DE"),
  red: rgb("#DC3522"),
  nephritis: rgb("#27AE60"),
  concrete: rgb("#95A5A6"),
  darknight: rgb("#131A28"),
  babyblue: rgb("#669DF2"),
  coral: rgb("#FF4252"),
  nightblue: rgb("#2C63B8"),
  darkrose: rgb("#851545"),
  greenish: rgb("#35CC56"),
  kahki: rgb("#CCB832"),
  brown: rgb("#CC8139"),
  blood: rgb("#CC485D"),
  anthracite: rgb("#767F94"),
)

#let regularColors = (
  lightaccent: rgb("#A9B5D490"), // anthracite ish rgb accent and alpha: 90%
  alpha: rgb("#A9B5D410"), // anthracite ish rgb accent and alpha: 90%
  lightgray: rgb("#343a40"),
  darkgray: rgb("#212529"),
  linkblue: rgb("#48A1D9")
)

#let accentColor = awesomeColors.at(awesomeColor)

/* Layout */

#let layout(doc) = {
  set text(
    font: ("Source Sans Pro", "Font Awesome 6 Brands", "Font Awesome 6 Free"),
    weight: "regular",
    size: 9pt,
  )
  set align(left)
  set page(
    paper: "a4",
    margin: (
      left: 1.4cm,
      right: 1.4cm,
      top: .8cm,
      bottom: .4cm,
    ),
  )
  doc
}

/* Utility Functions */

#let hBar() = [
  #h(5pt) | #h(5pt)
]

#let autoImport(file) = {
    include {"../sections/" + file + ".typ"} // string concatenation
}

#let languageSwitch(dict) = { // if multiple files in different languages
  for (k, v) in dict {
    if k == varLanguage {
      return v
      break
    }
  }
  panic("i18n: language value not matching any key in the array")
}


#let headerFont = "Roboto"

#let beforeSectionSkip = 1pt
#let beforeEntrySkip = 1pt
#let beforeEntryDescriptionSkip = 1pt

#let headerFirstNameStyle(str) = {text(
  font: headerFont,
  size: 32pt,
  weight: "light",
  fill: regularColors.darkgray,
  str
)}

#let headerLastNameStyle(str) = {text(
  font: headerFont,
  size: 32pt,
  weight: "bold",
  str
)}

#let headerInfoStyle(str) = {text(
  size: 10pt,
  fill: accentColor,
  str
)}

#let headerQuoteStyle(str) = {text(
  size: 10pt,
  weight: "medium",
  style: "italic",
  fill: accentColor,
  str
)}

#let sectionTitleStyle(str, color:black, size:16pt) = {text(
  size: size, 
  weight: "bold", 
  fill: color,
  str
)}

#let entryA1Style(str) = {text(
  size: 10pt,
  weight: "bold",
  str
)}


#let entryA2Style(str) = {align(right, text(
  weight: "medium",
  fill: accentColor,
  style: "oblique",
  str
))}

#let entryB1Style(str) = {text(
  size: 8pt,
  fill: accentColor,
  weight: "medium",
  smallcaps(str)
)}

#let entryB2Style(str) = {align(right, text(
  size: 8pt,
  weight: "medium",
  fill: gray,
  style: "oblique",
  str
))}

#let entryDescriptionStyle(str) = {text(
  fill: regularColors.lightgray,
  {
    v(beforeEntryDescriptionSkip)
    str
  }
)}

#let entryKeywords(str) = {
  text(
    fill: regularColors.lightgray,
    style: "italic",
    v(-4pt) + h(8pt) + "Keywords : " + str
  )
}

#let skillTypeStyle(str) = {align(right, text(
  size: 10pt,
  weight: "bold",
  str))
}

#let skillInfoStyle(str) = {text(
  str
)}

#let honorDateStyle(str) = {align(right, text(
  str))
}

#let honorTitleStyle(str) = {text(
  weight: "bold",
  str
)}

#let honorIssuerStyle(str) = {text(
  str
)}

#let honorLocationStyle(str) = {align(right, text(
  weight: "medium",
  fill: accentColor,
  style: "oblique",
  str
))}

#let publicationStyle(str) = {text(
  str
)}

#let footerStyle(str) = {text(
  size: 8pt,
  fill: rgb("#999999"),
  smallcaps(str)
)}

#let letterHeaderNameStyle(str) = {text(
  fill: accentColor,
  weight: "bold",
  str
)}

#let letterHeaderAddressStyle(str) = {text(
  fill: gray,
  size: 0.9em,
  smallcaps(str)
)}

#let letterDateStyle(str) = {text(
  size: 0.9em,
  style: "italic",
  str
)}

#let letterSubjectStyle(str) = {text(
  fill: accentColor,
  weight: "bold",
  underline(str)
)}

#let graytext(str) = {
  text(
    fill: regularColors.lightgray,
    str
  )
}
/* Functions */

#let makeHeaderInfo() = {
  let personalInfoIcons = ( // fa = font awesome; https://fontawesome.com
    phone: fa-phone(),
    email: fa-envelope(),
    linkedin: fa-linkedin(),
    homepage: fa-pager(),
    github: fa-square-github(),
    gitlab: fa-gitlab(),
    orcid: fa-orcid(),
    researchgate: fa-researchgate(),
    address: fa-location-dot(),
    extraInfo: "",
  ) // just add "fa-" + the name of the icon you want -> https://fontawesome.com
  let n = 1
  for (k, v) in personalInfo { // personalInfo initialised in metadata file, which is imported
    if v != "" {
      // Adds hBar
      if n != 1 {
        hBar()
      }
      if n == 5 { //after the linkedin call, better inline
        linebreak()
      }
      // Adds icons
      personalInfoIcons.at(k) + h(5pt) // get icon and at 5pt space
      // Adds hyperlinks
      if k == "email" {
        link("mailto:" + v)[#v]
      } else if k == "linkedin" {
        link("https://www.linkedin.com/in/" + v)[#v] 
      } else if k == "github" {
        link("https://github.com/" + v)[#v]
      } else if k == "gitlab" {
        link("https://gitlab.com/" + v)[#v]
      } else if k == "homepage" {
        link("https://" + v)[#v]
      } else if k == "orcid" {
        link("https://orcid.org/" + v)[#v]
      } else if k == "researchgate" {
        link("https://www.researchgate.net/profile/" + v)[#v]
      } else {
        v
      }
    }
    n = n + 1
  }
}

#let makeHeaderNameSection() = table(
  columns: 1fr,
  inset: 0pt,
  stroke: none,
  row-gutter: 6mm,
  [#headerFirstNameStyle(firstName) #h(5pt) #headerLastNameStyle(lastName)],
  [#headerInfoStyle(makeHeaderInfo())],
  [#headerQuoteStyle(languageSwitch(headerQuoteInternational))]
)

#let makeHeaderPhotoSection() = {
  if profilePhoto != "" {
    image(profilePhoto, height: 3.6cm)
    place(dx: 0cm, dy: -3.6cm, circle(radius: 1.795cm, stroke: (paint: accentColor, thickness: 2pt))) // add circle around pp
  } else {
    v(3.6cm)
  }
} 

#let cvHeader(
  align: left,
  hasPhoto: true
) = {
  let makeHeader(leftComp, rightComp, columns, align) = table(
    columns: columns,
    inset: 0pt,
    stroke: none,
    column-gutter: 15pt,
    align: align + horizon,
    {leftComp},
    {rightComp}
  )
  if hasPhoto {
    makeHeader(makeHeaderNameSection(), makeHeaderPhotoSection(), (auto, 20%), align)
  } else {
    makeHeader(makeHeaderNameSection(), makeHeaderPhotoSection(), (auto, 0%), align)
  }
}

#let cvSection(title) = {
  let highlightText = title.slice(0,3)
  let normalText = title.slice(3)

  v(beforeSectionSkip)
  sectionTitleStyle(highlightText, color: accentColor)
  sectionTitleStyle(normalText, color: black)
  h(2pt)
  box(width: 1fr, line(stroke: 0.9pt, length: 100%))
}

#let cvSubSection(title) = {
  let highlightText = title.slice(0,3)
  let normalText = title.slice(3)

//  let c_test = rgb("#C0C0C0")
  v(beforeSectionSkip)
  h(2pt)
  sectionTitleStyle(highlightText, color: accentColor, size: 12pt)
  sectionTitleStyle(normalText, color: regularColors.lightaccent, size: 12pt)
  h(2pt)
  box(width: 1fr, line(stroke: (thickness: 0.9pt, paint: regularColors.lightaccent), length: 100%))
  linebreak()
}

#let cvEntry(
  title: "Title",
  society: "Society",
  date: "Date",
  location: "Location",
  description: "", // optional value
  logo: "",
  keywords: "",
) = {
  let ifSocietyFirst(condition, field1, field2) = {
    return if condition {field1} else {field2}
  }
  let ifLogo(path, ifTrue, ifFalse) = {
    return if varDisplayLogo {
      if path == "" { ifFalse } else { ifTrue }
    } else { ifFalse }
  }
  let setLogoLength(path) = {
    return if path == "" { 0% } else { 4% }
  }
  let setLogoContent(path) = {
    return if logo == "" [] else {image(path, width: 100%)}
  }
  v(beforeEntrySkip)
  table(
    columns: (ifLogo(logo, 4%, 0%), 1fr),
    inset: 0pt,
    stroke: none,
    align: horizon,
    column-gutter: ifLogo(logo, 4pt, 0pt),
    setLogoContent(logo),
    table(
      columns: (1fr, auto),
      inset: 0pt,
      stroke: none,
      row-gutter: 6pt,
      align: auto,
      {entryA1Style(ifSocietyFirst(varEntrySocietyFirst, society, title))}, // var is in metadata, boolean
      {entryA2Style(date)},
      {entryB1Style(ifSocietyFirst(varEntrySocietyFirst, title, society))},
      {entryB2Style(location)},
    )
  )
  entryDescriptionStyle(description)
  if keywords != "" {entryKeywords(keywords)} else []
}

#let cvSkill(
  type: "Type",
  info: "Info",
) = {
  table(
    columns: (16%, 1fr),
    inset: 0pt,
    column-gutter: 10pt,
    stroke: none,
    skillTypeStyle(type),
    skillInfoStyle(info),
  )
  v(-6pt)
}

#let cvHonor(
  date: "1990",
  title: "Title",
  issuer: "",
  location: ""
) = {
  table(
    columns: (16%, 1fr, 15%),
    inset: 0pt,
    column-gutter: 10pt,
    align: horizon,
    stroke: none,
    honorDateStyle(date),
    if issuer == "" {
      honorTitleStyle(title)
    } else [
      #honorTitleStyle(title), #honorIssuerStyle(issuer)
    ],
    honorLocationStyle(location)
  )
  v(-6pt)
}

#let cvPublication(
  bibPath: "",
  keyList: list(),
  refStyle: "apa",
) = {
  show cite: it => hide(it)
  show bibliography: it => publicationStyle(it)
  bibliography(bibPath, title: none, style: refStyle)
  for key in keyList {
    cite(key)
  }
  v(-15pt)
}


#let cvFooter() = {
  place(
    bottom,
    table(
      columns: (1fr, auto),
      inset: 0pt,
      stroke: none,
      footerStyle([#firstName #lastName]),
      footerStyle(languageSwitch(cvFooterInternational)),
    )
  )
}

#let letterHeader(
  myAddress: "Your Address Here",
  recipientName: "Company Name Here",
  recipientAddress: "Company Address Here",
  date: "Today's Date",
  subject: "Subject: Hey!"
) = {
  letterHeaderNameStyle(firstName + " " + lastName)
  v(1pt)
  letterHeaderAddressStyle(myAddress)
  v(1pt)
  align(right, letterHeaderNameStyle(recipientName))
  v(1pt)
  align(right, letterHeaderAddressStyle(recipientAddress))
  v(1pt)
  letterDateStyle(date)
  v(1pt)
  letterSubjectStyle(subject)
  linebreak(); linebreak()
}

#let letterSignature(path) = {
  linebreak()
  place(right, dx:-5%, dy:0%, image(path, width: 25%))
}

#let letterFooter() = {
  place(
    bottom,
    table(
      columns: (1fr, auto),
      inset: 0pt,
      stroke: none,
      footerStyle([#firstName #lastName]),
      footerStyle(languageSwitch(letterFooterInternational)),
    )
  )
}

// add skill menu
#let skill(name, rating) = {
  let max_rating = 5
  let done = false
  let i = 1

  name // put name 

  h(1fr)

  let colour = accentColor
  while (not done){

    if (i > rating){
        colour = regularColors.lightaccent
    }

    box(circle( radius: 4pt, fill: colour))

    if (max_rating == i){
      done = true
    } else {
      h(2pt)
    }
    i += 1
  }
  [\ ] // newline 
}


// make a box environment to write text int
#let boxEnvironment(header, align_header, body) = {

  let highlightText = header.slice(0,3)
  let normalText = header.slice(3)
  if header.at(2) == " " { // account for space in at the third letter. Can substitute for any index
    highlightText = header.slice(0,4)
    normalText = header.slice(4)
  }

  v(beforeSectionSkip)
  let h = sectionTitleStyle(highlightText, color: accentColor) + sectionTitleStyle(normalText, color: regularColors.lightaccent)
  align( // header of the box
    align_header,
    text(size: 16pt, h)
  )

  v(-5mm)
  align(
//    align_header,
    rect(
      width: 100%,
      fill: regularColors.alpha,
      radius: 10%,
      stroke : (
        top : regularColors.lightaccent,
        bottom : regularColors.lightaccent,
        right : regularColors.lightaccent,
        left : regularColors.lightaccent,
        rest : rgb("#FFFFFF")
      ),
      par(justify: true, body) // justify the body of content to take up the full width
    )
  )
}

#let manual_cite(dict, match_name, is_first : false) = {

    for (k, v) in dict {

      if k == "authors" {
        let auth_list = v.split(",")
        let auth_len = auth_list.len()
        let c = 1

        for auth in auth_list {
          if auth == match_name and c == 1 { // if first author is my name
            text(auth, weight: "bold")
          } else if c == 1 {  // if it is someone else's name as first author
            text(auth)
          } else if auth == match_name {  // if my name is somewhere in the list
            ", " + text(auth, weight: "bold")
            if is_first { // if I am also joint first-author
              super("◆") // diamond to signify joint first
            }
          } else if c == auth_len {  // if we have arrived to the last one in the list, prefix with ampersand
            " & " + text(auth)
          } else {
             ", " + text(auth)  // if all else, just regular print the name
          }
          c += 1
        }

      } else if k == "title" {
          "\"" + text(v) + "\". "
      } else if k == "date" {
          " (" + text(v) + ") "
      } else if k == "journal" {
          text(v, style: "italic") + ". "
      } else if k == "doi" {
        link("https://doi.org/" + v)[#text(v, fill: regularColors.linkblue)] 
      } else if k == "url" {
        link(v)[#text("Download poster", fill: regularColors.linkblue)] 
        linebreak() // last thing to print from the citation
      } else if k == "volume" {
        text(v) + " "
      } else if k == "number" {
          "(" + text(v) + "), "
      } else if k == "page_range" {
          "pp. " + text(v) + ". "
      }

    }
  v(1pt)
  box(width: 1fr, line(stroke: (thickness: 0.9pt, paint: regularColors.lightaccent), length: 100%)) // just a line across the page
  v(1pt)
}
