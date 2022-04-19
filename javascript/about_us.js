//declare an array of images
let myImagesArray = ["images/eddy.jpg","images/grp.jpg","images/others.jpg"];

//make an automatic slide to display the images
let ImageNumber = 0;
let difference = myImagesArray.length -1;

let delay = 2000; //milliseconds    1sec=1000milliseconds

setInterval('ChangeImages(1)', delay);
//-1 to show the slide backwards
//1 to show the slide forwards

function ChangeImages(direction)
{//begin function
    
    ImageNumber = ImageNumber + direction;

    if(ImageNumber > difference)
    {//begin inner first if
        ImageNumber = 0;
    }//end inner first if

    if(ImageNumber < 0)
    {//begin inner second if
        ImageNumber = difference;
    }//end inner second if
    //document.slideshow.src = myImagesArray[ImageNumber];
    document.getElementById('slideshow').src = myImagesArray[ImageNumber];

}//end function