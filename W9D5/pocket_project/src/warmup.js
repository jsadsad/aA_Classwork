
const partyHeader = document.getElementById('party');

export const htmlGenerator = (string, htmlElement) => {
    const pTag = document.createElement("p")
    const text = document.createTextNode(string)
    pTag.appendChild(text)
    // htmlElement.appendChild(pTag)
    // debugger 
    // Array.from(htmlElement.children)
    const htmlChildren = Array.from(htmlElement.children)
    if (htmlChildren.length === 0) {
        htmlElement.appendChild(pTag)
    } else {
        htmlElement.removeChild(pTag)
        htmlElement.appendChild(pTag)
    }
    // if (!htmlElement.hasChildNodes()) {
    //     htmlElement.appendChild(pTag)
    // } else { 
    //     htmlElement.reset()
    //     htmlElement.appendChild(pTag)
    // }
    // if (!groceries.hasChildNodes()) {
    //     lsItems.map((item) => {
    //         const li = document.createElement("li");
    //         li.innerText = item.value;
    //         groceries.append(li);
    //     })
    // } else {
    //     const li = document.createElement("li");
    //     li.innerText = lsItems[lsItems.length - 1].value;
    //     groceries.append(li);
    // }
};

htmlGenerator('Cool stuff', partyHeader);