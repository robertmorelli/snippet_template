#set text(size: 8pt)
#let files = sys.inputs.at("files", default: "../doc.typ").split(",")
#let file_indices = range(0, files.len())
#for (i, file) in file_indices.zip(files) {
  let parts = file.split(".")
  [
    #align(center)[= #parts.at(0)]
    #line(length: 100%)
  ]
  let text = read("snippets/" + file)
  raw(text, lang: parts.at(1))
  if i != files.len() - 1 {
    pagebreak()
  }
}
