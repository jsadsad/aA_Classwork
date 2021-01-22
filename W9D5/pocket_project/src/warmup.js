
const partyHeader = document.getElementById('party');

export const htmlGenerator = (string, htmlElement) => {
    const pTag = document.createElement("p")
    const text = document.createTextNode(string)
    pTag.appendChild(text)
    htmlElement.appendChild(pTag)
    // debugger
};

htmlGenerator('Cool stuff', partyHeader);