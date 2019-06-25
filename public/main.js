result = document.getElementById('result')
resultCollection = result.getElementsByClassName('grid-container')
if (resultCollection.length > 1) {
  result.style.display = "block"
  document.getElementById("searchBar").setAttribute("id", "searchBar2")
}
