
const partyHeader = document.getElementById('party');

export const htmlGenerator = (string, htmlElement) => {
    const pTag = document.createElement("p")
    const text = document.createTextNode(string)
    pTag.appendChild(text)

    const htmlChildren = Array.from(htmlElement.children)
    if (htmlChildren.length === 0) {
        htmlElement.appendChild(pTag)
    } else {
        htmlChildren.forEach(child => {
          htmlElement.removeChild(child)
        })
        htmlElement.appendChild(pTag)
    }
  
};

htmlGenerator('Cool stuff', partyHeader);