// function showDrop(value){
    // const items = document.querySelectorAll(".sample");
    // const show = "show";
    // const avatar = document.querySelector(".avatar");
    // const drop = document.querySelector(".options");
    // const sizeSelected = document.querySelectorAll(".size");
  // percorre o array de buttons desmarca, após marca o selecionado
    // for (const item of items) {
    //   if (drop.classList.contains(show)) {
        // document.querySelector(".shoeBackground").style.setProperty("background-image",arrayBackground[avatar.getAttribute("value")]);
//         avatar.classList.remove(show);
//         drop.classList.remove(show);
//         return;
//         // document.querySelector(".gradients").classList.remove("display");
//     //   }
//         avatar.classList.add(show);
        // drop.classList.add("show");
        // console.log('testando pesquisa')
// }

    // $(".avatar-img").on("click", function() {
    //     // $(this).addClass('show');
    //     console.log('testando pesquisa')
    // })


    // $(".drop").click(function(){
    //     console.log("testando pesquisa")
    //     var productId = $(this).attr('class').replace('show ', '');
    // });
    // console.log("testando pesquisa2")

    /* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
window.myFunction = function() {
    document.getElementById("options").classList.toggle("show");
    console.log('testando pesquisa')
  }
  
  // Close the dropdown if the user clicks outside of it
  window.onclick = function(event) {
      
    if (0) {
    
      var dropdowns = document.getElementsByClassName("dropdown-content");
      var i;
      for (i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
          openDropdown.classList.remove('show');
        }
      }
    }
  }

