
const dogs = {
  "Corgi": "https://www.akc.org/dog-breeds/cardigan-welsh-corgi/",
  "Australian Shepherd": "https://www.akc.org/dog-breeds/australian-shepherd/",
  "Affenpinscher": "https://www.akc.org/dog-breeds/affenpinscher/",
  "American Staffordshire Terrier": "https://www.akc.org/dog-breeds/american-staffordshire-terrier/",
  "Tosa": "https://www.akc.org/dog-breeds/tosa/",
  "Labrador Retriever": "https://www.akc.org/dog-breeds/labrador-retriever/",
  "French Bulldog": "https://www.akc.org/dog-breeds/french-bulldog/" 
};

export const dogLinkCreator = (obj) => {
  const dogArr = [];
  const dogKeys = Object.keys(obj);
  const dogVals = Object.values(obj);
  dogKeys.forEach( key => {
    const dogAnk = document.createElement("a");
    dogAnk.innerText = key;
    dogAnk.href = obj[key];
    const dogLi = document.createElement("li");
    dogLi.classList.add("'dog-link");
    const newDogLi = dogLi.append(dogAnk);
    dogArr.push(newDogLi);
  }
  )
  return dogArr
} 

const attachDogLinks = () => {
  debugger
  const dogLists = dogLinkCreator(dogs);
  const ul = document.querySelector(".drop-down-dog-list")
  dogLists.forEach((dog) => {
    ul.append(dog);
  })

}

attachDogLinks();