//declare an array of images
let myImagesArray = ["images/Credit 1.jpg","images/card z2.png","images/card ash.png","images/iav_infiniteavion_en_sm@2x.png","images/mc4_wjwe_worldelite_en_sm@2x.png","/images/rvc_rewardsplus_en_sm@2x.png"];

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