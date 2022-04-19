//declare an array of images
let myImagesArray = ["images/airplane2.jpeg","images/resturant2.jpeg","images/image-currency2.jpeg","images/image-currency.jpeg","images/image-plane.jpeg","images/image-resturant.jpeg"];
let ImageNumber = 0;
let difference = myImagesArray.length -1;

let delay = 1000; 

setInterval('ChangeImages(1)', delay);
function ChangeImages(direction)
{
    ImageNumber = ImageNumber + direction;

    if(ImageNumber > difference)
    {
        ImageNumber = 0;
    }
    if(ImageNumber < 0)
    {ImageNumber = difference;
    }
    document.getElementById('slideshow').src = myImagesArray[ImageNumber];
}