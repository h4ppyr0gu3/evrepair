//   var slide = document.getElementsByClassName("next");
//   slide.addEventListener("click",
//     showSlides(plusSlides(slideIndex)));
//   var slider = document.getElementsByClassName("prev");
//   slider.addEventListener("click",
//     showSlides(plusSlides(slideIndex)));


// var SlideIndex = 1;

// showSlides(SlideIndex);

// function listener(n) {
//   var previous = document.getElementsByClassName("prev");
//   previous.addEventListener("click", showSlides(n + 1));
//   var next = document.getElementsByClassName("next");
//   next.addEventListener("click", showSlides(n + 1))
// }


// function plusSlides(n) {
//   showSlides(slideIndex += n);
//   currentSlide(n);
// }

// function currentSlide(n) {
//   showSlides(SlideIndex = n);
// }

// function showSlides(n) {
//   console.log(n)
//   var i;
//   var slides = document.getElementsByClassName("myslides");
//   console.log(slides[n])
//   var dots = document.getElementsByClassName("dot");
//   console.log(slides[n])
//   if (n > slides.length) 
//     {SlideIndex = 1}    
//   if (n < 1) 
//     {SlideIndex = slides.length}
//   for (i = 0; i < slides.length; i++) {
//     slides[i].style.display = "none";  
//   }
//   for (i = 0; i < dots.length; i++) {
//     dots[i].className = dots[i].className.replace(" active", "");
//   }
//   console.log(slides[n])
//   slides[SlideIndex - 1].style.display = "block";  
//   dots[SlideIndex-1].className += " active";
// }


var slide_no = 1;
showslide(slide_no)

function showslide(n) {
  var slides = document.getElementsByClassName("myslides")
  var next = document.getElementsByClassName("next");
  var previous = document.getElementsByClassName("prev");
  console.log(slides.length);
  console.log(next);
  console.log(previous);
  // console.log(slides[n])
  slides[n].style.display = "block";
  previous[0].addEventListener("click", console.log("sfdijf"));


}